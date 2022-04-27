-- SELECT
-- (SELECT COUNT(1) FROM public.populacao_residente_mas WHERE CAST(id_setor_censitario AS TEXT) LIKE '27%') as MAS, 
-- (SELECT COUNT(1) FROM public.populacao_residente_fem WHERE CAST(id_setor_censitario AS TEXT) LIKE '27%') as FEM;
-- DELETE FROM public.populacao_residente_fem WHERE CAST(id_setor_censitario AS TEXT) SIMILAR TO '12%|29%|50%';
-- 3724

-- -- -- -- -- -- -- -- -- --

-- SELECT COUNT(1) FROM public.setores_censitarios; -- 316.574
-- SELECT COUNT(1) FROM public.populacao_residente_mas; -- 310.120
-- SELECT COUNT(1) FROM public.populacao_residente_fem; -- 310.120

-- SELECT COUNT(1) FROM public.setores_censitarios WHERE CAST(cod_ibge AS TEXT) LIKE '29%'; -- 24.139
-- SELECT COUNT(1) FROM public.populacao_residente_mas WHERE CAST(id_setor_censitario AS TEXT) LIKE '29%';
-- SELECT COUNT(1) FROM public.setores_censitarios WHERE CAST(cod_ibge AS TEXT) LIKE '290890300%';