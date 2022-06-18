--Questão 11
SELECT
  max(salario_mensal) as max_salario,
  idade
FROM
  `basedosdados.br_me_caged.microdados_movimentacoes`
  group by idade
LIMIT
  100;