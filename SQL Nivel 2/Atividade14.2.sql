---- Questao 14.2
SELECT
  *
FROM
  `basedosdados.br_inep_ideb.escola`
  where id_municipio='2927408' and ano=2019
  order by nota_saeb_lingua_portuguesa desc
LIMIT
  1;