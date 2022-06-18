SELECT
count(nome) as ocorrencia,
id_municipio
FROM
  `basedosdados.br_ibge_nomes_brasil.quantidade_municipio_nome_2010`
group by id_municipio

order by ocorrencia desc
LIMIT
  100;