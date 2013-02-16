--	SCRIPT DE UPGRADE DA VERSÃO  10.12 PARA VERSÃO 11.07 DO SIGAEPCT-ADM
--	CRIAÇÃO:	08/07/2011 
--	AUTOR: 		CLEBER S. OLIVEIRA


CREATE SEQUENCE seq_ad_anulacaoitem INCREMENT BY 1 MINVALUE 1 NO MAXVALUE CACHE 1 NO CYCLE;
CREATE SEQUENCE seq_rh_capacitacao INCREMENT BY 1 MINVALUE 1 NO MAXVALUE CACHE 1 NO CYCLE;

CREATE TABLE ad_anulacaoitem (
	idanulacaoitem    NUMERIC NOT NULL,
        idlicitacao       NUMERIC NULL,
        item         NUMERIC NULL,
        data         DATE NULL,
        quantidadeanulada NUMERIC NULL,
        valorunitanulado  NUMERIC NULL
	);

ALTER TABLE ad_anulacaoitem ADD CONSTRAINT pk_ad_anulacaoitem PRIMARY KEY (idanulacaoitem);

----------------------------------------------------------------------------------------------------
--https://redmine.renapi.gov.br/issues/23836

CREATE TABLE bt_autor2 AS (SELECT * FROM bt_autor);

DROP TABLE bt_autor CASCADE;

CREATE TABLE bt_autor (
    idautor integer DEFAULT 0 NOT NULL,
    sobrenome character varying(100),
    prenome character varying(100),
    cutter character varying(40),
    idetiqueta integer NOT NULL default 53, 
    subcampo character(1) NOT NULL default 'a',
    conteudo character varying(3000),
    indicador character(1),
    linha integer,
    ocorrencia integer,
    classificacao character varying(15)
);

ALTER  TABLE bt_autor  DISABLE TRIGGER ALL;
INSERT INTO  bt_autor ( SELECT * FROM bt_autor2);
UPDATE bt_autor SET     idetiqueta = 53, subcampo = 'a', ocorrencia = 0;
ALTER  TABLE bt_autor  ENABLE TRIGGER ALL;
ALTER TABLE ONLY bt_autor ADD CONSTRAINT pk_bt_autor PRIMARY KEY (idautor, idetiqueta, subcampo);
DROP   TABLE bt_autor2 CASCADE;
----------------------------------------------------------------------------------------------------

ALTER TABLE cm_setor ADD idresponsavel INT4;

CREATE TABLE rh_designacao (
	idvinculo    CHAR(7) NOT NULL,
        datainicio   DATE NOT NULL,
        datafim      DATE NULL,
        obs          VARCHAR(500) NULL,
        idsetor      INT4 NULL,
        idfuncao     INT4 NULL,
        idpublicacao INT4 NULL
	);
ALTER TABLE rh_designacao ADD CONSTRAINT pk_rh_designacao PRIMARY KEY (idvinculo,datainicio);

CREATE TABLE rh_histpensionista (
	idvinculo     CHAR(7) NOT NULL,
        idpensionista INT4 NOT NULL,
        tipopensao    VARCHAR(20) NOT NULL,
        datainicio    DATE NOT NULL,
        datafim       DATE NULL,
        percentual    INT4 NULL,
        isentoir      CHAR(1) NULL,
        obs           VARCHAR(200) NULL);

ALTER TABLE rh_histpensionista ADD CONSTRAINT pk_rh_histpensionista PRIMARY KEY (idvinculo,idpensionista,tipopensao,datainicio);

CREATE TABLE rh_substituicao (idvinculo        CHAR(7) NOT NULL,
          datainicio            DATE NOT NULL,
          datafim          DATE NULL,
          obs              VARCHAR(200) NULL,
          datainicioremuneracao DATE NULL,
          datafimremuneracao    DATE NULL,
          idvinculosubst        CHAR(7) NULL,
          datainiciosubst       DATE NULL,
          idfuncao         INT4 NULL,
          idpublicacao          INT4 NULL);

ALTER TABLE rh_substituicao ADD CONSTRAINT pk_rh_substituicao PRIMARY KEY (idvinculo,datainicio);

--ALTER TABLE ad_empenhadodist ADD CONSTRAINT fk_ad_empenhadodist_empenhadoid FOREIGN KEY (idempenhado) REFERENCES ad_empenhado (idempenhado) ON DELETE NO ACTION ON UPDATE NO ACTION;
--ALTER TABLE ad_empenhadodist ADD CONSTRAINT fk_ad_empenhadodist_requisicaoid FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao (idrequisicao) ON DELETE NO ACTION ON UPDATE NO ACTION;
--ALTER TABLE ad_funcionarioresp ADD CONSTRAINT fk_ad_itempatrimo2_cm_se FOREIGN KEY (idsetor) REFERENCES cm_setor (idsetor) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE bt_autor ADD CONSTRAINT fk_bt_autor_etiqueta FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta (idetiqueta) ON DELETE NO ACTION ON UPDATE NO ACTION;
--ALTER TABLE bt_multa ADD CONSTRAINT fk_bt_multa1_bt_em FOREIGN KEY (idemprestimo) REFERENCES bt_emprestimo (idemprestimo) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE cm_setor ADD CONSTRAINT fk_cm_setor_cm_pessoa FOREIGN KEY (idresponsavel) REFERENCES cm_pessoa (idpessoa) ON DELETE NO ACTION ON UPDATE NO ACTION;


-- ADJUST COLUMN

ALTER TABLE ad_motorista ALTER COLUMN categoria TYPE VARCHAR(2); --https://redmine.renapi.gov.br/issues/22567
ALTER TABLE ad_processo ADD publico VARCHAR(1); 		 -- https://redmine.renapi.gov.br/issues/22525


-- CREATE SEQUENCE

--CREATE SEQUENCE seq_rh_capacitacao INCREMENT BY 1 MINVALUE 1 NO MAXVALUE CACHE 1 NO CYCLE;

-- CREATE TABLE

CREATE TABLE bt_autorobra (
    idautor integer NOT NULL,
    idetiqueta integer NOT NULL,
    subcampo character(1),
    idobra integer NOT NULL,
    idmaterial integer NOT NULL,
    ocorrencia integer NOT NULL
);


--CREATE TABLE rh_designacao (
--	idvinculo    CHAR(7) NOT NULL,
--        datainicio   DATE NOT NULL,
--	datafim      DATE NULL,
--	obs          VARCHAR(500) NULL,
--	idsetor      INT4 NULL,
--	idfuncao     INT4 NULL,
--	idpublicacao INT4 NULL
--	);

--ALTER TABLE rh_designacao 
--ADD 	CONSTRAINT pk_rh_designacao PRIMARY KEY (idvinculo,datainicio);


--CREATE TABLE rh_histpensionista (
--	idvinculo     CHAR(7) NOT NULL,
--	idpensionista INT4 NOT NULL,
--	tipopensao    VARCHAR(20) NOT NULL,
--	datainicio    DATE NOT NULL,
--	datafim       DATE NULL,
--	percentual    INT4 NULL,
--	isentoir      CHAR(1) NULL,
--	obs           VARCHAR(200) NULL
--	);
--ALTER TABLE rh_histpensionista ADD CONSTRAINT pk_rh_histpensionista PRIMARY KEY (idvinculo,idpensionista,tipopensao,datainicio);


--CREATE TABLE rh_substituicao (
--	idvinculo             CHAR(7) NOT NULL,
--	datainicio            DATE NOT NULL,
--	datafim               DATE NULL,
--	obs                   VARCHAR(200) NULL,
--	datainicioremuneracao DATE NULL,
--	datafimremuneracao    DATE NULL,
--	idvinculosubst        CHAR(7) NULL,
--	datainiciosubst       DATE NULL,
--	idfuncao              INT4 NULL,
--	idpublicacao          INT4 NULL
--	);
--ALTER TABLE rh_substituicao 
--ADD 	CONSTRAINT pk_rh_substituicao PRIMARY KEY (idvinculo,datainicio);


-- FOREIGN KEYS

--ALTER TABLE ad_empenhadodist 
--ADD CONSTRAINT fk_ad_empenhadodist_empenhadoid FOREIGN KEY (idempenhado) REFERENCES ad_empenhado (idempenhado)
--ON DELETE NO ACTION ON UPDATE NO ACTION;

--ALTER TABLE ad_empenhadodist 
--ADD CONSTRAINT fk_ad_empenhadodist_requisicaoid FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao (idrequisicao)
--ON DELETE NO ACTION ON UPDATE NO ACTION;

--ALTER TABLE ad_funcionarioresp 
--ADD CONSTRAINT fk_ad_itempatrimo2_cm_se FOREIGN KEY (idsetor) REFERENCES cm_setor (idsetor)
--ON DELETE NO ACTION ON UPDATE NO ACTION;

--ALTER TABLE bt_autor 
--ADD CONSTRAINT fk_bt_autor_etiqueta FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta (idetiqueta)
--ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE ONLY bt_autorobra
    ADD CONSTRAINT fk_bt_autor_obra FOREIGN KEY (idautor, idetiqueta, subcampo) REFERENCES bt_autor(idautor, idetiqueta, subcampo);

ALTER TABLE ONLY bt_autorobra
    ADD CONSTRAINT fk_bt_autor_obra_mat FOREIGN KEY (idmaterial) REFERENCES bt_material(idmaterial);

ALTER TABLE ONLY bt_autorobra
    ADD CONSTRAINT fk_bt_obra_autor FOREIGN KEY (idobra) REFERENCES bt_obra(idobra);

--ALTER TABLE bt_multa 
--ADD CONSTRAINT fk_bt_multa1_bt_em FOREIGN KEY (idemprestimo) REFERENCES bt_emprestimo (idemprestimo)
--ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ADJUST DATA

----------------------------------------------------------------------------------------------------
--https://redmine.renapi.gov.br/issues/22525

SELECT setval('seq_cm_transacao'  , CAST ((SELECT MAX(idtrans) FROM cm_transacao ) AS int),  true);
SELECT setval('seq_cm_grupoacesso', CAST ((SELECT MAX(idgrupo) FROM cm_grupoacesso) AS int), true);

INSERT INTO cm_transacao( idtrans, transacao, idsistema) VALUES (nextval('seq_cm_transacao'), 'PROT_PC', 4);
INSERT INTO cm_transacao( idtrans, transacao, idsistema) VALUES (nextval('seq_cm_transacao'), 'PROT_PT', 4);
INSERT INTO cm_grupoacesso( idgrupo, grupo) VALUES (nextval('seq_cm_grupoacesso'),'PROT_PC');
INSERT INTO cm_grupoacesso( idgrupo, grupo) VALUES (nextval('seq_cm_grupoacesso'),'PROT_PT');
INSERT INTO cm_acesso(idgrupo, idtrans, direito) VALUES ((SELECT DISTINCT idgrupo FROM cm_grupoacesso WHERE grupo = 'PROT_PC' LIMIT 1),(SELECT idtrans FROM cm_transacao WHERE transacao = 'PROT_PC' LIMIT 1), 15);
INSERT INTO cm_acesso(idgrupo, idtrans, direito) VALUES ((SELECT DISTINCT idgrupo FROM cm_grupoacesso WHERE grupo = 'PROT_PT' LIMIT 1),(SELECT idtrans FROM cm_transacao WHERE transacao = 'PROT_PT' LIMIT 1), 15);

----------------------------------------------------------------------------------------------------
--https://redmine.renapi.gov.br/issues/20245

 
UPDATE  bt_autor SET conteudo = sobrenome || ', '|| prenome
WHERE 	idetiqueta 	= 53
AND	subcampo 	= 'a';

UPDATE  bt_autor SET conteudo = cutter
WHERE 	idetiqueta  = 53 
AND	subcampo = 'b';


----------------------------------------------------------------------------------------------------
-- https://redmine.renapi.gov.br/issues/23247
ALTER TABLE ad_processo ADD emailinteres character varying(50);
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- https://redmine.renapi.gov.br/issues/20793

CREATE SEQUENCE seq_ad_abastecimento
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

SELECT setval('seq_ad_abastecimento', cast((select max(idabastecimento) from ad_abastecimento limit 1) as int), true);
    
----------------------------------------------------------------------------------------------------
--https://redmine.renapi.gov.br/issues/23155
--ALTER TABLE bt_autor DROP CONSTRAINT pk_filmes CASCADE;

--https://redmine.renapi.gov.br/issues/27846
CREATE OR REPLACE FUNCTION DROP_CONSTRAINT(table_ TEXT,constraint_ TEXT)
RETURNS BOOLEAN AS
$BODY$
DECLARE contagem bigint;
BEGIN
        SELECT  count(*) INTO contagem
        FROM 	information_schema.constraint_table_usage
        WHERE	trim(table_name) 	= trim($1)
        AND	trim(constraint_name) 	= trim($2);
        IF contagem<>0 THEN
            EXECUTE 'ALTER TABLE '||$1||' DROP CONSTRAINT '||$2||' CASCADE';
            RETURN TRUE;
        ELSE
	    RETURN FALSE;
        END IF;
END;
$BODY$ LANGUAGE plpgsql VOLATILE COST 100;


select DROP_CONSTRAINT('ad_hotel','pk_ad_hotel');

--ALTER TABLE ONLY bt_autor ADD CONSTRAINT pk_bt_autor PRIMARY KEY (idautor, idetiqueta, subcampo);
UPDATE bt_opcaolista SET indice='#'  WHERE idopcao =41  AND idopcaolista =1776;
----------------------------------------------------------------------------------------------------

--https://redmine.renapi.gov.br/issues/23549
--ALTER TABLE ONLY cm_setor ADD COLUMN idresponsavel integer;
--ALTER TABLE ONLY cm_setor ADD CONSTRAINT fk_cm_setor_cm_pessoa FOREIGN KEY (idresponsavel) REFERENCES cm_pessoa(idpessoa);

----------------------------------------------------------------------------------------------------

--https://redmine.renapi.gov.br/issues/23817
--ALTER TABLE ad_vidautil DISABLE TRIGGER ALL;
--INSERT INTO ad_vidautil VALUES (142120200, 'AERONAVES', 10, 10);
--INSERT INTO ad_vidautil VALUES (142120600, 'APARELHOS E EQUIPAMENTOS DE COMUNICACAO', 10, 20);
--INSERT INTO ad_vidautil VALUES (142120400, 'APARELHOS DE MEDICAO E ORIENTACAO', 15, 10);
--INSERT INTO ad_vidautil VALUES (142120800, 'APAR., EQUIP. E UTENS. MED., ODONT., LABOR. E HOSP.', 15, 20);
--INSERT INTO ad_vidautil VALUES (142121000, 'APARELHOS E EQUIP.P/ ESPORTES E DIRVERSOES', 10, 10);
--INSERT INTO ad_vidautil VALUES (142121200, 'APARELHOS E UTENSILIOS DOMESTICOS', 10, 10);
--INSERT INTO ad_vidautil VALUES (142121300, 'ARMAZENS ESTRUTURAIS - COBERTURAS DE LONA', 10, 10);
--INSERT INTO ad_vidautil VALUES (142121400, 'ARMAMENTOS', 20, 15);
--INSERT INTO ad_vidautil VALUES (142121600, 'BANDEIRAS, FLAMULAS E INSIGNIAS', 10, 10);
--INSERT INTO ad_vidautil VALUES (142121800, 'COLECOES E MATERIAIS BIBLIOGRAFICOS', 10, 0);
--INSERT INTO ad_vidautil VALUES (142121900, 'DISCOTECAS E FILMOTECAS', 5, 10);
--INSERT INTO ad_vidautil VALUES (142122000, 'EMBARCACOES', 10, 10);
--INSERT INTO ad_vidautil VALUES (142122200, 'EQUIPAMENTOS DE MANOBRAS E PATRULHAMENTO', 20, 10);
--INSERT INTO ad_vidautil VALUES (142122400, 'EQUIPAMENTO DE PROTECAO, SEGURANCA E SOCORRO', 10, 10);
--INSERT INTO ad_vidautil VALUES (142122600, 'INSTRUMENTOS MUSICAIS E ARTISTICOS', 20, 10);
--INSERT INTO ad_vidautil VALUES (142122800, 'MAQUINAS E EQUIPAM. DE NATUREZA INDUSTRIAL', 20, 10);
--INSERT INTO ad_vidautil VALUES (142123000, 'MAQUINAS E EQUIPAMENTOS ENERGETICOS', 10, 10);
--INSERT INTO ad_vidautil VALUES (142123200, 'MAQUINAS E EQUIPAMENTOS GRAFICOS', 15, 10);
--INSERT INTO ad_vidautil VALUES (142123300, 'EQUIPAMENTOS PARA AUDIO, VIDEO E FOTO', 10, 10);
--INSERT INTO ad_vidautil VALUES (142123400, 'MAQUINAS, UTENSILIOS E EQUIPAMENTOS DIVERSOS', 10, 10);
--INSERT INTO ad_vidautil VALUES (142123500, 'EQUIPAMENTOS DE PROCESSAMENTOS DE DADOS', 5, 10);
--INSERT INTO ad_vidautil VALUES (142123600, 'MAQUINAS, INSTALACOES E UTENS. DE ESCRITORIO', 10, 10);
--INSERT INTO ad_vidautil VALUES (142123800, 'MAQUINA, FERRAMENTAS E UTENSILIOS DE OFICINA', 10, 10);
--INSERT INTO ad_vidautil VALUES (142123900, 'EQUIPAMENTOS HIDRAULICOS E ELETRICOS', 10, 10);
--INSERT INTO ad_vidautil VALUES (142124000, 'MAQUI. EQUIP. UTENSILIOS AGRI/AGROP. E RODOVIARIOS', 10, 10);
--INSERT INTO ad_vidautil VALUES (142124200, 'MOBILIARIO EM GERAL', 10, 10);
--INSERT INTO ad_vidautil VALUES (142124600, 'SEMOVENTES E EQUIPAMENTOS DE MONTARIA', 10, 10);
--INSERT INTO ad_vidautil VALUES (142124800, 'VEICULOS DIVERSOS', 15, 10);
--INSERT INTO ad_vidautil VALUES (142124900, 'EQUIPAMENTOS E MATERIAL SIGILOSO E RESERVADO', 10, 10);
--INSERT INTO ad_vidautil VALUES (142125000, 'VEICULOS FERROVIARIOS', 30, 10);
--INSERT INTO ad_vidautil VALUES (142125100, 'PECAS NAO INCORPORAVEIS A IMOVEIS', 10, 10);
--INSERT INTO ad_vidautil VALUES (142125200, 'VEICULOS DE TRACAO MECANICA', 15, 10);
--INSERT INTO ad_vidautil VALUES (142125300, 'CARROS DE COMBATE', 30, 10);
--INSERT INTO ad_vidautil VALUES (142125400, 'EQUIPAMENTOS, PECAS E ACESSORIOS AERONAUTICOS', 30, 10);
--INSERT INTO ad_vidautil VALUES (142125600, 'EQUIPAMENTOS, PECAS E ACES. DE PROTECAO AO VOO', 30, 10);
--INSERT INTO ad_vidautil VALUES (142125700, 'ACESSORIOS PARA AUTOMOVEIS', 5, 10);
--INSERT INTO ad_vidautil VALUES (142125800, 'EQUIPAMENTOS DE MERGULHO E SALVAMENTO', 15, 10);
--INSERT INTO ad_vidautil VALUES (142126000, 'EQUIPAMENTOS, PECAS E ACESSORIOS MARITIMOS', 15, 10);
--INSERT INTO ad_vidautil VALUES (142128300, 'EQUIPAMENTOS E SISTEMA DE PROT. VIG.AMBIENTAL', 10, 10);
--INSERT INTO ad_vidautil VALUES (142124400, 'OBRAS DE ARTE E PECAS PARA EXPOSICAO', 10, 10);
--ALTER TABLE ad_vidautil ENABLE TRIGGER ALL;
----------------------------------------------------------------------------------------------------

--https://redmine.renapi.gov.br/issues/24000
ALTER TABLE rh_progressaocapacitacao ADD COLUMN nivelpadrao2 character varying(3);
UPDATE rh_progressaocapacitacao SET nivelpadrao2 = CAST(nivelpadrao AS TEXT);
ALTER TABLE rh_progressaocapacitacao DROP COLUMN nivelpadrao;
ALTER TABLE rh_progressaocapacitacao ADD COLUMN nivelpadrao character varying(3);
UPDATE rh_progressaocapacitacao SET nivelpadrao = nivelpadrao2;
ALTER TABLE rh_progressaocapacitacao DROP COLUMN nivelpadrao2;

-----------------------------------------------------------------------

--https://redmine.renapi.gov.br/issues/24001
INSERT INTO rh_ocorrenciaterceirizado VALUES (2,'OUTROS');
INSERT INTO rh_ocorrenciaterceirizado VALUES (3,'OUTROS');
INSERT INTO rh_ocorrenciaterceirizado VALUES (4,'OUTROS');
INSERT INTO rh_ocorrenciaterceirizado VALUES (5,'OUTROS');
INSERT INTO rh_ocorrenciaterceirizado VALUES (6,'OUTROS');
INSERT INTO rh_ocorrenciaterceirizado VALUES (7,'OUTROS');
INSERT INTO rh_ocorrenciaterceirizado VALUES (8,'OUTROS');

----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
--https://redmine.renapi.gov.br/issues/15199

CREATE OR REPLACE FUNCTION gatilho_cm_pessoa() RETURNS trigger AS $BODY$
BEGIN	
	IF NEW.datacartest  = '0001-01-01 BC' THEN
		NEW.datacartest := null;
        END IF;
	IF NEW.datanasc  = '0001-01-01 BC' THEN
		NEW.datanasc := null;
        END IF;
	IF NEW.datapispasep = '0001-01-01 BC' THEN
		NEW.datapispasep := null;
        END IF;
	IF NEW.datarg = '0001-01-01 BC' THEN
		NEW.datarg := null;
        END IF;
	IF NEW.dataultalt = '0001-01-01 BC' THEN
		NEW.dataultalt := null;
        END IF;  
      	RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql VOLATILE COST 100;

CREATE OR REPLACE FUNCTION gatilho_rh_funcionario() RETURNS trigger AS $BODY$
BEGIN	
	IF NEW.dataprimeiroemprego  = '0001-01-01 BC' THEN
		NEW.dataprimeiroemprego := null;
        END IF;
      	RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql VOLATILE COST 100;

CREATE OR REPLACE FUNCTION gatilho_rh_vinculo() RETURNS trigger AS $BODY$
BEGIN
	IF NEW.dataposse  = '0001-01-01 BC' THEN
		NEW.dataposse := null;
        END IF;
	IF NEW.dataexercicio  = '0001-01-01 BC' THEN
		NEW.dataposse := null;
        END IF;
	IF NEW.dataconcurso = '0001-01-01 BC' THEN
		NEW.dataconcurso := null;
        END IF;
	IF NEW.datafimcontrato = '0001-01-01 BC' THEN
		NEW.datafimcontrato := null;
        END IF;
	IF NEW.datavacancia = '0001-01-01 BC' THEN
		NEW.datavacancia := null;
        END IF;      
      	RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql VOLATILE COST 100;

CREATE OR REPLACE FUNCTION gatilho_rh_provimento() RETURNS trigger AS $BODY$
BEGIN
	IF NEW.datainicio  = '0001-01-01 BC' THEN
		NEW.datainicio := null;
        END IF;
	IF NEW.datafim  = '0001-01-01 BC' THEN
		NEW.datafim := null;
        END IF;
      	RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql VOLATILE COST 100;



CREATE OR REPLACE FUNCTION gatilho_rh_vaga() RETURNS trigger AS $BODY$
BEGIN
	IF NEW.datainicio  = '0001-01-01 BC' THEN
		NEW.datainicio := null;
        END IF;
	IF NEW.datafim  = '0001-01-01 BC' THEN
		NEW.datafim := null;
        END IF;
      	RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql VOLATILE COST 100;


CREATE TRIGGER trigger_cm_pessoa
  BEFORE INSERT OR UPDATE
  ON cm_pessoa
  FOR EACH ROW
  EXECUTE PROCEDURE gatilho_cm_pessoa();

CREATE TRIGGER trigger_rh_funcionario
  BEFORE INSERT OR UPDATE
  ON rh_funcionario
  FOR EACH ROW
  EXECUTE PROCEDURE gatilho_rh_funcionario();

CREATE TRIGGER trigger_rh_vinculo
  BEFORE INSERT OR UPDATE
  ON rh_vinculo
  FOR EACH ROW
  EXECUTE PROCEDURE gatilho_rh_vinculo();

CREATE TRIGGER trigger_rh_provimento
  BEFORE INSERT OR UPDATE
  ON rh_provimento
  FOR EACH ROW
  EXECUTE PROCEDURE gatilho_rh_provimento();

CREATE TRIGGER trigger_rh_vaga
  BEFORE INSERT OR UPDATE
  ON rh_vaga
  FOR EACH ROW
  EXECUTE PROCEDURE gatilho_rh_vaga();
------------------------------------------------------------------------------------------------------------------------
--https://redmine.renapi.gov.br/issues/24624

ALTER TABLE bt_exemplar ADD numeroexemplar integer;
----------------------------------------------------------------------------------------------------
