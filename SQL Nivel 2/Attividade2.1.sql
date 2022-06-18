SELECT 
sum(populacao) as quantidade_populacao,
ano,
raca_cor
FROM `basedosdados.br_ibge_pnadc.ano_municipio_raca_cor` 
where raca_cor='Preta' and sexo='Total'
group by ano,raca_cor
order by quantidade_populacao
LIMIT 100;