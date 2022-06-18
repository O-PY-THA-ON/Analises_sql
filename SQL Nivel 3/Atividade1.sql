create view gabrielnunes-sirius.View_analitica.view_do_gab as
with pop as (
SELECT
 sigla_uf,
 id_municipio,
 populacao,
 sum(populacao) over(partition by sigla_uf) as pop_estado,
 round((populacao/sum(populacao) over(partition by sigla_uf)*100),4) as percentagem
FROM
  `basedosdados.br_ibge_populacao.municipio`
  where ano=2019
)
SELECT
  distinct populacao,
  pop_estado,
  percentagem,
  municipio.sigla_uf,
  municipio.id_municipio,
  dir.nome,
  pib.pib,
  round(avg(ideb) over(),2) as media_ideb,
  round(avg(ideb) over(partition by municipio.sigla_uf),2) media_ideb_estado
FROM
  `basedosdados.br_inep_ideb.municipio` as municipio left join pop on pop.id_municipio=municipio.id_municipio
  full outer join `basedosdados.br_ibge_pib.municipio` as pib on pib.id_municipio=municipio.id_municipio
  full outer join `basedosdados.br_bd_diretorios_brasil.municipio` as dir on dir.id_municipio=municipio.id_municipio
  where municipio.ano=2019 
LIMIT
  100;