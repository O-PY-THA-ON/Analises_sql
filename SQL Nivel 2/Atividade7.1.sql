SELECT
count(distinct id_municipio) as quantidade_municipio,
sigla_uf
FROM
  `basedosdados.br_ibge_populacao.municipio`
group by sigla_uf
order by quantidade_municipio desc
LIMIT
  1;