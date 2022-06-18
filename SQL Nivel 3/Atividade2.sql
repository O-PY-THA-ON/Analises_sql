SELECT

ano,

ideb.sigla_uf,

ideb.id_municipio,

municipio.nome,

rede,

ideb.ideb,

avg(ideb.ideb) over (partition by rede,ideb.id_municipio ) as media_ideb_rede

FROM

`basedosdados.br_inep_ideb.municipio` AS ideb

LEFT JOIN

`basedosdados.br_bd_diretorios_brasil.municipio` AS municipio

ON

ideb.id_municipio=municipio.id_municipio

WHERE

ano=2019

LIMIT

100