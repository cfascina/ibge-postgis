# IBGE data to PostgreSQL (w/ PostGIS)

This project collects data from [IBGE](https://www.ibge.gov.br/), treats it and loads it into a PostgreSQL database with the PostGIS extension.

The goal is to be able to perform geospatial operations in the database with simplified queries.

## Useful Commands

Export the database:

```sh
pg_dump -U postgres -h localhost dbname > export.sql
```

Track/Untrack files with Git LFS:

```sh
git lfs track "file.ext"
git lfs untrack "file.ext"
```
