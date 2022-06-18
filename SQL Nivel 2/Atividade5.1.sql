SELECT
count(*) as quantidade,
id_municipio
FROM
  `basedosdados.br_ibge_nomes_brasil.quantidade_municipio_nome_2010`
  where  length(nome)>=7
group by id_municipio
order by quantidade desc  
LIMIT
  1;