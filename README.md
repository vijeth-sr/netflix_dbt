# netflix_dbt
# Netflix Viewing Analytics Platform

This project is a modular **data transformation pipeline** built using [dbt (data build tool)](https://www.getdbt.com/) on a Netflix viewing dataset. It simulates a modern data stack that includes staging, dimensional modeling, snapshotting, and mart layers to power robust analytics.

## 🚀 Features

- **Dimensional Models**: Structured models for users, movies, tags, and genome scores.
- **Fact Tables**: Ratings and genome scores fact tables for analytical queries.
- **Snapshots**: Temporal tracking of tag assignments using dbt snapshots.
- **Jinja Macros**: Reusable logic for handling nulls and other common transformations.
- **Data Marts**: Aggregated insights such as movie release summaries.
- **Documentation**: Auto-generated dbt docs for model lineage and clarity.

