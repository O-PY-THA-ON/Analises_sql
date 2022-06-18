--Questão 13
SELECT
round(avg(salario_mensal),2) as media_salarial,
sexo,
case when sexo='1' then 'Homem'
     when sexo='3' then 'mulher'
     when sexo ='9' then 'Não idenrificado'
  else sexo
  end as classif     
FROM
  `basedosdados.br_me_caged.microdados_movimentacoes`
group by sexo  
LIMIT
  100;