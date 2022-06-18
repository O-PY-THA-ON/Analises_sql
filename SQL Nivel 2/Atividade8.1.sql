SELECT
count( distinct id_municipio) as quantidade_municipio,
sigla_uf 
FROM
  `basedosdados.br_ibge_populacao.municipio`
where populacao>=100000  
group by sigla_uf
order by quantidade_municipio desc
LIMIT
  100;