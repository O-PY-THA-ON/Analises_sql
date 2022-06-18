--Questão 12
SELECT
 count(*) as registros,
 idade
FROM
  `basedosdados.br_me_caged.microdados_movimentacoes`
  group by idade
LIMIT
  100;