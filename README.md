# Dados do IBGE para PostgreSQL + PostGIS

Este projeto coleta dados do [IBGE](https://www.ibge.gov.br/), os transforma e carrega em um banco de dados PostgreSQL com a extensão PostGIS, para realizar consultas/operações geoespaciais.

## Comandos Úteis

Exportar o banco de dados:

```sh
pg_dump -U postgres -h localhost dbname > export.sql
```

Adicionar/Remover arquivos do Git LFS:

```sh
git lfs track "arquivo.ext"
git lfs untrack "arquivo.ext"
```
