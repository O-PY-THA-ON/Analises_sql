--Questao 14.6
SELECT
 round(avg(nota_saeb_matematica),2) as nota_media_matematica,
 round(avg(nota_saeb_lingua_portuguesa),2) as nota_media_portugues,
 round(avg(ideb),2) as nota_media_ideb,
 id_municipio
FROM
  `basedosdados.br_inep_ideb.escola`
  where sigla_uf='BA' and ano=2019
group by id_municipio  
LIMIT
  100;