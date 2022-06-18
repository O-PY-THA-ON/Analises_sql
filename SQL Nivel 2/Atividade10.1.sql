SELECT
round(avg(salario_mensal)) as media_salarial,
sigla_uf
FROM
  `basedosdados.br_me_caged.microdados_movimentacoes`
  group by sigla_uf
  order by media_salarial desc
LIMIT
  100;