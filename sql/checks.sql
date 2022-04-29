SELECT
(SELECT COUNT(1) FROM public.setores_censitarios WHERE CAST(cod_ibge AS TEXT) LIKE '12%') AS SC,
(SELECT COUNT(1) FROM public.populacao_idade_ativa WHERE CAST(id_setor_censitario AS TEXT) LIKE '12%') AS PIA;

-- DELETE FROM public.populacao_idade_ativa WHERE id > 0;
-- -- -- -- -- -- -- -- -- --

-- SELECT
-- (SELECT COUNT(1) FROM public.populacao_residente_mas WHERE CAST(id_setor_censitario AS TEXT) LIKE '27%') as MAS, 
-- (SELECT COUNT(1) FROM public.populacao_residente_fem WHERE CAST(id_setor_censitario AS TEXT) LIKE '27%') as FEM;

-- DELETE FROM public.populacao_residente_fem WHERE CAST(id_setor_censitario AS TEXT) SIMILAR TO '12%|29%|50%';

-- -- -- -- -- -- -- -- -- --

-- INSERIR VALORES NULL PARA OS SETORES FALTANTES
-- SELECT COUNT(1) FROM public.setores_censitarios; -- 316.574
-- SELECT COUNT(1) FROM public.indice_envelhecimento; -- 316.574
-- SELECT COUNT(1) FROM public.populacao_residente_mas; -- 310.120
-- SELECT COUNT(1) FROM public.populacao_residente_fem; -- 310.120
-- SELECT COUNT(1) FROM public.responsavel_renda; -- 310.120
-- SELECT COUNT(1) FROM public.domicilio_renda; -- 310.120