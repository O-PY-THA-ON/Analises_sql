--media da melhor escola de salvador
SELECT
round(avg(nota_saeb_lingua_portuguesa)) as media_portugues,
round(avg(nota_saeb_matematica)) as media_matematica,
round(avg(ideb)) as media_ideb,
FROM
  `basedosdados.br_inep_ideb.escola`
  where id_escola='29182395' and ano=2019
LIMIT
  100;