/*
 * Atualizações para a versão 12.06
 *
 */

-- Tarefa #34276
ALTER TABLE rh_contrato ADD COLUMN justificativapror VARCHAR;

-- Tarefa #33757
UPDATE cm_tabelageral SET item2 = 'ORDINARIO' WHERE tabela = 'AD_TIPOEMPENHO' AND item1 = 'OR';
UPDATE cm_tabelageral SET item1 = 'RE', item2 = 'REFORCO' WHERE tabela = 'AD_TIPOEMPENHO' AND item1 = 'CO';
UPDATE ad_empenho SET tipoempenho = 'RE' WHERE tipoempenho = 'CO';

-- Tarefa #34923
DROP VIEW vw_depreciacao;

CREATE OR REPLACE VIEW vw_depreciacao AS 
SELECT ad_itempatrimonio.iditempatrimonio, itensbaixados.databaixa, ad_itempatrimonio.descricao AS item, ad_itempatrimonio.dataaquisicao, ad_itempatrimonio.valor, ad_itempatrimonio.idsetor, ad_itempatrimonio.idvidautil AS idrubrica, ad_itempatrimonio.datainiciouso AS iniciouso, ad_vidautil.descricao AS ccontabil, ad_vidautil.valorresidual, ad_vidautil.anosvidautil AS vidautil, cm_setor.idinstituicao, cm_instituicao.sigla, ad_vidautil.anosvidautil * 12 AS mesesdepreciacao, ad_itempatrimonio.valor - ad_itempatrimonio.valor * ad_vidautil.valorresidual::numeric / 100::numeric AS valordepreciavel, (ad_itempatrimonio.valor - ad_itempatrimonio.valor * ad_vidautil.valorresidual::numeric / 100::numeric) / (ad_vidautil.anosvidautil * 12)::numeric AS valordepreciavelmes
FROM ad_itempatrimonio
    LEFT JOIN ad_vidautil ON ad_itempatrimonio.idvidautil = ad_vidautil.idvidautil   
    LEFT JOIN cm_setor ON ad_itempatrimonio.idsetor = cm_setor.idsetor
    LEFT JOIN cm_instituicao ON cm_setor.idinstituicao = cm_instituicao.idinstituicao
    LEFT JOIN (SELECT iditempatrimonio, data AS databaixa
               FROM ad_movimentopat 
               WHERE tipomovimento = '3') AS itensbaixados ON ad_itempatrimonio.iditempatrimonio = itensbaixados.iditempatrimonio  
ORDER BY ad_itempatrimonio.iditempatrimonio;

-- Tarefa #35271
ALTER TABLE ad_abastecimento ALTER COLUMN quantidade TYPE numeric(5,2);

-- Tarefa #35207
ALTER TABLE rh_histformacao RENAME COLUMN datafim TO datafimold;
ALTER TABLE rh_histformacao ADD    COLUMN datafim NUMERIC(4,0);
UPDATE rh_histformacao SET datafim = (SELECT EXTRACT(YEAR FROM datafimold) 
                                      FROM rh_histformacao AS t1
                                      WHERE t1.idhistformacao = rh_histformacao.idhistformacao);

-- Tarefas #35407, #35650
ALTER TABLE bt_assunto DROP CONSTRAINT pk_bt_assunto;
ALTER TABLE bt_autorobra DROP CONSTRAINT fk_bt_autor_obra;
ALTER TABLE bt_autor DROP CONSTRAINT pk_bt_autor;
ALTER TABLE ONLY bt_autor ADD CONSTRAINT pk_bt_autor PRIMARY KEY (idautor,idetiqueta);
ALTER TABLE ONLY bt_autorobra ADD CONSTRAINT fk_bt_autor_obra FOREIGN KEY (idautor, idetiqueta) REFERENCES bt_autor(idautor, idetiqueta);
ALTER TABLE bt_autor ALTER COLUMN subcampo DROP NOT NULL;

-- Tarefa #35651
CREATE OR REPLACE FUNCTION sem_acentos(character varying)
    RETURNS character varying AS
$BODY$
	BEGIN
    SELECT TRANSLATE($1,
        'áéíóúàèìòùãõâêîôôäëïöüçÁÉÍÓÚÀÈÌÒÙÃÕÂÊÎÔÛÄËÏÖÜÇ',
        'aeiouaeiouaoaeiooaeioucAEIOUAEIOUAOAEIOOAEIOUC');
	END;
$BODY$
LANGUAGE plpgsql VOLATILE COST 100;



/*
 * Inserções de carga inicial para a versão 12.06
 *
 */

-- Tarefas #34073, #35650
CREATE TABLE bt_emprestimo_temp (
    idemprestimo_temp integer NOT NULL,
    idusuario_temp integer NOT NULL,
    idexemplar integer NOT NULL,
    datahoradoemprestimo timestamp with time zone,
    datahoraprevdevolucao timestamp with time zone,
    datahoradadevolucao timestamp with time zone,
    CONSTRAINT bt_emprestimo_temp_pkey PRIMARY KEY (idemprestimo_temp)
);

-- Tarefas #35650
CREATE TABLE bt_cutter (
    abreviacao character varying(20) NOT NULL,
    codigo integer NOT NULL
);

