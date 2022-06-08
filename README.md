# IBGE data to PostgreSQL (w/ PostGIS)

This project collects data from [IBGE](https://www.ibge.gov.br/), treats it and loads it into a PostgreSQL database with the PostGIS extension.

The goal is to be able to perform geospatial operations in the database with simplified queries.

## Useful Commands

Export the database:

```sh
pg_dump -U postgres -h localhost dbname > export-YYYYMMDD.sql
```

Track/Untrack files with Git LFS:

```sh
git lfs track "file.ext"
git lfs untrack "file.ext"
```

## How to Use

1. Create a CSV file named **data.csv** inside the `files/inputs/` folder. Each line in this file must be in the **file_name,lat,lng** format.
2. Run the `ai_data.ipynb` notebook.
3. The resulting files will be placed in the `files/outputs/` folder.
