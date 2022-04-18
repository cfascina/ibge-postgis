-- ALTERAR TIPO DE COLUNA PARA Geometry COM SRID 4326 
-- ALTER TABLE public.table ALTER COLUMN geom TYPE geometry(Geometry, 4326);

-- ADICIONA CONTRAINT UNIQUE
-- ALTER TABLE public.table ADD UNIQUE (column);

-- -- -- -- -- -- -- -- -- -- 

-- QTD. DE MUNICÍPIOS (5.567)
-- select count(1) from public.municipios;

-- QTD. DE SETORES CENSITÁRIOS (316.574)
-- select count(1) from public.setores_censitarios;

-- QTD. DE SETORES CENSITÁRIOS SEM CIDADE (DEVE RETORNAR 0)
-- select count(1) from public.setores_censitarios
-- where id_cidade not in (select cod_ibge from public.municipios);

-- QTD. DE SETORES CENSITÁRIOS POR CIDADE
-- select C.cod_ibge, count(SC.id_cidade) AS total from public.municipios as C
-- left join public.setores_censitarios as SC on
-- 	C.cod_ibge = SC.id_cidade
-- group by C.cod_ibge
-- order by total;

-- select * from public.setores_censitarios where id_cidade in (4300002, 4300001);
-- select * from public.municipios where cod_ibge in (4300002, 4300001);

-- QTD. DE SETORES SEM DADOS DE POPULAÇÃO RESIDENTE MASCULINA
-- SELECT COUNT(1)
-- FROM PUBLIC.setores_censitarios as SC 
-- WHERE 
-- 	CAST(SC.cod_ibge AS TEXT) LIKE '27%' AND
-- 	SC.cod_ibge NOT IN(
-- 		SELECT PRM.id_setor_censitario
-- 		FROM PUBLIC.populacao_residente_mas AS PRM
-- 		WHERE CAST(PRM.id_setor_censitario AS TEXT) LIKE '27%'
-- 	);
