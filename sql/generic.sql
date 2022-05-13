SELECT
	SC.id_municipio,
	PRM.*,
	PRF.*,
	PIA.*,
	RS.*,
	IE.*,
	DR.*,
	RR.*
FROM PUBLIC.setores_censitarios AS SC
JOIN PUBLIC.populacao_residente_mas AS PRM ON SC.cod_ibge = PRM.id_setor_censitario
JOIN PUBLIC.populacao_residente_fem AS PRF ON SC.cod_ibge = PRF.id_setor_censitario
JOIN PUBLIC.populacao_idade_ativa AS PIA ON SC.cod_ibge = PIA.id_setor_censitario
JOIN PUBLIC.razao_sexo AS RS ON SC.cod_ibge = RS.id_setor_censitario
JOIN PUBLIC.indice_envelhecimento AS IE ON SC.cod_ibge = IE.id_setor_censitario
JOIN PUBLIC.domicilio_renda AS DR ON SC.cod_ibge = DR.id_setor_censitario
JOIN PUBLIC.responsavel_renda AS RR ON SC.cod_ibge = RR.id_setor_censitario
WHERE SC.id_municipio = 2709152;