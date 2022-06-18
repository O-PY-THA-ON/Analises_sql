SELECT
*
FROM
  `basedosdados.br_ibge_pnadc.ano_brasil_raca_cor`
  where raca_cor='Preta' and sexo='Mulheres'
  order by populacao
LIMIT
  100;