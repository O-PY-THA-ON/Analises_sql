SELECT
round(avg(salario_mensal)) as media_salarial,
idade
FROM
  `basedosdados.br_me_caged.microdados_movimentacoes`
group by idade
order by media_salarial desc
LIMIT
  100;