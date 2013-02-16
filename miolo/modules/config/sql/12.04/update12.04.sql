/*
 *  Atualizações para versão 12.04
 */

-- Tarefa #31368
ALTER TABLE ad_itempatrimonio ADD COLUMN valorreavaliado numeric(12,2);
ALTER TABLE ad_itempatrimonio ADD COLUMN datareavaliacao date;

-- Tarefa #31387
ALTER TABLE ad_orcamentohist DROP CONSTRAINT pk_ad_orcamentohist;

-- Tarefa #32301
INSERT INTO cm_tabelageral (idtabelageral,tabela,item1,item2) VALUES (nextval('seq_cm_tabelageral'),'AD_CATEGORIAHABILITACAO','AB','CATEGORIA AB');
INSERT INTO cm_tabelageral (idtabelageral,tabela,item1,item2) VALUES (nextval('seq_cm_tabelageral'),'AD_CATEGORIAHABILITACAO','AC','CATEGORIA AC');
INSERT INTO cm_tabelageral (idtabelageral,tabela,item1,item2) VALUES (nextval('seq_cm_tabelageral'),'AD_CATEGORIAHABILITACAO','AD','CATEGORIA AD');
INSERT INTO cm_tabelageral (idtabelageral,tabela,item1,item2) VALUES (nextval('seq_cm_tabelageral'),'AD_CATEGORIAHABILITACAO','AE','CATEGORIA AE');

-- Tarefa #32600
ALTER TABLE ad_itempatrimonio ALTER COLUMN numeroserie TYPE varchar(25);

-- Tarefa #32701
ALTER TABLE ad_andamento ADD column idusuario integer;
ALTER TABLE ad_processo  ADD column idusuario integer;

-- Tarefa #32837
ALTER TABLE ad_andamento ALTER COLUMN despacho TYPE varchar(1000);

-- Tarefa #33005
ALTER TABLE ad_material ALTER COLUMN descresum TYPE varchar(400);


/*
 *  Inserções para carga inicial versão 12.04
 */

INSERT INTO cm_uf VALUES ('XX', 'Não Informado');
INSERT INTO cm_municipio(idmunicipio, municipio, iduf, idpais, categoriadiaria) VALUES ('XXXX', 'Não Informado', 'XX', 024, 0);



