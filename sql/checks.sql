-- SELECT SC.cod_ibge
-- FROM PUBLIC.setores_censitarios AS SC 
-- WHERE SC.cod_ibge NOT IN (
-- 	SELECT DR.id_setor_censitario FROM PUBLIC.domicilio_renda AS DR
-- );

-- -- -- -- -- -- -- -- -- --

-- SELECT
-- (SELECT COUNT(1) FROM public.populacao_residente_mas WHERE CAST(id_setor_censitario AS TEXT) LIKE '27%') as PRM, 
-- (SELECT COUNT(1) FROM public.populacao_residente_fem WHERE CAST(id_setor_censitario AS TEXT) LIKE '27%') as PRF;

-- DELETE FROM public.populacao_residente_fem WHERE CAST(id_setor_censitario AS TEXT) SIMILAR TO '12%|29%|50%';

-- -- -- -- -- -- -- -- -- --

-- SELECT COUNT(1) FROM public.setores_censitarios; -- 316.574
-- SELECT COUNT(1) FROM public.indice_envelhecimento; -- 316.574
-- SELECT COUNT(1) FROM public.populacao_idade_ativa; -- 316.574
-- SELECT COUNT(1) FROM public.populacao_residente_mas; -- 310.120
-- SELECT COUNT(1) FROM public.populacao_residente_fem; -- 310.120
-- SELECT COUNT(1) FROM public.responsavel_renda; -- 310.120
-- SELECT COUNT(1) FROM public.domicilio_renda; -- 310.120
-- SELECT COUNT(1) FROM public.razao_sexo; -- 310.120