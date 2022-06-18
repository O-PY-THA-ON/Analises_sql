SELECT
count(distinct id_municipio) as quantidade_municipio
FROM
  `basedosdados.br_ibge_populacao.municipio`

LIMIT
  100;