# IBGE data to PostgreSQL (w/ PostGIS)

This project collects data from [IBGE](https://www.ibge.gov.br/), treats it and loads it into a PostgreSQL database with the PostGIS extension.

The goal is to be able to perform geospatial operations in the database with simplified queries.

## How to Use

1. Create a CSV file named **data.csv** inside the `files/inputs/` folder. Each line in this file must be in the **file_name,lat,lng** format.
2. Run the `ai_data.ipynb` notebook.
3. The resulting files will be placed in the `files/outputs/` folder.

## Useful Commands

Export the database:

```sh
pg_dump -U user -h host DB_NAME > export-YYYYMMDD.sql
```

Export table inserts:

```sh
pg_dump -U user -h host --column-inserts --data-only --table=TABLE_NAME DB_NAME > path/to/file.sql 
```

Remove schema name from large files via bash:

```sh
sed -i -e 's/^INSERT INTO public\./INSERT INTO /' file.sql
```

Track/Untrack files with Git LFS:

```sh
git lfs track "file.ext"
git lfs untrack "file.ext"
```
