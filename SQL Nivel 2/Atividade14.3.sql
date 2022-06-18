-- Questao 14.3
SELECT
  *
FROM
  `basedosdados.br_inep_ideb.escola`
  where id_municipio='2927408' and ano=2019
  order by ideb desc
LIMIT 1;