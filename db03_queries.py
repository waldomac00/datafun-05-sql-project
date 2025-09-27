"""
Analyze SQL query results:
- Execute each .sql file in sql_queries/
- Print a preview and save results to CSV
- Create simple charts when columns allow (e.g., book_count, publication_year)
"""

# Standard Library
import sqlite3
from pathlib import Path

# Third-party
import pandas as pd
import matplotlib.pyplot as plt

# Local logger (fallback to print if not available)
try:
    from utils_logger import logger
except ImportError:
    class _L:
        def info(self, *a): print(*a)
        def warning(self, *a): print(*a)
        def error(self, *a): print(*a)
    logger = _L()

# Paths
ROOT = Path(__file__).parent.resolve()
DB_PATH = ROOT / "data" / "michaeljmoore.db.sqlite"
SQL_DIR = ROOT / "sql_queries"
OUT_DIR = ROOT / "outputs"
OUT_DIR.mkdir(exist_ok=True)


def read_sql_text(sql_path: Path) -> str:
    """Read SQL text from a file."""
    return sql_path.read_text(encoding="utf-8").strip()


def run_select_to_df(conn: sqlite3.Connection, sql: str) -> pd.DataFrame:
    """Execute a SELECT and return a DataFrame."""
    return pd.read_sql_query(sql, conn)


def save_table_preview(df: pd.DataFrame, name: str, max_rows: int = 20) -> None:
    """Log a small preview of the DataFrame."""
    logger.info(f"\n=== {name} (up to {max_rows} rows) ===")
    if df.empty:
        logger.info("(no rows)")
        return
    logger.info(df.head(max_rows).to_string(index=False))


def save_csv(df: pd.DataFrame, stem: str) -> None:
    """Write the DataFrame to outputs/<stem>.csv."""
    csv_path = OUT_DIR / f"{stem}.csv"
    df.to_csv(csv_path, index=False)
    logger.info(f"Saved: {csv_path}")


def try_chart(df: pd.DataFrame, stem: str) -> None:
    """
    Create basic charts *if* expected columns exist.
    - Books per author bar chart if columns include ('author' or 'name') and 'book_count'
    - Publication year histogram if column 'publication_year' exists
    """
    # 1) Books per author
    possible_author_cols = [c for c in df.columns if c.lower() in ("author", "name")]
    if "book_count" in df.columns and possible_author_cols:
        author_col = possible_author_cols[0]
        ax = df.plot(kind="bar", x=author_col, y="book_count", legend=False, title="Books per Author")
        ax.set_xlabel("Author")
        ax.set_ylabel("Book Count")
        fig = ax.get_figure()
        fig.tight_layout()
        fig_path = OUT_DIR / f"{stem}_books_per_author.png"
        fig.savefig(fig_path, dpi=150)
        plt.close(fig)
        logger.info(f"Saved chart: {fig_path}")

    # 2) Publication year histogram
    if "publication_year" in df.columns:
        ax = df["publication_year"].plot(kind="hist", bins=20, title="Publication Year Distribution")
        ax.set_xlabel("Publication Year")
        fig = ax.get_figure()
        fig.tight_layout()
        fig_path = OUT_DIR / f"{stem}_pubyear_hist.png"
        fig.savefig(fig_path, dpi=150)
        plt.close(fig)
        logger.info(f"Saved chart: {fig_path}")


def main() -> None:
    # Basic checks
    if not DB_PATH.exists():
        logger.error(f"Database not found: {DB_PATH}")
        return
    if not SQL_DIR.exists():
        logger.error(f"Queries folder not found: {SQL_DIR}")
        return

    # Connect and process each .sql file
    with sqlite3.connect(DB_PATH) as conn:
        logger.info(f"Connected to database: {DB_PATH}")

        sql_files = sorted(SQL_DIR.glob("*.sql"))
        if not sql_files:
            logger.warning(f"No .sql files found in {SQL_DIR}")
            return

        for sql_file in sql_files:
            stem = sql_file.stem
            logger.info(f"\n--- Running: {sql_file.name} ---")
            sql = read_sql_text(sql_file)

            # Skip non-SELECT scripts for this analyzer
            if "select" not in sql.lower():
                logger.warning(f"{sql_file.name} does not look like a SELECT query; skipping.")
                continue

            try:
                df = run_select_to_df(conn, sql)
                save_table_preview(df, stem)
                save_csv(df, stem)
                try_chart(df, stem)
            except Exception as e:
                logger.error(f"Failed on {sql_file.name}: {e}")

    logger.info("\nAll queries processed. See the 'outputs/' folder for CSVs and charts.")


if __name__ == "__main__":
    main()
# End of db03_queries.py