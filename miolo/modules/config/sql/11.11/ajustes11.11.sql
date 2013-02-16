
--	SCRIPT DE ATUALIZAÇÕES DO BANCO 11.07 PARA  VERSÃO 11.11 DO SIGAEPCT-ADM
--	CRIAÇÃO:	25/10/2011 
--	AUTOR: 		CLEBER S. OLIVEIRA

-- https://redmine.renapi.gov.br/issues/27902
INSERT INTO cm_tabelageral (idtabelageral, tabela, item1, item2) 
VALUES (nextval('seq_cm_tabelageral') ,'AD_TIPOINGRESSOPAT',  9, 'COMPRA ACERVO SETORIAL');

-- https://redmine.renapi.gov.br/issues/27900

--INSERT INTO cm_acesso (idgrupo, idtrans, direito) 
--VALUES ((SELECT  MAX(idgrupo) FROM cm_grupoacesso WHERE grupo = 'ADM_ADMINUO'),
--	(SELECT  MAX(idtrans) FROM cm_transacao WHERE TRIM(transacao)='ADM_CADASTROFORNECEDOR'),
--	15);

-- VERIFICA SE EXISTE O REGISTRO PARA INCLUÍ-LO
INSERT INTO cm_acesso (idgrupo, idtrans, direito) 
(	

	SELECT  (SELECT  MAX(idgrupo) FROM cm_grupoacesso WHERE grupo = 'ADM_ADMINUO') AS idgrupo,
		(SELECT  MAX(idtrans) FROM cm_transacao WHERE TRIM(transacao)='ADM_CADASTROFORNECEDOR' ) AS idtrans,
		15 as direito
	FROM    (SELECT (1)) AS TEMP
	WHERE   NOT EXISTS 	
			(
			 SELECT 1 FROM cm_acesso 
			 WHERE	idgrupo = (SELECT  MAX(idgrupo) FROM cm_grupoacesso WHERE grupo = 'ADM_ADMINUO') 
			 AND	idtrans = (SELECT  MAX(idtrans) FROM cm_transacao WHERE TRIM(transacao)='ADM_CADASTROFORNECEDOR' )
			 AND	direito = 15
			 )
);


-- https://redmine.renapi.gov.br/issues/27022

CREATE TABLE rh_gestorcapacitacao (idusuario integer not null, login varchar(15), datainicio date, datafim date);
ALTER TABLE ONLY rh_gestorcapacitacao ADD CONSTRAINT rh_gestorcapacitacao_pkey PRIMARY KEY (idusuario);
ALTER TABLE ONLY rh_gestorcapacitacao ADD CONSTRAINT rh_gestorcapacitacao_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);
CREATE TABLE rh_reqcapacitacao (idusuario integer not null, login varchar(15), datainicio date, datafim date);
ALTER TABLE ONLY rh_reqcapacitacao ADD CONSTRAINT rh_reqcapacitacao_pkey PRIMARY KEY (idusuario);
ALTER TABLE ONLY rh_reqcapacitacao ADD CONSTRAINT rh_reqcapacitacao_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);
CREATE TABLE rh_acessoreqcapacitacao (idusuarior INTEGER NOT NULL, idusuariog INTEGER NOT NULL);
ALTER TABLE ONLY rh_acessoreqcapacitacao ADD CONSTRAINT rh_acessoreqcapacitacao_pkey PRIMARY KEY (idusuarior,idusuariog);
ALTER TABLE ONLY rh_acessoreqcapacitacao ADD CONSTRAINT rh_acessoreqcapacitacao_idusuarioR_fkey FOREIGN KEY (idusuarior) REFERENCES rh_reqcapacitacao(idusuario);
ALTER TABLE ONLY rh_acessoreqcapacitacao ADD CONSTRAINT rh_acessoreqcapacitacao_idusuarioG_fkey FOREIGN KEY (idusuariog) REFERENCES rh_gestorcapacitacao(idusuario);
ALTER TABLE rh_capacitacaoinsc add column idreq integer;
ALTER TABLE ONLY rh_capacitacaoinsc ADD CONSTRAINT rh_capacitacaoinsc_idusuario_fkey FOREIGN KEY (idreq) REFERENCES rh_reqcapacitacao(idusuario);

--https://redmine.renapi.gov.br/issues/21426   

CREATE OR REPLACE FUNCTION trigger_AdProcessoStampaberError() RETURNS trigger AS $emp_stamp$
    BEGIN
        IF NEW.stampaber='12311200' THEN
		NEW.stampaber := to_char(current_timestamp, 'YYYYMMDDHH24MI');
        END IF;
        RETURN NEW;
    END;
$emp_stamp$ LANGUAGE plpgsql;

CREATE TRIGGER tg_ad_processo BEFORE INSERT OR UPDATE ON ad_processo
    FOR EACH ROW EXECUTE PROCEDURE trigger_AdProcessoStampaberError();

--https://redmine.renapi.gov.br/issues/28112

ALTER TABLE cm_usuario ADD COLUMN ativo varchar(1);

--https://redmine.renapi.gov.br/issues/27932

DROP VIEW vw_depreciacao;

CREATE OR REPLACE VIEW vw_depreciacao AS
	SELECT 	ad_itempatrimonio.iditempatrimonio,
		ad_itempatrimonio.descricao AS item,
		ad_itempatrimonio.dataaquisicao,
		ad_itempatrimonio.valor,
		ad_itempatrimonio.idsetor,
		ad_itempatrimonio.idvidautil AS idrubrica,
		ad_itempatrimonio.datainiciouso AS iniciouso,
		ad_vidautil.descricao AS ccontabil,
		ad_vidautil.valorresidual,
		ad_vidautil.anosvidautil AS vidautil,
		cm_setor.idinstituicao, cm_instituicao.sigla,
		ad_vidautil.anosvidautil * 12 AS mesesdepreciacao, ad_itempatrimonio.valor - ad_itempatrimonio.valor * ad_vidautil.valorresidual::numeric / 100::numeric AS valordepreciavel,
		(ad_itempatrimonio.valor - ad_itempatrimonio.valor * ad_vidautil.valorresidual::numeric / 100::numeric) / (ad_vidautil.anosvidautil * 12)::numeric AS valordepreciavelmes
FROM 	ad_itempatrimonio LEFT JOIN ad_vidautil ON ad_itempatrimonio.idvidautil = ad_vidautil.idvidautil LEFT JOIN cm_setor ON ad_itempatrimonio.idsetor = cm_setor.idsetor LEFT JOIN cm_instituicao ON cm_setor.idinstituicao = cm_instituicao.idinstituicao
ORDER BY ad_itempatrimonio.iditempatrimonio;
