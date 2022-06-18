SELECT sexo, ano, raca_cor,populacao

  FROM `basedosdados.br_ibge_pnadc.ano_municipio_raca_cor` 
  where sexo='Mulheres' and ano = 2019  and raca_cor='Preta' and (populacao=558000 or populacao=14000)
  order by populacao desc

  LIMIT 100;