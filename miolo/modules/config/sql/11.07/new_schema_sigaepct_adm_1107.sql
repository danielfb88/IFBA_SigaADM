--	SCRIPT DE CRIAÇÃO DO BANCO PARA INSTALAÇÃO NOVA DA VERSÃO 11.07 DO SIGAEPCT-ADM
--	CRIAÇÃO:	08/07/2011 
--	AUTOR: 		CLEBER S. OLIVEIRA

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

-- CREATE DATABASE dbsiga; -- WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.utf8' LC_CTYPE = 'pt_BR.utf8';


-- \connect dbsiga

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 1154 (class 2612 OID 82545)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: -
--

CREATE PROCEDURAL LANGUAGE plpgsql;


SET search_path = public, pg_catalog;

--
-- TOC entry 19 (class 1255 OID 82546)
-- Dependencies: 1154 6
-- Name: fn_ad_fornecedor_ins(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION fn_ad_fornecedor_ins() RETURNS trigger
    LANGUAGE plpgsql
    AS '
BEGIN
	NEW.idagenc  = trim(NEW.idagenc);
	RETURN NEW;
END;
';


--
-- TOC entry 20 (class 1255 OID 82547)
-- Dependencies: 1154 6
-- Name: fn_cm_agencia_ins(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION fn_cm_agencia_ins() RETURNS trigger
    LANGUAGE plpgsql
    AS '
BEGIN
	NEW.idagenc  = trim(NEW.idagenc);
	RETURN NEW;
END;
';


--
-- TOC entry 21 (class 1255 OID 82548)
-- Dependencies: 1154 6
-- Name: fn_cm_instituicao_ins(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION fn_cm_instituicao_ins() RETURNS trigger
    LANGUAGE plpgsql
    AS '
BEGIN
	NEW.sigla  = trim(NEW.sigla);
	NEW.uasg  = trim(NEW.uasg);
	NEW.ug  = trim(NEW.ug);
	RETURN NEW;
END;
';


--
-- TOC entry 22 (class 1255 OID 82549)
-- Dependencies: 1154 6
-- Name: fn_cm_uf_ins(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION fn_cm_uf_ins() RETURNS trigger
    LANGUAGE plpgsql
    AS '
BEGIN
	NEW.iduf  = trim(NEW.iduf);
	NEW.uf  = trim(NEW.uf);
	RETURN NEW;
END;
';


--
-- TOC entry 23 (class 1255 OID 82550)
-- Dependencies: 1154 6
-- Name: nvl(bigint, bigint); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(bigint, bigint) RETURNS bigint
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 24 (class 1255 OID 82551)
-- Dependencies: 1154 6
-- Name: nvl(bit, bit); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(bit, bit) RETURNS bit
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 25 (class 1255 OID 82552)
-- Dependencies: 1154 6
-- Name: nvl(bit varying, bit varying); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(bit varying, bit varying) RETURNS bit varying
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 26 (class 1255 OID 82553)
-- Dependencies: 1154 6
-- Name: nvl(boolean, boolean); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(boolean, boolean) RETURNS boolean
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 27 (class 1255 OID 82554)
-- Dependencies: 1154 6
-- Name: nvl(box, box); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(box, box) RETURNS box
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 28 (class 1255 OID 82555)
-- Dependencies: 1154 6
-- Name: nvl(bytea, bytea); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(bytea, bytea) RETURNS bytea
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 29 (class 1255 OID 82556)
-- Dependencies: 1154 6
-- Name: nvl(character varying, character varying); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(character varying, character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 30 (class 1255 OID 82557)
-- Dependencies: 1154 6
-- Name: nvl(character, character); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(character, character) RETURNS character
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 31 (class 1255 OID 82558)
-- Dependencies: 1154 6
-- Name: nvl(cidr, cidr); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(cidr, cidr) RETURNS cidr
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 32 (class 1255 OID 82559)
-- Dependencies: 1154 6
-- Name: nvl(circle, circle); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(circle, circle) RETURNS circle
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 33 (class 1255 OID 82560)
-- Dependencies: 1154 6
-- Name: nvl(date, date); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(date, date) RETURNS date
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 34 (class 1255 OID 82561)
-- Dependencies: 1154 6
-- Name: nvl(double precision, double precision); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(double precision, double precision) RETURNS double precision
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 35 (class 1255 OID 82562)
-- Dependencies: 1154 6
-- Name: nvl(inet, inet); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(inet, inet) RETURNS inet
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 36 (class 1255 OID 82563)
-- Dependencies: 1154 6
-- Name: nvl(integer, integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(integer, integer) RETURNS integer
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 37 (class 1255 OID 82564)
-- Dependencies: 1154 6
-- Name: nvl(interval, interval); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(interval, interval) RETURNS interval
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 38 (class 1255 OID 82565)
-- Dependencies: 1154 6
-- Name: nvl(line, line); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(line, line) RETURNS line
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 39 (class 1255 OID 82566)
-- Dependencies: 1154 6
-- Name: nvl(lseg, lseg); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(lseg, lseg) RETURNS lseg
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 40 (class 1255 OID 82567)
-- Dependencies: 1154 6
-- Name: nvl(macaddr, macaddr); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(macaddr, macaddr) RETURNS macaddr
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 41 (class 1255 OID 82568)
-- Dependencies: 1154 6
-- Name: nvl(money, money); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(money, money) RETURNS money
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 42 (class 1255 OID 82569)
-- Dependencies: 1154 6
-- Name: nvl(numeric, numeric); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(numeric, numeric) RETURNS numeric
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 43 (class 1255 OID 82570)
-- Dependencies: 1154 6
-- Name: nvl(path, path); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(path, path) RETURNS path
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 44 (class 1255 OID 82571)
-- Dependencies: 1154 6
-- Name: nvl(point, point); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(point, point) RETURNS point
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 45 (class 1255 OID 82572)
-- Dependencies: 1154 6
-- Name: nvl(polygon, polygon); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(polygon, polygon) RETURNS polygon
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 46 (class 1255 OID 82573)
-- Dependencies: 1154 6
-- Name: nvl(real, real); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(real, real) RETURNS real
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 47 (class 1255 OID 82574)
-- Dependencies: 1154 6
-- Name: nvl(smallint, smallint); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(smallint, smallint) RETURNS smallint
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 48 (class 1255 OID 82575)
-- Dependencies: 1154 6
-- Name: nvl(text, text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(text, text) RETURNS text
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 49 (class 1255 OID 82576)
-- Dependencies: 1154 6
-- Name: nvl(time without time zone, time without time zone); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(time without time zone, time without time zone) RETURNS time without time zone
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


--
-- TOC entry 50 (class 1255 OID 82577)
-- Dependencies: 1154 6
-- Name: nvl(timestamp without time zone, timestamp without time zone); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nvl(timestamp without time zone, timestamp without time zone) RETURNS timestamp without time zone
    LANGUAGE plpgsql
    AS 'DECLARE 
		ENTRADA ALIAS FOR $1;
		ALTERNATIVA ALIAS FOR $2; 
	BEGIN 
		if (ENTRADA isnull) then return ALTERNATIVA;  
		else return ENTRADA; 
	end if; 
END';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 2341 (class 1259 OID 82578)
-- Dependencies: 6
-- Name: ad_abastecimento; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_abastecimento (
    idabastecimento integer NOT NULL,
    posto character varying(50),
    enderecoposto character varying(50),
    cidadeposto character varying(50),
    datahoraabastecimento timestamp with time zone,
    valorabastecimento numeric(8,2),
    quantidade numeric(4,2),
    combustivel character(1)
);


--
-- TOC entry 2342 (class 1259 OID 82581)
-- Dependencies: 6
-- Name: ad_abastecimentorequisicao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_abastecimentorequisicao (
    idabastecimento integer NOT NULL,
    idrequisicao integer NOT NULL
);


--
-- TOC entry 2343 (class 1259 OID 82584)
-- Dependencies: 6
-- Name: ad_acessobolsa; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_acessobolsa (
    idusuario integer NOT NULL,
    idbolsa numeric(9,0) NOT NULL
);


--
-- TOC entry 2344 (class 1259 OID 82587)
-- Dependencies: 6
-- Name: ad_acessouoreq; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_acessouoreq (
    idusuario integer NOT NULL,
    iduo numeric(9,0) NOT NULL
);


--
-- TOC entry 2345 (class 1259 OID 82590)
-- Dependencies: 6
-- Name: ad_andamento; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_andamento (
    numpro character varying(12) NOT NULL,
    numanda numeric(9,0) NOT NULL,
    stampentr character varying(12),
    stampsai character varying(12),
    stampdesp character varying(12),
    inativo character varying(1),
    setor character varying(15),
    setordest character varying(15),
    despacho character varying(400),
    autor character varying(40)
);


--
-- TOC entry 2346 (class 1259 OID 82596)
-- Dependencies: 6
-- Name: ad_anulacaoitem; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_anulacaoitem (
    idanulacaoitem numeric NOT NULL,
    idlicitacao numeric,
    item numeric,
    data date,
    quantidadeanulada numeric,
    valorunitanulado numeric
);


--
-- TOC entry 2347 (class 1259 OID 82602)
-- Dependencies: 6
-- Name: ad_bolsa; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_bolsa (
    idbolsa numeric(9,0) NOT NULL,
    descricao character varying(30),
    acumulavel character varying(1),
    paga character varying(1),
    fontepag character varying(40)
);


--
-- TOC entry 2348 (class 1259 OID 82605)
-- Dependencies: 6
-- Name: ad_bolsista; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_bolsista (
    idbolsista numeric(5,0) NOT NULL,
    datainclusao character varying(10),
    dataexclusao character varying(10),
    horasprevistas numeric(5,0),
    dataalt character varying(10),
    idbolsa numeric(9,0),
    idpessoa integer
);


--
-- TOC entry 2349 (class 1259 OID 82608)
-- Dependencies: 6
-- Name: ad_catmat; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_catmat (
    codmaterial numeric(14,0) NOT NULL,
    nomematerial character varying(80),
    grupomaterial numeric(4,0),
    nomegrupomaterial character varying(80),
    classematerial numeric(5,0),
    nomeclassematerial character varying(80)
);


--
-- TOC entry 2350 (class 1259 OID 82611)
-- Dependencies: 6
-- Name: ad_classificador; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_classificador (
    idclassificador character varying(12) NOT NULL,
    descricao character varying(50)
);


--
-- TOC entry 2351 (class 1259 OID 82614)
-- Dependencies: 6
-- Name: ad_contrato; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_contrato (
    idcontrato numeric(9,0) NOT NULL,
    numcontrato character varying(12),
    datainicio date,
    datafim date,
    objeto character varying(200),
    obs character varying(500),
    situacao character varying(1),
    idcontratopai numeric(9,0)
);


--
-- TOC entry 2352 (class 1259 OID 82620)
-- Dependencies: 6
-- Name: ad_controle; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_controle (
    travapag character varying(1),
    anoref numeric(4,0)
);


--
-- TOC entry 2353 (class 1259 OID 82623)
-- Dependencies: 6
-- Name: ad_controleprot; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_controleprot (
    anopro numeric(4,0) NOT NULL,
    lastnumproc numeric(6,0),
    lastnumprot numeric(6,0),
    uasg character varying(6) NOT NULL
);


--
-- TOC entry 2354 (class 1259 OID 82626)
-- Dependencies: 6
-- Name: ad_dependencia; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_dependencia (
    iddependencia numeric(5,0) NOT NULL,
    idsetor numeric(9,0),
    dependencia character varying(50)
);


--
-- TOC entry 2355 (class 1259 OID 82629)
-- Dependencies: 6
-- Name: ad_diaria; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_diaria (
    categoriadiaria character varying(1) NOT NULL,
    categoriafunc character varying(3) NOT NULL,
    diaria numeric(9,2),
    meiadiaria numeric(9,2),
    dataini date NOT NULL,
    datafim date
);


--
-- TOC entry 2356 (class 1259 OID 82632)
-- Dependencies: 6
-- Name: ad_elemento; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_elemento (
    idelemento numeric(6,0) NOT NULL,
    descricao character varying(60)
);


--
-- TOC entry 2357 (class 1259 OID 82635)
-- Dependencies: 6
-- Name: ad_empenhado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_empenhado (
    idempenhado numeric(9,0) NOT NULL,
    valoremp numeric(12,2),
    quantidadeemp numeric(8,2),
    idempenho numeric(9,0) NOT NULL,
    idlicitacao numeric(9,0) NOT NULL,
    item numeric(9,0) NOT NULL,
    dataorcamento date,
    status character varying(1),
    idorcamento numeric(9,0) NOT NULL,
    valoranulado numeric(12,2),
    dataanulacao date,
    motivoanulacao character varying(100),
    numeroanulacao character varying(10),
    quantidadeanulada numeric(9,0)
);


--
-- TOC entry 2358 (class 1259 OID 82638)
-- Dependencies: 2357 6
-- Name: ad_empenhado_numeroanulacao_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ad_empenhado_numeroanulacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 4315 (class 0 OID 0)
-- Dependencies: 2358
-- Name: ad_empenhado_numeroanulacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ad_empenhado_numeroanulacao_seq OWNED BY ad_empenhado.numeroanulacao;


--
-- TOC entry 2359 (class 1259 OID 82640)
-- Dependencies: 6
-- Name: ad_empenhadodist; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_empenhadodist (
    idempenhado numeric(9,0) NOT NULL,
    idrequisicao numeric(9,0) NOT NULL,
    valorunitario numeric(12,2),
    quantidade numeric(8,2)
);


--
-- TOC entry 2360 (class 1259 OID 82643)
-- Dependencies: 6
-- Name: ad_empenho; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_empenho (
    idempenho numeric(9,0) NOT NULL,
    numero character varying(12),
    dataempenho date,
    tipoempenho character varying(2),
    tipoentrega character varying(1),
    idfornecedor numeric(9,0),
    status character varying(1),
    dataanulacao date,
    motivoanulacao character varying(1),
    modalidadeemp character varying(1),
    idempenhoref numeric(9,0),
    numpro character varying(12),
    obs character varying(200),
    iduo numeric(9,0),
    ug character varying
);


--
-- TOC entry 2361 (class 1259 OID 82649)
-- Dependencies: 6
-- Name: ad_empresamanutencaoveiculo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_empresamanutencaoveiculo (
    idempresa integer NOT NULL,
    cnpj character(18),
    nome character varying(50),
    razaosocial character varying(50),
    rua character varying(40),
    numero character(5),
    bairro character varying(50),
    cep character(9),
    telefone character varying(10),
    idmunicipio character varying(5) NOT NULL
);


--
-- TOC entry 2362 (class 1259 OID 82652)
-- Dependencies: 6
-- Name: ad_empresapassagem; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_empresapassagem (
    idempresapassagem numeric(9,0) NOT NULL,
    nome character varying(30),
    ativo character varying(1)
);


--
-- TOC entry 2363 (class 1259 OID 82655)
-- Dependencies: 6
-- Name: ad_estoque; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_estoque (
    idmaterial numeric(9,0) NOT NULL,
    estoquemin numeric(6,0),
    estoque numeric(6,0),
    valortotal numeric(14,4),
    localizacao character varying(50),
    iduo numeric(9,0) NOT NULL
);


--
-- TOC entry 2364 (class 1259 OID 82658)
-- Dependencies: 6
-- Name: ad_executa; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_executa (
    idtiporeq numeric(5,0) NOT NULL,
    iduo numeric(9,0) NOT NULL,
    idrubrica character varying(20),
    ano numeric(4,0) NOT NULL
);


--
-- TOC entry 2365 (class 1259 OID 82661)
-- Dependencies: 6
-- Name: ad_executor; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_executor (
    iduo numeric(9,0) NOT NULL,
    idusuario integer NOT NULL,
    datainicio date NOT NULL,
    datafim date
);


--
-- TOC entry 2366 (class 1259 OID 82664)
-- Dependencies: 6
-- Name: ad_executoralmox; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_executoralmox (
    idexecutoralmox numeric(5,0) NOT NULL,
    iduorequisitante numeric(9,0) NOT NULL,
    iduoexecutante numeric(9,0) NOT NULL
);


--
-- TOC entry 2367 (class 1259 OID 82667)
-- Dependencies: 6
-- Name: ad_executorservint; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_executorservint (
    idexecutorservint numeric(9,0) NOT NULL,
    idtiposervint numeric(5,0),
    idusuario integer,
    datainicio date,
    datafim date
);


--
-- TOC entry 2368 (class 1259 OID 82670)
-- Dependencies: 6
-- Name: ad_fonte; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_fonte (
    idfonte character varying(10) NOT NULL,
    descricao character varying(50),
    fontecompleta character varying(10),
    fonteresumida character varying(3)
);


--
-- TOC entry 2369 (class 1259 OID 82673)
-- Dependencies: 6
-- Name: ad_fornecedor; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_fornecedor (
    idfornecedor numeric(9,0) NOT NULL,
    contacorrente character varying(10),
    idinstituicao numeric(9,0),
    idpessoa integer,
    idbanco numeric(4,0),
    idagenc character varying(7)
);


--
-- TOC entry 2370 (class 1259 OID 82676)
-- Dependencies: 6
-- Name: ad_fpotencial; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_fpotencial (
    idmaterial numeric(9,0) NOT NULL,
    idfornecedor numeric(9,0) NOT NULL
);


--
-- TOC entry 2371 (class 1259 OID 82679)
-- Dependencies: 6
-- Name: ad_funcionarioresp; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_funcionarioresp (
    idfunc character varying(9) NOT NULL,
    idsetor numeric(9,0) NOT NULL,
    dataini date NOT NULL,
    datafim date
);


--
-- TOC entry 2372 (class 1259 OID 82682)
-- Dependencies: 6
-- Name: ad_gestor; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_gestor (
    iduo numeric(9,0) NOT NULL,
    idusuario integer NOT NULL,
    datainicio date NOT NULL,
    datafim date
);


--
-- TOC entry 2373 (class 1259 OID 82685)
-- Dependencies: 6
-- Name: ad_hotel; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_hotel (
    idhotel numeric(5,0) NOT NULL,
    nome character varying(30),
    ativo character varying(1) NOT NULL,
    valordiaria numeric(10,2)
);


--
-- TOC entry 2374 (class 1259 OID 82688)
-- Dependencies: 6
-- Name: ad_itemlicitacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemlicitacao (
    idlicitacao numeric(9,0) NOT NULL,
    item numeric(9,0) NOT NULL,
    valor numeric(12,2),
    justificativa character varying(200),
    excecao character varying(1),
    quantidadelicitada numeric(9,0)
);


--
-- TOC entry 2375 (class 1259 OID 82691)
-- Dependencies: 6
-- Name: ad_itemnota; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemnota (
    iditemnota numeric(9,0) NOT NULL,
    idempenhado numeric(9,0),
    idnotafiscal integer,
    quantitemnota numeric(8,2),
    valoritemnota numeric(12,2)
);


--
-- TOC entry 2376 (class 1259 OID 82694)
-- Dependencies: 6
-- Name: ad_itempatrimo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itempatrimo (
    idpatrimo numeric(9,0) NOT NULL,
    descricaoad character varying(60),
    datapatrimo date,
    empenho numeric(9,0),
    tipoingresso character varying(1),
    tipoutilizacao character varying(1),
    estadoitem character varying(1),
    idmaterial numeric(9,0),
    idsetor numeric(9,0) NOT NULL
);


--
-- TOC entry 2377 (class 1259 OID 82697)
-- Dependencies: 6
-- Name: ad_itempatrimonio; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itempatrimonio (
    iditempatrimonio numeric(9,0) NOT NULL,
    descricao character varying(1000),
    tipoingresso character varying(1),
    dataaquisicao date,
    marcamodelo character varying(50),
    valor numeric(12,2),
    notafiscal character varying(16),
    subelemento numeric(2,0),
    idmaterial numeric(9,0),
    idempenhado numeric(9,0),
    idclassificador character varying(12),
    numpro character varying(12),
    ativo character varying(1),
    iddependencia numeric(5,0),
    idsetor numeric(9,0) NOT NULL,
    numeroserie character varying(15),
    numeroempenho character varying(12),
    descricaoestado character varying(100),
    idvidautil numeric(11,0),
    datainiciouso date
);


--
-- TOC entry 2378 (class 1259 OID 82703)
-- Dependencies: 6
-- Name: ad_itemreq; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemreq (
    idrequisicao numeric(9,0) NOT NULL,
    idmaterial numeric(9,0) NOT NULL,
    quantpedida numeric(8,2),
    precoestimado numeric(12,2),
    quantautorizada numeric(8,2),
    status character varying(1),
    idlicitacao numeric(9,0),
    item numeric(9,0),
    prioridade character varying(1),
    descricaodetalhada character varying(500),
    valorreal numeric(12,2),
    motivorejeicao character varying(255),
    quantentregue numeric(8,2),
    quantempenhada numeric(9,0),
    quantdevolvida numeric(9,0)
);


--
-- TOC entry 2379 (class 1259 OID 82709)
-- Dependencies: 6
-- Name: ad_itemreqbib; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemreqbib (
    idrequisicao numeric(9,0) NOT NULL,
    idmaterial numeric(9,0) NOT NULL,
    quantpedida numeric(8,2),
    precoestimado numeric(12,2),
    status character varying(1),
    idlicitacao numeric(9,0),
    item numeric(9,0),
    valorreal numeric(12,2),
    motivorejeicao character varying(255),
    quantentregue numeric(8,2),
    quantempenhada numeric(9,0),
    quantdevolvida numeric(9,0),
    titulo character varying(350),
    autor character varying(200),
    edicao character varying(30),
    localpublicacao character varying(200),
    editora character varying(120),
    datapublicacao character varying(30),
    subtitulo character varying(250),
    descfisica character varying(80),
    volume character varying(15)
);


--
-- TOC entry 2380 (class 1259 OID 82715)
-- Dependencies: 6
-- Name: ad_itemreqdiaria; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemreqdiaria (
    idrequisicao numeric(9,0) NOT NULL,
    idvinculo character varying(7) NOT NULL,
    categoriafunc character varying(3),
    situacaofunc character varying(1),
    motivo character varying(200),
    datasaida date,
    dataretorno date,
    meiotransportediaria character varying(1),
    justdianaoutil character varying(200),
    valorest numeric(10,2),
    valorreal numeric(10,2),
    ocorrencias character varying(200),
    conceito character varying(1),
    obs character varying(200),
    ordembancaria character varying(16),
    dataordembancaria date,
    diariasconcedidas numeric(10,2),
    tiporeqdiaria character varying(1),
    idrequisicaooriginal numeric(9,0),
    idvinculoprop character varying(7),
    idvinculochefe character varying(7),
    numpro character varying(12),
    passagemaerea character varying(1),
    bilhete character varying(20),
    idrequisicaoveiculo numeric(9,0),
    nacional character varying(1)
);


--
-- TOC entry 2381 (class 1259 OID 82721)
-- Dependencies: 6
-- Name: ad_itemreqhotel; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemreqhotel (
    idrequisicao numeric(9,0) NOT NULL,
    idpessoa integer NOT NULL,
    motivo character varying(200),
    datahoraentprev date,
    datahorasaidaprev date,
    numerodiaria numeric(2,1),
    valorest numeric(10,2),
    datahoraent date,
    datahorasaida date,
    notafiscal character varying(16),
    datanotafiscal date,
    valorreal numeric(10,2),
    ocorrencias character varying(200),
    conceito character varying(1),
    obs character varying(200),
    idempenho numeric(9,0),
    idhotelpref numeric(5,0),
    informacoes character varying(200)
);


--
-- TOC entry 2382 (class 1259 OID 82727)
-- Dependencies: 6
-- Name: ad_itemreqpassagem; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemreqpassagem (
    idrequisicao numeric(9,0) NOT NULL,
    idpessoa integer NOT NULL,
    tipotransporte character varying(1),
    motivo character varying(200),
    valorest numeric(10,2),
    bilhete character varying(20),
    notafiscal character varying(16),
    datanotafiscal date,
    valorreal numeric(10,2),
    ocorrencias character varying(200),
    conceito character varying(1),
    obs character varying(200),
    idempenho numeric(9,0),
    idmunicipioorigem character varying(5) NOT NULL,
    idmunicipiodestino character varying(5) NOT NULL,
    datahorapassagem date,
    classe character varying(1),
    idempresapassagem numeric(9,0),
    email character varying(100),
    codigolocalizador character varying(10)
);


--
-- TOC entry 2383 (class 1259 OID 82733)
-- Dependencies: 6
-- Name: ad_itemreqrestaurante; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemreqrestaurante (
    idrequisicao numeric(9,0) NOT NULL,
    idpessoa integer NOT NULL,
    motivo character varying(200),
    valorest numeric(10,2),
    notafiscal character varying(200),
    datanotafiscal date,
    valorreal numeric(10,2),
    ocorrencias character varying(200),
    conceito character varying(1),
    obs character varying(200),
    idempenho numeric(9,0),
    idpessoaacompanhante integer,
    idrestaurantepref numeric(5,0),
    datainicio date,
    datafim date,
    numeroalmocos numeric(5,0),
    numerojantares numeric(5,0)
);


--
-- TOC entry 2384 (class 1259 OID 82739)
-- Dependencies: 6
-- Name: ad_itemreqservext; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemreqservext (
    idrequisicao numeric(9,0) NOT NULL,
    idservico numeric(9,0) NOT NULL,
    complemento character varying(1500),
    quantidade numeric(8,2),
    valorest numeric(12,2),
    valorreal numeric(12,2),
    idlicitacao numeric(9,0),
    item numeric(9,0),
    prioridade character varying(1),
    status character varying(1),
    unidade character varying(10),
    descricaodetalhada character varying(500),
    quantempenhada numeric(9,0),
    quantentregue numeric(9,2),
    quantdevolvida numeric(9,0)
);


--
-- TOC entry 2385 (class 1259 OID 82745)
-- Dependencies: 6
-- Name: ad_itemreqservint; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemreqservint (
    idrequisicao numeric(9,0) NOT NULL,
    idtiposervint numeric(5,0) NOT NULL,
    procedimento character varying(400),
    quantidade numeric(9,0),
    unidade character varying(12),
    urgente character varying(1),
    motivourgencia character varying(200),
    dataprevisao date,
    dataconclusao date,
    valorreal numeric(12,2),
    ocorrencias character varying(200),
    conceito character varying(1),
    obs character varying(200)
);


--
-- TOC entry 2386 (class 1259 OID 82751)
-- Dependencies: 6
-- Name: ad_itemreqservpf; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemreqservpf (
    idrequisicao numeric(9,0) NOT NULL,
    idpessoa integer NOT NULL,
    descricaoservico character varying(200),
    valorreal numeric(10,2),
    irrf numeric(10,2),
    inssprestador numeric(10,2),
    insscontratante numeric(10,2),
    datapagamento date,
    ocorrencias character varying(200),
    conceito character varying(1),
    obs character varying(200),
    idempenho numeric(9,0)
);


--
-- TOC entry 2387 (class 1259 OID 82757)
-- Dependencies: 6
-- Name: ad_itemreqveiculo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemreqveiculo (
    idrequisicao numeric(9,0) NOT NULL,
    idpessoa integer NOT NULL,
    tipotransporte numeric(1,0),
    enderecoorig character varying(200),
    bairroorig character varying(50),
    ceporig character varying(8),
    referenciaorig character varying(150),
    datahorasaidaorig timestamp with time zone,
    enderecodest character varying(200),
    bairrodest character varying(50),
    cepdest character varying(8),
    referenciadest character varying(150),
    prevdatahorachegdest timestamp with time zone,
    justificativa character varying(500),
    quilometragemest numeric(9,0),
    valorest numeric(10,2),
    datahoraautexec timestamp with time zone,
    datahorasaidagar timestamp with time zone,
    datahoracheggar timestamp with time zone,
    odometrosaida numeric(9,0),
    odometrocheg numeric(9,0),
    valorreal numeric(10,2),
    ocorrencias character varying(200),
    conceito character varying(1),
    obs character varying(500),
    placa character varying(7),
    idmotorista numeric(6,0),
    idmunicipiodestino character varying(5) NOT NULL,
    idmunicipioorigem character varying(5) NOT NULL,
    tipoveiculo numeric(1,0),
    prevdatahoraretorno timestamp with time zone,
    outrospassageiros character varying(500)
);


--
-- TOC entry 2388 (class 1259 OID 82763)
-- Dependencies: 6
-- Name: ad_itemreqxerox; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_itemreqxerox (
    idrequisicao numeric(9,0) NOT NULL,
    disciplina character varying,
    tipomaterial character varying,
    numoriginais numeric(9,0),
    numcopiaspororiginal numeric(9,0),
    valorxerox numeric(6,2),
    localentrega character varying,
    totalparcial numeric(6,2)
);


--
-- TOC entry 2389 (class 1259 OID 82769)
-- Dependencies: 6
-- Name: ad_lancamentoint; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_lancamentoint (
    idlancamentoint numeric(9,0) NOT NULL,
    tipolancamento character varying(1),
    ano numeric(4,0),
    data date,
    valor numeric(18,2),
    obs character varying(200),
    iduoreq numeric(9,0),
    iduoexec numeric(9,0),
    idrubrica character varying(20),
    idrequisicao numeric(9,0),
    idusuario integer,
    idlicitacao numeric(9,0),
    item numeric(9,0)
);


--
-- TOC entry 2390 (class 1259 OID 82772)
-- Dependencies: 6
-- Name: ad_lancamentoint_idlicitacao_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ad_lancamentoint_idlicitacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2391 (class 1259 OID 82774)
-- Dependencies: 6
-- Name: ad_licitacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_licitacao (
    idlicitacao numeric(9,0) NOT NULL,
    numero character varying(15),
    dataabertura timestamp without time zone,
    datacriacao timestamp without time zone,
    status character varying(1),
    pregao character varying(1),
    numpro character varying(12),
    idmodalidadelicitacao numeric(4,0),
    imediato character varying(1),
    datahomologacao timestamp without time zone,
    idtipolicitacao character varying(1),
    obs character varying(1000),
    validade character varying(20),
    tipoentrega character varying(1)
);


--
-- TOC entry 2392 (class 1259 OID 82780)
-- Dependencies: 6
-- Name: ad_liquidacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_liquidacao (
    idliquidacao numeric(9,0) NOT NULL,
    dataliquidacao date,
    valor numeric(12,2),
    obs character varying(200),
    pago character varying(1),
    valorirrf numeric(12,2),
    valorinss numeric(12,2),
    valoriss numeric(12,2)
);


--
-- TOC entry 2393 (class 1259 OID 82783)
-- Dependencies: 6
-- Name: ad_localidadediaria; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_localidadediaria (
    idlocalidadediaria numeric(6,0) NOT NULL,
    quantdiarias numeric(5,1),
    idmunicipio character varying(5) NOT NULL,
    idrequisicao numeric(9,0) NOT NULL,
    idvinculo character varying(7) NOT NULL
);


--
-- TOC entry 2394 (class 1259 OID 82786)
-- Dependencies: 6
-- Name: ad_manutencaoveiculo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_manutencaoveiculo (
    idmanutencao integer NOT NULL,
    idtipomanutencao integer NOT NULL,
    idnotafiscal integer NOT NULL,
    valor numeric(8,2),
    obs character varying(500)
);


--
-- TOC entry 2395 (class 1259 OID 82792)
-- Dependencies: 6
-- Name: ad_mapalicitacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_mapalicitacao (
    idlicitacao numeric(9,0) NOT NULL,
    item numeric(9,0) NOT NULL,
    preco numeric(11,2),
    vencedor character varying(1),
    quantidade numeric(9,2),
    importado character varying(1),
    status character varying(1),
    idfornecedor numeric(9,0) NOT NULL,
    marcamodelo character varying(50)
);


--
-- TOC entry 2396 (class 1259 OID 82795)
-- Dependencies: 6
-- Name: ad_material; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_material (
    idmaterial numeric(9,0) NOT NULL,
    descricao character varying(810),
    unidade character varying(10),
    permcons character varying(1),
    estocavel character varying(1),
    idelemento numeric(6,0),
    idsubelemento numeric(2,0),
    ativo character varying(1),
    codmaterial numeric(14,0),
    precoestimado numeric(12,2),
    descresum character varying(200)
);


--
-- TOC entry 2397 (class 1259 OID 82801)
-- Dependencies: 6
-- Name: ad_modalidadelicitacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_modalidadelicitacao (
    idmodalidadelicitacao numeric(4,0) NOT NULL,
    descricao character varying(30),
    valorinicial numeric(12,2),
    valorfinal numeric(12,2)
);


--
-- TOC entry 2398 (class 1259 OID 82804)
-- Dependencies: 6
-- Name: ad_motorista; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_motorista (
    idmotorista numeric(6,0) NOT NULL,
    carteirahab character varying(15),
    datavalidade date,
    categoria character varying(2),
    ativo character varying(1),
    idpessoa integer NOT NULL
);


--
-- TOC entry 2399 (class 1259 OID 82807)
-- Dependencies: 6
-- Name: ad_movimento; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_movimento (
    idmovimento numeric(9,0) NOT NULL,
    tipomovimento character varying(1),
    datamov date,
    quantidade numeric(9,2),
    valortotal numeric(12,2),
    idordement numeric(9,0),
    idrequisicao numeric(9,0),
    idmaterial numeric(9,0),
    iditemnota numeric(9,0),
    idmovimentoref numeric(9,0),
    iduoalmox numeric(9,0)
);


--
-- TOC entry 2400 (class 1259 OID 82810)
-- Dependencies: 6
-- Name: ad_movimentopat; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_movimentopat (
    idmovimentacao numeric(9,0) NOT NULL,
    tipomovimento character varying(1),
    motivobaixa character varying(1),
    numerotermo character varying(10),
    iditempatrimonio numeric(9,0) NOT NULL,
    idsetororigem numeric(9,0) NOT NULL,
    idsetordestino numeric(9,0) NOT NULL,
    data date,
    iddependenciaorigem numeric(5,0),
    iddependenciadestino numeric(5,0),
    numeroprocesso character varying(12)
);


--
-- TOC entry 2401 (class 1259 OID 82813)
-- Dependencies: 3072 3073 6
-- Name: ad_movimentoserv; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_movimentoserv (
    idmovimentoserv numeric(9,0) NOT NULL,
    tipomovimento character varying(20),
    datamov date,
    quantidade numeric(9,0) DEFAULT 0,
    valortotal numeric(12,0) DEFAULT 0,
    idrequisicao numeric(9,0),
    iditemnota numeric(9,0),
    idmovimentoservref numeric(9,0)
);


--
-- TOC entry 2402 (class 1259 OID 82818)
-- Dependencies: 6
-- Name: ad_notafiscal; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_notafiscal (
    idnotafiscal integer NOT NULL,
    notafiscal character varying(16),
    datanotafiscal date,
    valor numeric(12,2),
    idliquidacao numeric(9,0),
    idempenho numeric(9,0),
    dataateste date,
    obs character varying(200),
    valordesconto numeric(12,2)
);


--
-- TOC entry 2403 (class 1259 OID 82821)
-- Dependencies: 6
-- Name: ad_notafiscalmanutencaoveiculo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_notafiscalmanutencaoveiculo (
    idnotafiscal integer NOT NULL,
    placa character(7) NOT NULL,
    idempresa integer NOT NULL,
    idprevrevisao integer,
    data_manutencao date,
    valortotal numeric(8,2)
);


--
-- TOC entry 2404 (class 1259 OID 82824)
-- Dependencies: 6
-- Name: ad_novomaterial; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_novomaterial (
    idnovomaterial numeric(5,0) NOT NULL,
    descricao character varying(500),
    iduoreq numeric(9,0),
    status character varying(1),
    codmaterial numeric(14,0),
    idusuario integer,
    aplicacao character varying(200),
    descricaodetalhada character varying(500),
    telefone character varying(20),
    datapedido date,
    ativo character varying(1),
    precoestimado numeric(12,2)
);


--
-- TOC entry 2405 (class 1259 OID 82830)
-- Dependencies: 6
-- Name: ad_orcamento; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_orcamento (
    idorcamento numeric(9,0) NOT NULL,
    ano numeric(4,0) NOT NULL,
    dotacao numeric(20,2),
    suplementacao numeric(20,2),
    bloqueio numeric(20,2),
    anulacao numeric(20,2),
    pago numeric(20,2),
    idptr character varying(7) NOT NULL,
    idfonte character varying(10) NOT NULL,
    idrubrica character varying(20) NOT NULL,
    esfera character varying(1),
    ug character varying
);


--
-- TOC entry 2406 (class 1259 OID 82836)
-- Dependencies: 6
-- Name: ad_orcamentohist; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_orcamentohist (
    idorcamento numeric(9,0) NOT NULL,
    data date NOT NULL,
    tipoorc character varying(1) NOT NULL,
    valor numeric(18,2)
);


--
-- TOC entry 2407 (class 1259 OID 82839)
-- Dependencies: 6
-- Name: ad_orcamentointerno; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_orcamentointerno (
    iduo numeric(9,0) NOT NULL,
    idrubrica character varying(20) NOT NULL,
    ano numeric(4,0) NOT NULL,
    credito numeric(18,2),
    debito numeric(18,2),
    previsaodebito numeric(18,2),
    creditoexecutante numeric(18,2)
);


--
-- TOC entry 2408 (class 1259 OID 82842)
-- Dependencies: 3074 6
-- Name: ad_orcamentotermo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_orcamentotermo (
    idlicitacao numeric(9,0) NOT NULL,
    item numeric(9,0) NOT NULL,
    idinstituicao numeric(9,0),
    iduser numeric(9,0),
    empresa1 character varying(30),
    orcamento1 numeric(12,2),
    empresa2 character varying(30),
    orcamento2 numeric(12,2),
    empresa3 character varying(30),
    orcamento3 numeric(12,2),
    termoref text,
    itemdef numeric(9,0),
    datalimite date DEFAULT '0001-01-01'::date,
    status character varying(1)
);


--
-- TOC entry 2409 (class 1259 OID 82849)
-- Dependencies: 6
-- Name: ad_orcinttemp; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_orcinttemp (
    iduo numeric(9,0) NOT NULL,
    idrubrica character varying(20) NOT NULL,
    ano numeric(4,0) NOT NULL,
    credito numeric(18,2),
    debito numeric(18,2),
    previsaodebito numeric(18,2),
    creditoexecutante numeric(18,2)
);


--
-- TOC entry 2410 (class 1259 OID 82852)
-- Dependencies: 3075 6
-- Name: ad_orctermo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_orctermo (
    idlicitacao numeric(9,0) NOT NULL,
    item numeric(9,0) NOT NULL,
    numpro character varying(12),
    idmaterial numeric(9,0),
    descricao character varying(500),
    quantpedida numeric(9,0),
    precoestimado numeric(12,2),
    campus character varying(30),
    empresa1 character varying(30),
    orcamento1 numeric(12,2),
    orcamento2 numeric(12,2),
    empresa3 character varying(30),
    orcamento3 numeric(12,2),
    empresa2 character varying(30),
    valortotal numeric(12,2),
    termoref character varying(8000),
    processo numeric(6,0),
    iduser numeric(9,0),
    itemdef numeric(9,0),
    itemold numeric(9,0),
    datalimite date DEFAULT '0001-01-01'::date
);


--
-- TOC entry 2411 (class 1259 OID 82859)
-- Dependencies: 6
-- Name: ad_ordembancaria; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_ordembancaria (
    idordembancaria numeric(9,0) NOT NULL,
    numeroordembancaria character varying(16),
    dataordembancaria date,
    valor numeric(12,2),
    idliquidacao numeric(9,0) NOT NULL,
    darf character varying(12),
    gps character varying(12),
    datagps date
);


--
-- TOC entry 2412 (class 1259 OID 82862)
-- Dependencies: 6
-- Name: ad_ordentrega; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_ordentrega (
    idordement numeric(9,0) NOT NULL,
    dataordent date,
    numeroordem numeric(9,0),
    iduoexec numeric(9,0),
    impresso character varying(1)
);


--
-- TOC entry 2413 (class 1259 OID 82865)
-- Dependencies: 6
-- Name: ad_pagbolsa; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_pagbolsa (
    idbolsista numeric(5,0) NOT NULL,
    mesano character varying(7) NOT NULL,
    valor numeric(15,2),
    horastrabalhadas numeric(5,0),
    folha numeric(5,0) NOT NULL
);


--
-- TOC entry 2414 (class 1259 OID 82868)
-- Dependencies: 6
-- Name: ad_paiempenho; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_paiempenho (
    idempenhopai numeric(9,0) NOT NULL,
    idempenho numeric(9,0) NOT NULL,
    tipofilho character varying(1)
);


--
-- TOC entry 2415 (class 1259 OID 82871)
-- Dependencies: 6
-- Name: ad_participante; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_participante (
    idlicitacao numeric(9,0) NOT NULL,
    idfornecedor numeric(9,0) NOT NULL
);


--
-- TOC entry 2416 (class 1259 OID 82874)
-- Dependencies: 6
-- Name: ad_prevrevisao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_prevrevisao (
    idprevrevisao integer NOT NULL,
    placa character(7) NOT NULL,
    data_prevista date,
    kmestimada numeric(8,2),
    situacao character(1),
    obs character varying(100)
);


--
-- TOC entry 2417 (class 1259 OID 82877)
-- Dependencies: 6
-- Name: ad_processo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_processo (
    numpro character varying(12) NOT NULL,
    stampaber character varying(12),
    instit numeric(9,0),
    cxarq character varying(7),
    setororig character varying(15),
    tipo character varying(1),
    interes character varying(80),
    titulo character varying(80),
    assunto character varying(240),
    publico character varying(1),
    emailinteres character varying(50)
);


--
-- TOC entry 2418 (class 1259 OID 82883)
-- Dependencies: 6
-- Name: ad_ptr; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_ptr (
    idptr character varying(7) NOT NULL,
    descricao character varying(100),
    progtrab character varying(17) NOT NULL,
    uorcamento character varying(5)
);


--
-- TOC entry 2419 (class 1259 OID 82886)
-- Dependencies: 6
-- Name: ad_reqrubrica; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_reqrubrica (
    idrubrica character varying(20) NOT NULL,
    idtiporeq numeric(5,0) NOT NULL
);


--
-- TOC entry 2420 (class 1259 OID 82889)
-- Dependencies: 6
-- Name: ad_requisicao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_requisicao (
    idrequisicao numeric(9,0) NOT NULL,
    datahorareq timestamp with time zone,
    datahoraautreq timestamp with time zone,
    tiporequisicao numeric(5,0),
    status character varying(1) NOT NULL,
    motivorejeicao character varying(200),
    iduoreq numeric(9,0) NOT NULL,
    iduoexec numeric(9,0) NOT NULL,
    idusuarioreq integer,
    conceito character varying(1),
    obs character varying(200),
    idusuariogestor integer,
    coditemfinanciavel character varying(2),
    localentrega character varying(100),
    datahoraexecucao timestamp with time zone,
    datahoraavaliacao timestamp with time zone,
    suplementar character varying(50),
    justificativa character varying(200),
    datahorareq2 timestamp with time zone
);


--
-- TOC entry 2421 (class 1259 OID 82895)
-- Dependencies: 6
-- Name: ad_requisita; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_requisita (
    idtiporeq numeric(5,0) NOT NULL,
    iduo numeric(9,0) NOT NULL,
    idrubrica character varying(20),
    ano numeric(4,0) NOT NULL,
    ativo character varying(1)
);


--
-- TOC entry 2422 (class 1259 OID 82898)
-- Dependencies: 6
-- Name: ad_restaurante; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_restaurante (
    idrestaurante numeric(5,0) NOT NULL,
    nome character varying(30),
    ativo character varying(1),
    valorrefeicao numeric(10,2)
);


--
-- TOC entry 2423 (class 1259 OID 82901)
-- Dependencies: 6
-- Name: ad_retencao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_retencao (
    numpro character varying(12) NOT NULL,
    setor character varying(15),
    setordest character varying(15),
    stampentr character varying(12),
    stampsai character varying(12),
    stampdesp character varying(12),
    inativo character varying(1),
    numanda numeric(9,0)
);


--
-- TOC entry 2424 (class 1259 OID 82904)
-- Dependencies: 6
-- Name: ad_rubrica; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_rubrica (
    idrubrica character varying(20) NOT NULL,
    descricao character varying(100)
);


--
-- TOC entry 2425 (class 1259 OID 82907)
-- Dependencies: 6
-- Name: ad_saldolic; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_saldolic (
    modalidadelic numeric(4,0),
    numerolic character varying(15) NOT NULL,
    item numeric(9,0) NOT NULL,
    idmaterial numeric(9,0),
    qtde numeric(8,2),
    valor numeric(12,2),
    idfornecedor numeric(9,0),
    descricaodetalhada character varying(500),
    idservico numeric(9,0),
    iduoreq numeric(9,0),
    autoria character varying(4)
);


--
-- TOC entry 2426 (class 1259 OID 82913)
-- Dependencies: 6
-- Name: ad_servico; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_servico (
    idservico numeric(9,0) NOT NULL,
    codservico numeric(9,0),
    descricao character varying(200),
    idelemento numeric(6,0),
    idsubelemento numeric(2,0),
    ativo character varying(1)
);


--
-- TOC entry 2427 (class 1259 OID 82916)
-- Dependencies: 6
-- Name: ad_setoracesso; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_setoracesso (
    setor character varying(15) NOT NULL,
    setorfilho character varying(15) NOT NULL
);


--
-- TOC entry 2428 (class 1259 OID 82919)
-- Dependencies: 6
-- Name: ad_solicitacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_solicitacao (
    idlicitacao numeric(9,0) NOT NULL,
    item numeric(9,0) NOT NULL,
    data date NOT NULL,
    quantidade numeric(8,2),
    status character varying(1),
    numero character varying(10)
);


--
-- TOC entry 2429 (class 1259 OID 82922)
-- Dependencies: 6
-- Name: ad_sompal; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_sompal (
    som character varying(4),
    numpro character varying(12)
);


--
-- TOC entry 2430 (class 1259 OID 82925)
-- Dependencies: 6
-- Name: ad_subelemento; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_subelemento (
    idelemento numeric(6,0) NOT NULL,
    idsubelemento numeric(2,0) NOT NULL,
    descricao character varying(100)
);


--
-- TOC entry 2431 (class 1259 OID 82928)
-- Dependencies: 6
-- Name: ad_suplementacaoitem; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_suplementacaoitem (
    idsuplementacaoitem numeric(9,0) NOT NULL,
    idlicitacao numeric(9,0) NOT NULL,
    item character varying(50),
    data date,
    quantidadesuplementar numeric(8,2),
    valorunitsuplementar numeric(12,2),
    idsuplementacaoitemref numeric(9,0),
    idrequisicao numeric(9,0) NOT NULL
);


--
-- TOC entry 2432 (class 1259 OID 82931)
-- Dependencies: 6
-- Name: ad_taxi; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_taxi (
    dataini date NOT NULL,
    datafim date NOT NULL,
    valor numeric(8,2)
);


--
-- TOC entry 2433 (class 1259 OID 82934)
-- Dependencies: 6
-- Name: ad_tipomanutencao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_tipomanutencao (
    idtipomanutencao integer NOT NULL,
    tipomanutencao character varying(30) NOT NULL
);


--
-- TOC entry 2434 (class 1259 OID 82937)
-- Dependencies: 6
-- Name: ad_tipoprot; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_tipoprot (
    idtipoprot numeric(5,0) NOT NULL,
    tipo character varying(60),
    diretor character varying(1),
    gerente character varying(1),
    coord character varying(1)
);


--
-- TOC entry 2435 (class 1259 OID 82940)
-- Dependencies: 6
-- Name: ad_tiporeq; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_tiporeq (
    idtiporeq numeric(5,0) NOT NULL,
    descricao character varying(30),
    idrubrica character varying(20)
);


--
-- TOC entry 2436 (class 1259 OID 82943)
-- Dependencies: 6
-- Name: ad_tiposervint; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_tiposervint (
    idtiposervint numeric(5,0) NOT NULL,
    descricao character varying(30),
    idrubrica character varying(20),
    iduoprestadora numeric(9,0)
);


--
-- TOC entry 2437 (class 1259 OID 82946)
-- Dependencies: 6
-- Name: ad_tipoveiculo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_tipoveiculo (
    tipoveiculo numeric(1,0) NOT NULL,
    descricao character varying(20),
    valorkm numeric(6,2),
    valorfixo numeric(8,2)
);


--
-- TOC entry 2438 (class 1259 OID 82949)
-- Dependencies: 6
-- Name: ad_trecho; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_trecho (
    idrequisicao numeric(9,0) NOT NULL,
    idpessoa integer NOT NULL,
    idtrecho numeric(9,0) NOT NULL,
    datahoraviagem date,
    origem character varying(50),
    destino character varying(50),
    codigoviagem character varying(20),
    situacao character varying(1)
);


--
-- TOC entry 2439 (class 1259 OID 82952)
-- Dependencies: 6
-- Name: ad_uo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_uo (
    iduo numeric(9,0) NOT NULL,
    sigla character varying(30),
    nome character varying(50),
    tipo character varying(1),
    documentoref character varying(200),
    idsetor numeric(9,0) NOT NULL,
    saldopublico character varying(1),
    ativo character varying(1)
);


--
-- TOC entry 2440 (class 1259 OID 82955)
-- Dependencies: 3076 3077 6
-- Name: cm_instituicao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_instituicao (
    idinstituicao numeric(9,0) NOT NULL,
    instituicao character varying(80),
    nome character varying(100),
    rua character varying(80),
    bairro character varying(50),
    cep character varying(8),
    telefone character varying(15),
    email character varying(50),
    fax character varying(15),
    cgc character varying(19),
    caixapostal character varying(15),
    idpais numeric(4,0) NOT NULL,
    idmunicipio character varying(5) NOT NULL,
    numero character varying(15),
    complemento character varying(15),
    mesmoif character varying(13) DEFAULT 'N'::character varying,
    sigla character varying(14),
    uasg character varying(6),
    campus character varying(50),
    status character varying(1) DEFAULT 'A'::bpchar NOT NULL,
    ug character varying(9)
);


--
-- TOC entry 4316 (class 0 OID 0)
-- Dependencies: 2440
-- Name: COLUMN cm_instituicao.mesmoif; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN cm_instituicao.mesmoif IS 'Identifica se a instituição pertence ao mesmo Instituto Federal';


--
-- TOC entry 4317 (class 0 OID 0)
-- Dependencies: 2440
-- Name: COLUMN cm_instituicao.sigla; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN cm_instituicao.sigla IS 'Sigla que irá identificar a instituição a qual o setor pertence';


--
-- TOC entry 4318 (class 0 OID 0)
-- Dependencies: 2440
-- Name: COLUMN cm_instituicao.uasg; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN cm_instituicao.uasg IS 'No. de identificação da Unidade Administrativa dos Serviços Gerais - UASG';


--
-- TOC entry 4319 (class 0 OID 0)
-- Dependencies: 2440
-- Name: COLUMN cm_instituicao.campus; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN cm_instituicao.campus IS 'Identifica o Estado e o campus da instituicao.';


--
-- TOC entry 2441 (class 1259 OID 82963)
-- Dependencies: 6
-- Name: cm_setor; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_setor (
    idsetor numeric(9,0) NOT NULL,
    siglasetor character varying(15) NOT NULL,
    dataini date NOT NULL,
    nomesetor character varying(100),
    tiposetor character varying(20),
    datafim date,
    fone character varying(15),
    fax character varying(15),
    centrocusto character varying(20),
    obs character varying(255),
    localizacao character varying(15),
    paisetor character varying(15),
    pairelat character varying(15),
    idsetorsiape character varying(7),
    idpaisetor numeric(9,0),
    codigo character varying(4),
    idinstituicao numeric(9,0),
    siglas character varying(3),
    siglai character varying(14),
    idresponsavel integer
);


--
-- TOC entry 4320 (class 0 OID 0)
-- Dependencies: 2441
-- Name: COLUMN cm_setor.idinstituicao; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN cm_setor.idinstituicao IS 'Vinculo com a instituição que contém este setor';


--
-- TOC entry 2442 (class 1259 OID 82969)
-- Dependencies: 2879 6
-- Name: ad_uo_campus; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW ad_uo_campus AS
    SELECT ad_uo.iduo, cm_instituicao.instituicao AS campus, cm_setor.idsetor AS setor_origem FROM ad_uo, cm_setor, cm_instituicao WHERE ((ad_uo.idsetor = cm_setor.idsetor) AND (cm_setor.idinstituicao = cm_instituicao.idinstituicao));


--
-- TOC entry 2443 (class 1259 OID 82973)
-- Dependencies: 6
-- Name: ad_uoalmox; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_uoalmox (
    iduoreq numeric(9,0) NOT NULL,
    iduoalmox numeric(9,0) NOT NULL
);


--
-- TOC entry 2444 (class 1259 OID 82976)
-- Dependencies: 6
-- Name: ad_valetransporte; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_valetransporte (
    dataini date NOT NULL,
    datafim date,
    valor numeric(8,2)
);


--
-- TOC entry 2445 (class 1259 OID 82979)
-- Dependencies: 6
-- Name: ad_veiculo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_veiculo (
    placa character varying(7) NOT NULL,
    renavam character varying(12),
    chassis character varying(20),
    marca character varying(15),
    modelo character varying(20),
    anofab numeric(4,0),
    anomod numeric(4,0),
    capacidade numeric(3,0),
    combustivel character varying(1),
    ativo character varying(1),
    tipoveiculo numeric(1,0),
    valorkm numeric(9,2),
    idinstituicao numeric(9,0)
);


--
-- TOC entry 2446 (class 1259 OID 82982)
-- Dependencies: 6
-- Name: ad_vidautil; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ad_vidautil (
    idvidautil numeric(11,0) NOT NULL,
    descricao character varying(140),
    anosvidautil integer,
    valorresidual integer
);


--
-- TOC entry 2447 (class 1259 OID 82985)
-- Dependencies: 6
-- Name: bt_artigo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_artigo (
    idartigo integer NOT NULL,
    outrosautores character varying(400),
    resumos character varying(3000),
    idexemplarperiodico integer
);


--
-- TOC entry 2448 (class 1259 OID 82991)
-- Dependencies: 6
-- Name: bt_assunto; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_assunto (
    idassunto integer NOT NULL,
    idetiqueta integer NOT NULL,
    subcampo character(1),
    conteudo character varying(3000),
    indicador character(1),
    linha integer,
    ocorrencia integer,
    classificacao character varying(15)
);


--
-- TOC entry 2449 (class 1259 OID 82997)
-- Dependencies: 6
-- Name: bt_assuntoobra; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_assuntoobra (
    idassunto integer NOT NULL,
    idobra integer NOT NULL,
    idmaterial integer NOT NULL,
    ocorrencia integer NOT NULL
);


--
-- TOC entry 2450 (class 1259 OID 83000)
-- Dependencies: 3078 6
-- Name: bt_autor; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

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


--
-- TOC entry 2451 (class 1259 OID 83007)
-- Dependencies: 6
-- Name: bt_autorobra; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_autorobra (
    idautor integer NOT NULL,
    idetiqueta integer NOT NULL,
    subcampo character(1),
    idobra integer NOT NULL,
    idmaterial integer NOT NULL,
    ocorrencia integer NOT NULL
);


--
-- TOC entry 2452 (class 1259 OID 83010)
-- Dependencies: 6
-- Name: bt_camposfixos; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_camposfixos (
    idetiqueta integer NOT NULL,
    idobra integer NOT NULL,
    conteudo character varying(50) NOT NULL,
    obra_temp integer,
    etiqueta_temp character varying(3)
);


--
-- TOC entry 2453 (class 1259 OID 83013)
-- Dependencies: 6
-- Name: bt_camposfixosperiodico; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_camposfixosperiodico (
    idetiqueta integer NOT NULL,
    idperiodico integer NOT NULL,
    conteudo character varying(50) NOT NULL,
    periodico_temp integer,
    etiqueta_temp character varying(3)
);


--
-- TOC entry 2454 (class 1259 OID 83016)
-- Dependencies: 6
-- Name: bt_camposubficha; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_camposubficha (
    idficha integer NOT NULL,
    idsubficha integer NOT NULL,
    idetiqueta integer NOT NULL,
    subcampo character(1) NOT NULL,
    ordem integer
);


--
-- TOC entry 2455 (class 1259 OID 83019)
-- Dependencies: 6
-- Name: bt_codigobarra; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_codigobarra (
    idcodigobarra integer NOT NULL,
    numcodigobarra character(10),
    descricao character(2)
);


--
-- TOC entry 2456 (class 1259 OID 83022)
-- Dependencies: 6
-- Name: bt_colecao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_colecao (
    idcolecao integer NOT NULL,
    mnemonico character varying(10),
    descricao character varying(45)
);


--
-- TOC entry 2457 (class 1259 OID 83025)
-- Dependencies: 6
-- Name: bt_consulta; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_consulta (
    idconsulta integer NOT NULL,
    mnemonico character varying(10)
);


--
-- TOC entry 2458 (class 1259 OID 83028)
-- Dependencies: 6
-- Name: bt_consultacampo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_consultacampo (
    idconsulta integer NOT NULL,
    idetiqueta integer NOT NULL,
    subcampo character(1) NOT NULL
);


--
-- TOC entry 2459 (class 1259 OID 83031)
-- Dependencies: 6
-- Name: bt_direito; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_direito (
    idregracirculacao integer NOT NULL,
    idoperacao integer NOT NULL,
    idgrupo integer NOT NULL
);


--
-- TOC entry 2460 (class 1259 OID 83034)
-- Dependencies: 6
-- Name: bt_editora; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_editora (
    ideditora integer NOT NULL,
    descricao character varying(50) NOT NULL,
    endereco character varying(60),
    municipio character varying(40),
    cep character varying(12),
    telefone character varying(18),
    email character varying(50),
    site character varying(50),
    mnemonico character varying(20),
    cnpj character varying(18)
);


--
-- TOC entry 2461 (class 1259 OID 83037)
-- Dependencies: 6
-- Name: bt_emprestimo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_emprestimo (
    idemprestimo integer NOT NULL,
    datahoradoemprestimo timestamp with time zone,
    datahoraprevisaodevolucao timestamp with time zone,
    datahoradadevolucao timestamp with time zone,
    quantidadederenovacoes integer,
    emprhoras character(1),
    idusuario integer,
    idexemplar integer,
    usuario_temp character varying(20),
    exemplar_temp character varying(15)
);


--
-- TOC entry 2462 (class 1259 OID 83040)
-- Dependencies: 6
-- Name: bt_estado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_estado (
    idestado integer NOT NULL,
    descricao character varying(40),
    mnemonico character varying(20)
);


--
-- TOC entry 2463 (class 1259 OID 83043)
-- Dependencies: 6
-- Name: bt_etiqueta; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_etiqueta (
    idetiqueta integer NOT NULL UNIQUE,
    tag character(3) NOT NULL,
    indicador1 character(1),
    indicador2 character(1),
    mnemonico character varying(10),
    descricao character varying(80),
    observacao character varying(80),
    temrepeticoes character(1),
    temsubcampos character(1),
    estaativo character(1),
    emlistas character(1),
    emdemonstracao character(1),
    obsoleto character(1)
);


--
-- TOC entry 2464 (class 1259 OID 83046)
-- Dependencies: 6
-- Name: bt_etiquetalombada; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_etiquetalombada (
    idetiqueta integer NOT NULL,
    tipo character(1) NOT NULL,
    campo character(3) NOT NULL,
    subcampo character(1)
);


--
-- TOC entry 2465 (class 1259 OID 83049)
-- Dependencies: 6
-- Name: bt_exemplar; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_exemplar (
    idexemplar integer NOT NULL,
    numerodotombo character varying(20) NOT NULL,
    codigodoexemplar character varying(20),
    notainterna character varying(200),
    volume character varying(15),
    preco character varying(30),
    notaopac character varying(100),
    notacirculacao character varying(100),
    numinventario character varying(200),
    idestado integer NOT NULL,
    idregracirculacao integer NOT NULL,
    idunidade integer NOT NULL,
    idcolecao integer,
    idobra integer NOT NULL,
    obra_temp integer,
    colecao_temp character varying(10),
	numeroexemplar integer
);


--
-- TOC entry 2466 (class 1259 OID 83055)
-- Dependencies: 6
-- Name: bt_exemplarperiodico; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_exemplarperiodico (
    volume character varying(15),
    numero character varying(30),
    ano integer,
    tituloedicao character varying(350),
    numerodotombo character varying(20),
    idexemplarperiodico integer NOT NULL,
    idperiodico integer NOT NULL,
    idestado integer NOT NULL,
    idregracirculacao integer NOT NULL,
    idunidade integer NOT NULL,
    idcolecao integer,
    edicao character varying(30),
    notaopac character varying(100),
    notacirculacao character varying(100) NOT NULL,
    codigoexemplar character varying(20),
    obra_temp integer,
    colecao_temp character varying(10),
    notainterna character varying(200),
    preco character varying(30)
);


--
-- TOC entry 2467 (class 1259 OID 83061)
-- Dependencies: 2466 6
-- Name: bt_exemplarperiodico_notacirculacao_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE bt_exemplarperiodico_notacirculacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 4321 (class 0 OID 0)
-- Dependencies: 2467
-- Name: bt_exemplarperiodico_notacirculacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE bt_exemplarperiodico_notacirculacao_seq OWNED BY bt_exemplarperiodico.notacirculacao;


--
-- TOC entry 2468 (class 1259 OID 83063)
-- Dependencies: 6
-- Name: bt_exportacao_temp; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_exportacao_temp (
    idobra integer NOT NULL,
    titulo text
);


--
-- TOC entry 2469 (class 1259 OID 83069)
-- Dependencies: 6
-- Name: bt_ficha; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_ficha (
    idficha integer NOT NULL,
    categoria character(2) NOT NULL,
    nivel character(1) NOT NULL
);


--
-- TOC entry 2470 (class 1259 OID 83072)
-- Dependencies: 6
-- Name: bt_genero; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_genero (
    idgenero integer NOT NULL,
    descricao character varying(40),
    idficha integer
);


--
-- TOC entry 2471 (class 1259 OID 83075)
-- Dependencies: 6
-- Name: bt_grupo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_grupo (
    idgrupo integer NOT NULL,
    descricao character varying(40),
    nivel integer
);


--
-- TOC entry 2472 (class 1259 OID 83078)
-- Dependencies: 6
-- Name: bt_indicadores; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_indicadores (
    idindicador integer NOT NULL,
    idetiqueta integer,
    idobra integer,
    indicador character(1) NOT NULL,
    conteudo character(1),
    ocorrencia integer NOT NULL,
    obra_temp integer,
    etiqueta_temp character varying(3)
);


--
-- TOC entry 2473 (class 1259 OID 83081)
-- Dependencies: 6
-- Name: bt_indicadoresperiodico; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_indicadoresperiodico (
    idindicador integer NOT NULL,
    idetiqueta integer,
    idperiodico integer,
    indicador character(1) NOT NULL,
    conteudo character(1),
    ocorrencia integer NOT NULL,
    periodico_temp integer,
    etiqueta_temp character varying(3)
);


--
-- TOC entry 2474 (class 1259 OID 83084)
-- Dependencies: 6
-- Name: bt_infracao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_infracao (
    idinfracao integer NOT NULL,
    descricao character varying(40)
);


--
-- TOC entry 2475 (class 1259 OID 83087)
-- Dependencies: 6
-- Name: bt_logoperacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_logoperacao (
    idlogoperacao integer NOT NULL,
    data date,
    identificador character varying(100),
    idusuario integer,
    idoperacao integer NOT NULL,
    usuario_temp character varying(20),
    obra_temp integer,
    exemplar_temp character varying(20)
);


--
-- TOC entry 2476 (class 1259 OID 83090)
-- Dependencies: 6
-- Name: bt_logoperacaodetalhe; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_logoperacaodetalhe (
    idlogoperacao integer NOT NULL,
    campo character varying(20) NOT NULL,
    valoranterior character varying(200),
    valornovo character varying(200)
);


--
-- TOC entry 2477 (class 1259 OID 83093)
-- Dependencies: 6
-- Name: bt_material; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_material (
    idobra integer,
    idetiqueta integer,
    subcampo character(1) NOT NULL,
    conteudo character varying(3000),
    linha integer,
    idmaterial integer NOT NULL,
    ocorrencia integer,
    obra_temp integer,
    etiqueta_temp character varying(3)
);


--
-- TOC entry 2478 (class 1259 OID 83099)
-- Dependencies: 6
-- Name: bt_material_assunto_artigo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_material_assunto_artigo (
    idmaterialassuntoartigo integer NOT NULL,
    idartigo integer,
    idassunto integer,
    idetiqueta integer,
    ocorrencia integer
);


--
-- TOC entry 2479 (class 1259 OID 83102)
-- Dependencies: 6
-- Name: bt_material_autor_artigo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_material_autor_artigo (
    idartigo integer,
    idautor integer,
    idetiqueta integer,
    ocorrencia integer,
    idmaterialautorartigo integer NOT NULL
);


--
-- TOC entry 2480 (class 1259 OID 83105)
-- Dependencies: 2479 6
-- Name: bt_material_autor_artigo_idmaterialautorartigo_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE bt_material_autor_artigo_idmaterialautorartigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 4322 (class 0 OID 0)
-- Dependencies: 2480
-- Name: bt_material_autor_artigo_idmaterialautorartigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE bt_material_autor_artigo_idmaterialautorartigo_seq OWNED BY bt_material_autor_artigo.idmaterialautorartigo;


--
-- TOC entry 2481 (class 1259 OID 83107)
-- Dependencies: 6
-- Name: bt_materialartigo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_materialartigo (
    idetiqueta integer,
    idartigo integer,
    subcampo character(1) NOT NULL,
    conteudo character varying(3000),
    linha integer,
    idmaterial integer NOT NULL,
    ocorrencia integer,
    artigo_temp integer,
    etiqueta_temp character varying(3)
);


--
-- TOC entry 2482 (class 1259 OID 83113)
-- Dependencies: 6
-- Name: bt_materialperiodico; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_materialperiodico (
    idperiodico integer,
    idetiqueta integer,
    subcampo character(1) NOT NULL,
    conteudo character varying(3000),
    linha integer,
    idmaterial integer NOT NULL,
    periodico_temp integer,
    etiqueta_temp character varying(3),
    ocorrencia integer
);


--
-- TOC entry 2483 (class 1259 OID 83119)
-- Dependencies: 6
-- Name: bt_multa; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_multa (
    idmulta integer NOT NULL,
    datahora date,
    valor numeric(10,2),
    observacao character varying(130),
    foipaga character(1),
    datahorapagamento date,
    idemprestimo integer
);


--
-- TOC entry 2484 (class 1259 OID 83122)
-- Dependencies: 6
-- Name: bt_notainfracao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_notainfracao (
    idinfracao integer NOT NULL,
    idusuario integer,
    notainfracao character varying(100),
    idnotainfracao integer NOT NULL,
    usuario_temp character varying(20)
);


--
-- TOC entry 2485 (class 1259 OID 83125)
-- Dependencies: 6
-- Name: bt_obra; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_obra (
    idobra integer NOT NULL,
    numerodaobra integer NOT NULL,
    titulo character varying(350),
    autor character varying(200),
    edicao character varying(30),
    localpublicacao character varying(200),
    datapublicacao character varying(30),
    idgenero integer NOT NULL,
    subtitulo character varying(250),
    descfisica character varying(80),
    ideditora integer,
    idautor integer,
    editora character varying(50)
);

ALTER TABLE bt_obra ADD CONSTRAINT pk_bt_obra PRIMARY KEY (idobra);

--
-- TOC entry 2486 (class 1259 OID 83131)
-- Dependencies: 6
-- Name: bt_observacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_observacao (
    idusuario integer,
    idobservacao integer NOT NULL,
    descricao character varying(150),
    usuario_temp character varying(20)
);


--
-- TOC entry 2487 (class 1259 OID 83134)
-- Dependencies: 6
-- Name: bt_opcao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_opcao (
    idopcao integer NOT NULL,
    descricao character varying(50)
);


--
-- TOC entry 2488 (class 1259 OID 83137)
-- Dependencies: 6
-- Name: bt_opcaolista; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_opcaolista (
    idopcao integer NOT NULL,
    idopcaolista integer NOT NULL,
    indice character varying(10),
    texto character varying(100),
    ordem character varying(10)
);


--
-- TOC entry 2489 (class 1259 OID 83140)
-- Dependencies: 6
-- Name: bt_operacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_operacao (
    idoperacao integer NOT NULL,
    descricao character varying(40),
    mnemonico character varying(20)
);


--
-- TOC entry 2490 (class 1259 OID 83143)
-- Dependencies: 6
-- Name: bt_periodico; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_periodico (
    idperiodico integer NOT NULL,
    ideditora integer,
    idgenero integer
);


--
-- TOC entry 2491 (class 1259 OID 83146)
-- Dependencies: 3080 6
-- Name: bt_permitemulta; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_permitemulta (
    idpermitemulta integer NOT NULL,
    permitemulta character(1),
    CONSTRAINT bt_permitemulta_permitemulta_check CHECK ((permitemulta = ANY (ARRAY['M'::bpchar, 'N'::bpchar, 'P'::bpchar])))
);


--
-- TOC entry 2492 (class 1259 OID 83150)
-- Dependencies: 6
-- Name: bt_politica; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_politica (
    idgrupo integer NOT NULL,
    idregracirculacao integer NOT NULL,
    diasdeemprestimo integer NOT NULL,
    limitedeemprestimo integer NOT NULL,
    limitederenovacao integer NOT NULL,
    limitedereserva integer NOT NULL,
    valordamulta numeric(10,2) NOT NULL,
    diasdereserva integer NOT NULL,
    idpolitica integer NOT NULL,
    horadevolucao character varying(8) NOT NULL
);


--
-- TOC entry 2493 (class 1259 OID 83153)
-- Dependencies: 6
-- Name: bt_posicao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_posicao (
    idetiqueta integer NOT NULL,
    posicao character(3) NOT NULL,
    descricao character varying(50),
    idopcao integer
);


--
-- TOC entry 2494 (class 1259 OID 83156)
-- Dependencies: 6
-- Name: bt_posicaosubficha; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_posicaosubficha (
    idetiqueta integer NOT NULL,
    posicao character(3) NOT NULL,
    idficha integer NOT NULL,
    idsubficha integer NOT NULL
);


--
-- TOC entry 2495 (class 1259 OID 83159)
-- Dependencies: 6
-- Name: bt_regracirculacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_regracirculacao (
    idregracirculacao integer NOT NULL,
    descricao character varying(40)
);


--
-- TOC entry 2496 (class 1259 OID 83162)
-- Dependencies: 6
-- Name: bt_reserva; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_reserva (
    idreserva integer NOT NULL,
    datahoradareserva date,
    datahoradasituacao date,
    datahoraentrada date,
    datahoralimite date,
    foiavisado character(1),
    foiconfirmada character(1),
    idsituacao integer NOT NULL,
    idusuario integer,
    idexemplar integer,
    usuario_temp character varying(20),
    exemplar_temp character varying(15)
);


--
-- TOC entry 2497 (class 1259 OID 83165)
-- Dependencies: 6
-- Name: bt_situacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_situacao (
    idsituacao integer NOT NULL,
    descricao character varying(40),
    mnemonico character varying(20)
);


--
-- TOC entry 2498 (class 1259 OID 83168)
-- Dependencies: 6
-- Name: bt_subcampo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_subcampo (
    idetiqueta integer NOT NULL,
    subcampo character(1) NOT NULL,
    descricao character varying(80),
    temrepeticoes integer,
    estaativo integer,
    emlistas integer,
    emdemonstracao integer,
    obsoleto integer,
    mnemonico character varying(10),
    observacao character varying(400),
    emconsultas integer,
    idopcao integer
);


--
-- TOC entry 2499 (class 1259 OID 83174)
-- Dependencies: 6
-- Name: bt_subficha; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_subficha (
    idficha integer NOT NULL,
    idsubficha integer NOT NULL,
    titulo character varying(40) NOT NULL
);


--
-- TOC entry 2500 (class 1259 OID 83177)
-- Dependencies: 6
-- Name: bt_transicao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_transicao (
    idestadopresente integer NOT NULL,
    idestadofuturo integer NOT NULL,
    idoperacao integer NOT NULL
);


--
-- TOC entry 2501 (class 1259 OID 83180)
-- Dependencies: 6
-- Name: bt_unidade; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_unidade (
    idunidade integer NOT NULL,
    descricao character varying(50),
    mnemonico character varying(6),
    idsetor integer
);


--
-- TOC entry 2502 (class 1259 OID 83183)
-- Dependencies: 3081 6
-- Name: bt_usuarioexterno; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_usuarioexterno (
    idusuario integer NOT NULL,
    numrg character varying(15) NOT NULL,
    nome character varying(55) NOT NULL,
    telefone character varying(20) NOT NULL,
    endereco character varying(80),
    bairro character varying(50),
    cep character varying(8),
    idmunicipio character varying(5) NOT NULL,
    datanasc date NOT NULL,
    datapermissaoemprestimo date DEFAULT ('now'::text)::date
);


--
-- TOC entry 2503 (class 1259 OID 83187)
-- Dependencies: 3082 6
-- Name: bt_validacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_validacao (
    idvalidacao integer NOT NULL,
    dtvalidacao date,
    dtvalidacaoant date,
    codigoacesso character(10),
    idusuario integer,
    usuario_temp character varying(20),
    datapermissaoemprestimo date DEFAULT ('now'::text)::date
);


--
-- TOC entry 2504 (class 1259 OID 83191)
-- Dependencies: 6
-- Name: bt_vinculo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bt_vinculo (
    idgrupo integer NOT NULL,
    idusuario integer NOT NULL,
    usuario_temp character varying(20)
);


--
-- TOC entry 2505 (class 1259 OID 83194)
-- Dependencies: 6
-- Name: cm_acesso; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_acesso (
    idgrupo numeric(5,0) NOT NULL,
    idtrans numeric(9,0) NOT NULL,
    direito numeric(9,0) NOT NULL
);


--
-- TOC entry 2506 (class 1259 OID 83197)
-- Dependencies: 6
-- Name: cm_agencia; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_agencia (
    idbanco numeric(4,0) NOT NULL,
    idagenc character varying(7) NOT NULL,
    nome character varying(50)
);


--
-- TOC entry 2507 (class 1259 OID 83200)
-- Dependencies: 6
-- Name: cm_arquivo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_arquivo (
    idarquivo numeric(9,0) NOT NULL,
    md5 character varying(32) NOT NULL,
    nome character varying(50) NOT NULL,
    caminho character varying(200),
    tipomime character varying(25),
    tamanho numeric(10,0),
    mesreferencia numeric(2,0),
    anoreferencia numeric(4,0),
    idusuario integer,
    datagravacao date,
    processado character varying(1),
    dataprocessamento date,
    nomearqlog character varying(50),
    caminhoarqlog character varying(200),
    scriptprocessamento character varying(50),
    caminhoscript character varying(200),
    obs date
);


--
-- TOC entry 2508 (class 1259 OID 83206)
-- Dependencies: 6
-- Name: cm_banco; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_banco (
    idbanco numeric(4,0) NOT NULL,
    nome character varying(50),
    ativo character varying(1)
);


--
-- TOC entry 2509 (class 1259 OID 83209)
-- Dependencies: 6
-- Name: cm_estadocivil; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_estadocivil (
    idestadocivil numeric(1,0) NOT NULL,
    estadocivil character varying(30)
);


--
-- TOC entry 2510 (class 1259 OID 83212)
-- Dependencies: 6
-- Name: cm_feriado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_feriado (
    data date NOT NULL,
    descricao character varying(30),
    abrangencia character(1)
);


--
-- TOC entry 2511 (class 1259 OID 83215)
-- Dependencies: 6
-- Name: cm_grpusuario; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_grpusuario (
    idgrupo numeric(5,0) NOT NULL,
    idusuario integer NOT NULL
);


--
-- TOC entry 2512 (class 1259 OID 83218)
-- Dependencies: 6
-- Name: cm_grupoacesso; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_grupoacesso (
    idgrupo numeric(5,0) NOT NULL,
    grupo character varying(50)
);


--
-- TOC entry 2513 (class 1259 OID 83221)
-- Dependencies: 6
-- Name: cm_indice; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_indice (
    sigla character varying(10) NOT NULL,
    nome character varying(60)
);


--
-- TOC entry 2514 (class 1259 OID 83224)
-- Dependencies: 6
-- Name: cm_indicemensal; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_indicemensal (
    idindicemensal numeric(5,0) NOT NULL,
    ano numeric(4,0) NOT NULL,
    mes numeric(2,0) NOT NULL,
    valor numeric(18,6),
    sigla character varying(10) NOT NULL
);


--
-- TOC entry 2515 (class 1259 OID 83227)
-- Dependencies: 6
-- Name: cm_inss; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_inss (
    dataini timestamp with time zone,
    datafim timestamp with time zone,
    idinss numeric(9,0) NOT NULL,
    ate character varying(50),
    percentual character varying(100),
    fixo character varying(10),
    percpatronal character varying(50)
);


--
-- TOC entry 2516 (class 1259 OID 83230)
-- Dependencies: 6
-- Name: cm_irrf; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_irrf (
    idirrf numeric(5,0) NOT NULL,
    dataini timestamp with time zone,
    datafim timestamp with time zone,
    aliquota character varying(50),
    ate character varying(50),
    percentual numeric(9,2),
    deducao numeric(9,2)
);


--
-- TOC entry 2517 (class 1259 OID 83233)
-- Dependencies: 6
-- Name: cm_log; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_log (
    idlog numeric(15,0) NOT NULL,
    "timestamp" date NOT NULL,
    descricao character varying(200),
    operacao character varying(3),
    idusuario integer NOT NULL,
    modulo character varying(20) NOT NULL,
    classe character varying(30) NOT NULL
);


--
-- TOC entry 2518 (class 1259 OID 83236)
-- Dependencies: 6
-- Name: cm_logant; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_logant (
    idlog integer NOT NULL,
    "timestamp" date NOT NULL,
    descricao character varying(200),
    operacao character(3),
    idusuario integer NOT NULL,
    modulo character varying(20) NOT NULL,
    classe character varying(30) NOT NULL
);


--
-- TOC entry 2519 (class 1259 OID 83239)
-- Dependencies: 6
-- Name: cm_municipio; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_municipio (
    idmunicipio character varying(5) NOT NULL,
    municipio character varying(50),
    iduf character varying(4) NOT NULL,
    idpais numeric(4,0) NOT NULL,
    categoriadiaria character varying(1),
    populacao numeric(9,0)
);


--
-- TOC entry 2520 (class 1259 OID 83242)
-- Dependencies: 6
-- Name: cm_noticia; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_noticia (
    idsistema numeric(4,0) NOT NULL,
    idnoticia numeric(9,0) NOT NULL,
    dtnoticia date,
    noticia character varying(1000)
);


--
-- TOC entry 2521 (class 1259 OID 83248)
-- Dependencies: 6
-- Name: cm_organograma; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_organograma (
    idtipoorganograma numeric(5,0) NOT NULL,
    idsetor numeric(9,0) NOT NULL,
    idsetorpai numeric(9,0) NOT NULL
);


--
-- TOC entry 2522 (class 1259 OID 83251)
-- Dependencies: 6
-- Name: cm_pais; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_pais (
    idpais numeric(4,0) NOT NULL,
    pais character varying(50),
    nacionalidade character varying(50)
);


--
-- TOC entry 2523 (class 1259 OID 83254)
-- Dependencies: 6
-- Name: cm_pessoa; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_pessoa (
    idpessoa integer NOT NULL,
    nome character varying(55) NOT NULL,
    bairro character varying(50),
    cep character varying(8) NOT NULL,
    datanasc date NOT NULL,
    nomepai character varying(55),
    nomemae character varying(55),
    sexo character varying(1) NOT NULL,
    anochegbrasil character varying(4),
    telefone character varying(20),
    celular character varying(20),
    email character varying(50),
    gruposanguineo character varying(3),
    cpf character varying(11),
    numrg character varying(15),
    tiporg character varying(20),
    orgaorg character varying(20),
    ufrg character varying(2),
    numcartpro character varying(10),
    seriecartpro character varying(5),
    ufcartpro character varying(2),
    tituloeleitor character varying(20),
    zonatitulo numeric(5,0),
    secaotitulo numeric(5,0),
    uftitulo character varying(2),
    numdocmilitar character varying(12),
    seriedocmilitar character varying(1),
    categdocmilitar numeric(5,0),
    conta character varying(20),
    numcert numeric(5,0),
    livrocert character varying(10),
    folhacert numeric(5,0),
    cartorio character varying(60),
    pispasep character varying(15),
    datapispasep date,
    bancopispasep numeric(4,0),
    identprof character varying(15),
    tipoidentprof character varying(20),
    idpais numeric(4,0) NOT NULL,
    idmunicipio character varying(5) NOT NULL,
    idmunicipionascimento character varying(5),
    idpaisnascimento numeric(4,0) NOT NULL,
    idestadocivil numeric(1,0),
    idbanco numeric(4,0),
    idagenc character varying(7),
    idpaisnacionalidade numeric(4,0),
    tipodocmilitar character varying(3),
    orgexpdocmilitar character varying(3),
    dataultalt date,
    raca character varying(1),
    atvremunerada character varying(1),
    acessonet character varying(1),
    datarg date,
    endereco character varying(80),
    passaporte character varying(20),
    datacartest timestamp without time zone
);


--
-- TOC entry 2524 (class 1259 OID 83260)
-- Dependencies: 6
-- Name: cm_planosaude; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_planosaude (
    login character varying(50) NOT NULL,
    idpessoa integer,
    planosaude character varying(50)
);


--
-- TOC entry 2525 (class 1259 OID 83263)
-- Dependencies: 6
-- Name: cm_sessao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_sessao (
    idsessao numeric(10,0) NOT NULL,
    tsin date,
    tsout date,
    name character varying(50),
    sid character varying(32),
    forced character varying(1),
    idusuario integer,
    remoteaddr character varying(15)
);


--
-- TOC entry 2526 (class 1259 OID 83266)
-- Dependencies: 6
-- Name: cm_setoracesso; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_setoracesso (
    idsetor numeric(9,0) NOT NULL,
    idsetoracesso numeric(9,0) NOT NULL,
    finalidade character varying(15) NOT NULL
);


--
-- TOC entry 2527 (class 1259 OID 83269)
-- Dependencies: 6
-- Name: cm_setorequivalente; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_setorequivalente (
    idsetor numeric(9,0) NOT NULL,
    idsetorequivalente numeric(9,0) NOT NULL
);


--
-- TOC entry 2528 (class 1259 OID 83272)
-- Dependencies: 6
-- Name: cm_setornovo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_setornovo (
    idsetor numeric(9,0) NOT NULL,
    siglasetor character varying(15) NOT NULL,
    dataini date NOT NULL,
    nomesetor character varying(100),
    tiposetor character varying(20),
    datafim date,
    fone character varying(15),
    fax character varying(15),
    centrocusto character varying(20),
    obs character varying(255),
    localizacao character varying(15),
    paisetor character varying(15),
    pairelat character varying(15),
    idsetorsiape character varying(7),
    idpaisetor numeric(9,0),
    codigo character varying(4),
    idinstituicao numeric(9,0)
);


--
-- TOC entry 2529 (class 1259 OID 83278)
-- Dependencies: 6
-- Name: cm_sistema; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_sistema (
    idsistema numeric(4,0) NOT NULL,
    sistema character varying(30)
);


--
-- TOC entry 2530 (class 1259 OID 83281)
-- Dependencies: 6
-- Name: cm_tabelageral; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_tabelageral (
    idtabelageral numeric(9,0) NOT NULL,
    tabela character varying(30) NOT NULL,
    item1 character varying(30) NOT NULL,
    item2 character varying(50),
    item3 character varying(200)
);


--
-- TOC entry 2531 (class 1259 OID 83284)
-- Dependencies: 6
-- Name: cm_tabelasigaept; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_tabelasigaept (
    idtabelasigaept numeric(5,0) NOT NULL,
    tabela character varying(30) NOT NULL,
    item1 character varying(30) NOT NULL,
    item2 character varying(50),
    item3 character varying(200)
);


--
-- TOC entry 2532 (class 1259 OID 83287)
-- Dependencies: 6
-- Name: cm_tipoorganograma; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_tipoorganograma (
    idtipoorganograma numeric(5,0) NOT NULL,
    sigla character varying(20),
    descricao character varying(100)
);


--
-- TOC entry 2533 (class 1259 OID 83290)
-- Dependencies: 6
-- Name: cm_transacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_transacao (
    idtrans numeric(9,0) NOT NULL,
    transacao character varying(30),
    idsistema numeric(4,0) NOT NULL
);


--
-- TOC entry 2534 (class 1259 OID 83293)
-- Dependencies: 6
-- Name: cm_uf; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_uf (
    iduf character varying(4) NOT NULL,
    uf character varying(50)
);


--
-- TOC entry 2535 (class 1259 OID 83296)
-- Dependencies: 6
-- Name: cm_usuario; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cm_usuario (
    idusuario integer NOT NULL,
    idpessoa integer NOT NULL,
    idsetor numeric(9,0) NOT NULL,
    login character varying(20) NOT NULL,
    password character varying(20) NOT NULL,
    nick character varying(80),
    passmd5 character varying(32)
);


--
-- TOC entry 2536 (class 1259 OID 83299)
-- Dependencies: 6
-- Name: ga_aluno; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ga_aluno (
    matricula character(20) NOT NULL,
    anoconcl2gr character varying(4),
    anoingresso character varying(4) NOT NULL,
    semingresso character varying(1) NOT NULL,
    situacaoaluno character varying(15) NOT NULL,
    idtipoingresso character(2) NOT NULL,
    idmotivosaida character(2),
    idsituacao character(2) NOT NULL,
    idinstituicao numeric(9,0) NOT NULL,
    idpessoa integer NOT NULL,
    escola2g integer,
    cidade2g integer,
    pais2g integer,
    idinstituicaodest numeric(9,0),
    obs character varying(300),
    obsperiodo character varying(300)
);


--
-- TOC entry 2537 (class 1259 OID 83305)
-- Dependencies: 6
-- Name: ga_situacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ga_situacao (
    idsituacao character(2) NOT NULL,
    situacao character varying(20)
);


--
-- TOC entry 2538 (class 1259 OID 83308)
-- Dependencies: 6
-- Name: rh_acessoproades; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_acessoproades (
    idproades integer NOT NULL,
    idusuario integer NOT NULL
);


--
-- TOC entry 2539 (class 1259 OID 83311)
-- Dependencies: 6
-- Name: rh_adicional; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_adicional (
    idvinculo numeric(7,0) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    idadicional character(1) NOT NULL,
    grau character varying(6),
    obs character varying(500)
);


--
-- TOC entry 2540 (class 1259 OID 83317)
-- Dependencies: 6
-- Name: rh_ambiente; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_ambiente (
    idambiente integer NOT NULL,
    descricao character varying(50)
);


--
-- TOC entry 2541 (class 1259 OID 83320)
-- Dependencies: 6
-- Name: rh_assunto; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_assunto (
    idreuniao integer NOT NULL,
    idassunto integer NOT NULL,
    assunto character varying(500)
);


--
-- TOC entry 2542 (class 1259 OID 83323)
-- Dependencies: 6
-- Name: rh_atividade; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_atividade (
    idatividade integer NOT NULL,
    idvinculo numeric(7,0),
    datainicio date,
    datafim date,
    atividade character varying(500)
);


--
-- TOC entry 2543 (class 1259 OID 83329)
-- Dependencies: 6
-- Name: rh_ativproades; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_ativproades (
    idatividade integer NOT NULL,
    descricao character varying(200),
    idmeta integer NOT NULL
);


--
-- TOC entry 2544 (class 1259 OID 83332)
-- Dependencies: 6
-- Name: rh_ausente; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_ausente (
    idausente integer NOT NULL,
    idvinculo numeric(7,0) NOT NULL,
    idreuniao integer NOT NULL,
    justificado character(1) NOT NULL
);


--
-- TOC entry 2545 (class 1259 OID 83335)
-- Dependencies: 6
-- Name: rh_averbacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_averbacao (
    idaverbacao integer NOT NULL,
    processo character(21),
    datainicio date,
    datafim date,
    totaldias integer,
    tipotempo character varying(7),
    instituicao character varying(120),
    idvinculo numeric(7,0) NOT NULL
);


--
-- TOC entry 2546 (class 1259 OID 83338)
-- Dependencies: 6
-- Name: rh_averbfinalidade; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_averbfinalidade (
    idaverbacao integer NOT NULL,
    idaverbfinalidade integer NOT NULL,
    processo character(21),
    finalidade character(2),
    totaldias integer
);


--
-- TOC entry 2547 (class 1259 OID 83341)
-- Dependencies: 6
-- Name: rh_baseaposentadoria; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_baseaposentadoria (
    idvinculo numeric(7,0) NOT NULL,
    mes integer NOT NULL,
    ano integer NOT NULL,
    valorbase integer,
    valorpss integer
);


--
-- TOC entry 2548 (class 1259 OID 83344)
-- Dependencies: 6
-- Name: rh_capacitacaocoinc; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_capacitacaocoinc (
    idmodulo1 integer NOT NULL,
    idmodulo2 integer NOT NULL
);


--
-- TOC entry 2549 (class 1259 OID 83347)
-- Dependencies: 6
-- Name: rh_capacitacaocoinc2; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_capacitacaocoinc2 (
    idcurso1 character(5) NOT NULL,
    idcurso2 character(5) NOT NULL
);


--
-- TOC entry 2550 (class 1259 OID 83350)
-- Dependencies: 6
-- Name: rh_capacitacaocurso; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_capacitacaocurso (
    idcurso integer NOT NULL,
    nome character varying(100) NOT NULL,
    idinstituicao numeric(9,0),
    obs character varying(50),
    cargahoraria character varying(50),
    datainicio timestamp without time zone,
    datafim timestamp without time zone
);


--
-- TOC entry 2551 (class 1259 OID 83353)
-- Dependencies: 6
-- Name: rh_capacitacaocurso2; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_capacitacaocurso2 (
    idcurso character(5) NOT NULL,
    nome character varying(100) NOT NULL,
    modulo character varying(100),
    datainicio date,
    datafim date,
    horainicio character(5),
    horafim character(5),
    cargahoraria character(5),
    local character varying(100),
    vagas character(3),
    turno character(1),
    status character(1)
);


--
-- TOC entry 2552 (class 1259 OID 83356)
-- Dependencies: 6
-- Name: rh_capacitacaoinsc; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_capacitacaoinsc (
    inscricao integer NOT NULL,
    idvinculo numeric(7,0) NOT NULL,
    idmodulo integer NOT NULL,
    telefone character(20),
    turno character(10),
    ambiente character varying(100),
    justificativa character varying(2000),
    status character(1),
    ts character(20) NOT NULL,
    idauth character(7),
    tsauth character(20)
);


--
-- TOC entry 2553 (class 1259 OID 83362)
-- Dependencies: 6
-- Name: rh_capacitacaoinsc2; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_capacitacaoinsc2 (
    inscricao integer NOT NULL,
    idvinculo numeric(7,0) NOT NULL,
    idcurso character(5) NOT NULL,
    telefone character(20),
    turno character(10),
    ambiente character varying(100),
    justificativa character varying(2000),
    status character(1),
    ts character(20) NOT NULL,
    idauth character(7),
    tsauth character(20)
);


--
-- TOC entry 2554 (class 1259 OID 83368)
-- Dependencies: 6
-- Name: rh_capacitacaomodulo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_capacitacaomodulo (
    idmodulo integer NOT NULL,
    idcurso integer NOT NULL,
    modulo character(3) NOT NULL,
    nome character varying(100) NOT NULL,
    datainicio date,
    datafim date,
    horainicio character(5),
    horafim character(5),
    cargahoraria character(5),
    local character varying(100),
    vagas character(3),
    turno character(1),
    status character(1),
    diasemana character varying(50),
    anosemestre character(6),
    observacoes character varying(200)
);


--
-- TOC entry 2555 (class 1259 OID 83371)
-- Dependencies: 6
-- Name: rh_cargo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_cargo (
    idgrupocargo integer NOT NULL,
    idcargo integer NOT NULL,
    descricao character varying(40),
    escolaridademinima character(2),
    idjornada integer
);


--
-- TOC entry 2556 (class 1259 OID 83374)
-- Dependencies: 6
-- Name: rh_cargoconfianca; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_cargoconfianca (
    idcargoconfianca integer NOT NULL,
    descricao character varying(60) NOT NULL
);


--
-- TOC entry 2557 (class 1259 OID 83377)
-- Dependencies: 6
-- Name: rh_cessao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_cessao (
    idvinculo numeric(7,0) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    obs character varying(500),
    tipoonus character varying(15),
    tipocessao character varying(20),
    tipoinstituicao character(1),
    idgrupoocorrencia integer NOT NULL,
    idocorrencia integer NOT NULL,
    idinstituicao numeric(9,0) NOT NULL,
    idpublicacao integer
);


--
-- TOC entry 2558 (class 1259 OID 83383)
-- Dependencies: 6
-- Name: rh_cidcategoria; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_cidcategoria (
    idcidcategoria character(3) NOT NULL,
    opc character(1),
    descricao character varying(60)
);


--
-- TOC entry 2559 (class 1259 OID 83386)
-- Dependencies: 6
-- Name: rh_cidsubcategoria; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_cidsubcategoria (
    idcidcategoria character(3) NOT NULL,
    idcidsubcategoria character(4) NOT NULL,
    opc character(1),
    descricao character varying(60),
    restricaosexo integer
);


--
-- TOC entry 2560 (class 1259 OID 83389)
-- Dependencies: 6
-- Name: rh_cirurgia; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_cirurgia (
    codigo integer NOT NULL,
    descricao character varying(125) NOT NULL,
    sexo character(1) NOT NULL
);


--
-- TOC entry 2561 (class 1259 OID 83392)
-- Dependencies: 6
-- Name: rh_classe; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_classe (
    idclasse integer NOT NULL,
    classe character varying(20) NOT NULL,
    descricao character varying(30) NOT NULL,
    categoria character varying(6) NOT NULL,
    ordemprogressao integer
);


--
-- TOC entry 2562 (class 1259 OID 83395)
-- Dependencies: 6
-- Name: rh_classegrupocargo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_classegrupocargo (
    idclasse integer,
    idclassegrupocargo integer NOT NULL,
    idgrupocargo integer
);


--
-- TOC entry 2563 (class 1259 OID 83398)
-- Dependencies: 6
-- Name: rh_contagem; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_contagem (
    idvinc integer NOT NULL,
    nome character varying(60),
    sexo character(1),
    dtnasc date,
    dtingsp date,
    grupocargo character(3),
    diasaverb integer,
    diaslicenca integer,
    diasfalta integer
);


--
-- TOC entry 2564 (class 1259 OID 83401)
-- Dependencies: 6
-- Name: rh_contrato; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_contrato (
    idcontrato integer NOT NULL,
    numcontrato character varying(12),
    datainicio date,
    datafim date,
    dataprorrogacao date,
    idinstituicao numeric(9,0) NOT NULL,
    idsetor integer NOT NULL,
    objeto character varying(200),
    obs character varying(500)
);


--
-- TOC entry 2565 (class 1259 OID 83407)
-- Dependencies: 6
-- Name: rh_contratoprovterceirizado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_contratoprovterceirizado (
    idterceirizado integer NOT NULL,
    datainicio date NOT NULL,
    idcontrato integer NOT NULL
);


--
-- TOC entry 2566 (class 1259 OID 83410)
-- Dependencies: 6
-- Name: rh_decisao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_decisao (
    idreuniao integer NOT NULL,
    iddecisao integer NOT NULL,
    decisao character varying(300)
);


--
-- TOC entry 2567 (class 1259 OID 83413)
-- Dependencies: 6
-- Name: rh_dependencia; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_dependencia (
    iddependente integer NOT NULL,
    idtipodependencia character(2) NOT NULL,
    datainicio date NOT NULL,
    datafim date
);


--
-- TOC entry 2568 (class 1259 OID 83416)
-- Dependencies: 6
-- Name: rh_dependente; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_dependente (
    iddependente integer NOT NULL,
    parentesco integer NOT NULL,
    idpessoa integer,
    idfuncionario numeric(9,0) NOT NULL
);


--
-- TOC entry 2569 (class 1259 OID 83419)
-- Dependencies: 6
-- Name: rh_desaverbacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_desaverbacao (
    iddesaverbacao integer NOT NULL,
    processo character(21),
    datainicio date,
    datafim date,
    totaldias integer,
    data date,
    motivo character varying(100),
    idaverbacao integer NOT NULL
);


--
-- TOC entry 2570 (class 1259 OID 83422)
-- Dependencies: 6
-- Name: rh_designacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_designacao (
    idvinculo character(7) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    obs character varying(500),
    idsetor integer,
    idfuncao integer,
    idpublicacao integer
);


--
-- TOC entry 2571 (class 1259 OID 83428)
-- Dependencies: 6
-- Name: rh_diplomalegal; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_diplomalegal (
    iddiplomalegal integer NOT NULL,
    descricao character varying(20)
);


--
-- TOC entry 2572 (class 1259 OID 83431)
-- Dependencies: 6
-- Name: rh_dtlimiteferias; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_dtlimiteferias (
    iddtlimiteferias integer NOT NULL,
    mesprevisto character(2) NOT NULL,
    anoprevisto character(4) NOT NULL,
    dtlimite date
);


--
-- TOC entry 2573 (class 1259 OID 83434)
-- Dependencies: 6
-- Name: rh_encaminhamento; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_encaminhamento (
    idreuniao integer NOT NULL,
    idencaminhamento integer NOT NULL,
    encaminhamento character varying(300)
);


--
-- TOC entry 2574 (class 1259 OID 83437)
-- Dependencies: 6
-- Name: rh_equipe; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_equipe (
    idequipe integer NOT NULL,
    idproades integer NOT NULL,
    categoriaequipe integer,
    nome character varying(50)
);


--
-- TOC entry 2575 (class 1259 OID 83440)
-- Dependencies: 6
-- Name: rh_escala; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_escala (
    descricao character varying(20),
    idescala integer NOT NULL
);


--
-- TOC entry 2576 (class 1259 OID 83443)
-- Dependencies: 6
-- Name: rh_escolaridadepcctae; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_escolaridadepcctae (
    idescolaridadepcctae integer NOT NULL,
    escolaridade integer,
    descricao character varying(100)
);


--
-- TOC entry 2577 (class 1259 OID 83446)
-- Dependencies: 6
-- Name: rh_ferias; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_ferias (
    datainicioperaq date NOT NULL,
    datainicio date NOT NULL,
    datafim date NOT NULL,
    abono character(1) NOT NULL,
    adiantamento13 character(1) NOT NULL,
    adiantamentosalario character(1) NOT NULL,
    totaldias integer NOT NULL,
    iniciofimabono character varying(1),
    obs character varying(500),
    numfolha integer,
    datafimprevista date,
    abonoconst character(1) NOT NULL,
    idvinculoperaq numeric(7,0) NOT NULL
);


--
-- TOC entry 2578 (class 1259 OID 83452)
-- Dependencies: 6
-- Name: rh_fichaclinica; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_fichaclinica (
    idfichaclinica integer NOT NULL,
    idvinculo numeric(7,0) NOT NULL,
    data date NOT NULL,
    tipoexame character(1) NOT NULL,
    funcanterior character varying(150),
    queixaclinica character varying(2000),
    antclinico character varying(2000),
    cidantclinico character varying(2000),
    antcirurgico character varying(2000),
    sihantcirurgico character varying(2000),
    epilepsia character varying(2000),
    medicamento character varying(2000),
    tabagismo character varying(2000),
    etilismo character varying(2000),
    alergia character varying(2000),
    pa character varying(75),
    pulso character varying(75),
    complementar character varying(2000),
    pendente character varying(2000),
    tempoprof character varying(150),
    tempoufjf character varying(150),
    atvfisica character varying(2000),
    frequencia character varying(150),
    turno character(1),
    colegas character(1),
    superiores character(1),
    familiares character(1),
    agrada character(1),
    ferias date,
    cndtrabalho character varying(2000),
    peso character varying(25),
    altura character varying(25),
    imc character varying(25),
    r character varying(25),
    ca character varying(25),
    dntfrequencia character(1),
    dntperdido character(1),
    exmvista character(1),
    audicao character(1),
    dorlocal character varying(150),
    anmpostural character varying(150),
    supdor character varying(150),
    suplocal character varying(150),
    supoutro character varying(2000),
    infdor character varying(150),
    infparesia character(1),
    infoutro character varying(2000),
    fncintestinal character varying(2000),
    avaurologica character varying(2000),
    uroutro character varying(2000),
    diurese character varying(150),
    menarca character varying(25),
    clcmenstrual character varying(25),
    dum character varying(25),
    dstmenstrual character varying(150),
    preventivo date,
    g character varying(25),
    p character varying(25),
    a character varying(25),
    flhvivo character varying(25),
    parto character varying(150),
    contraceptivo character varying(150),
    rubeola character(1),
    meningite character(1),
    hepatite character(1),
    tuberculose character(1),
    sarampo character(1),
    tetano character(1),
    poliomelite character(1),
    coqueluche character(1),
    gripe character(1),
    vcnoutros character varying(2000),
    cage_1 character(1),
    cage_2 character(1),
    cage_3 character(1),
    cage_4 character(1),
    fage_1 character(1),
    fage_2 character(1),
    fage_3 character(1),
    fage_4 character(1),
    fage_5 character(1),
    fage_6 character(1),
    antocupacional character varying(2000),
    adcoutros character varying(2000),
    infalteracoes character varying(150),
    inflocal character varying(150),
    intalteracoes character varying(2000),
    risco_quimico character(1),
    risco_fisico character(1),
    risco_biologico character(1),
    risco_ruido character(1),
    deformidade character(1),
    edema character(1),
    variz character(1),
    infparestesia character(1),
    suparesia character(1),
    suparestesia character(1),
    fisico character varying(2000),
    jornadaufjf character varying(150),
    jornadatotal character varying(150)
);


--
-- TOC entry 2579 (class 1259 OID 83458)
-- Dependencies: 6
-- Name: rh_fitaespelho; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_fitaespelho (
    afast_dip_cod character varying(10),
    afast_dip_dt character varying(10),
    afast_dip_num character varying(10),
    afast_dt_inic character varying(10),
    afast_dt_term character varying(10),
    afast_grupo character varying(10),
    afast_ocor character varying(10),
    agencia character varying(10),
    ano_chegada character varying(10),
    anomes character varying(10),
    apos_ano_prev character varying(10),
    apos_num_proc character varying(10),
    apos_opcao_int character varying(10),
    ativid_funcao character varying(10),
    banco character varying(10),
    cargo_classe character varying(10),
    cargo_dt_entrad character varying(10),
    cargo_dt_saida character varying(10),
    cargo_grupo character varying(10),
    cargo_nome character varying(10),
    cargo_ref_nivel character varying(10),
    cart_trab_num character varying(10),
    cart_trab_serie character varying(10),
    cart_trab_uf character varying(10),
    cod_org_extinto character varying(10),
    cod_situacao character varying(10),
    codigo_vaga character varying(10),
    conta character varying(10),
    cpf character varying(10),
    dt_cadast_serv character varying(10),
    dt_exc_instit character varying(10),
    dt_nascimento character varying(10),
    dt_prim_emp character varying(10),
    dt_supr_pagto character varying(10),
    dv_matricula character varying(10),
    end_bairro character varying(10),
    end_cep character varying(10),
    end_complemento character varying(10),
    end_logradouro character varying(10),
    end_municipio character varying(10),
    end_numero character varying(10),
    end_uf character varying(10),
    escolaridade character varying(10),
    estado_civil character varying(10),
    exclus_dip_cod character varying(10),
    exclus_dip_dt character varying(10),
    exclus_dip_num character varying(10),
    exclus_dt character varying(10),
    exclus_grupo character varying(10),
    exclus_ocor character varying(10),
    fgts_agencia character varying(10),
    fgts_banco character varying(10),
    fgts_conta character varying(10),
    fgts_dt_opcao character varying(10),
    filler1 character varying(10),
    funcao_codnivel character varying(10),
    funcao_dt_ingr character varying(10),
    funcao_dt_saida character varying(10),
    funcao_escolar character varying(10),
    funcao_opcao character varying(10),
    funcao_sigla character varying(10),
    funcao_unid_org character varying(10),
    ica_13_salario character varying(10),
    ica_abate_teto character varying(10),
    ica_adiant_13 character varying(10),
    ica_adiant character varying(10),
    ica_adic_tempo character varying(10),
    ica_beneficios character varying(10),
    ica_cargo character varying(10),
    ica_cont_sind character varying(10),
    ica_dif_urv character varying(10),
    ica_ferias character varying(10),
    ica_fgts character varying(10),
    ica_funcao character varying(10),
    ica_inss character varying(10),
    ica_ipmf_cpmf character varying(10),
    ica_ir character varying(10),
    ica_margem_cons character varying(10),
    ica_pensao character varying(10),
    ica_pss_6 character varying(10),
    ica_rais character varying(10),
    ica_rend_pasep character varying(10),
    ica_sal_familia character varying(10),
    identif_origem character varying(10),
    inativ_dip_cod character varying(10),
    inativ_dip_dt character varying(10),
    inativ_dip_num character varying(10),
    inativ_dt character varying(10),
    inativ_grupo character varying(10),
    inativ_ocor character varying(10),
    ind_exc_instit character varying(10),
    ind_oper_raiox character varying(10),
    ind_supr_pagto character varying(10),
    indic_pag_serv character varying(10),
    ing_org_dip_cod character varying(10),
    ing_org_dip_dt character varying(10),
    ing_org_dip_num character varying(10),
    ing_org_dt character varying(10),
    ing_org_grupo character varying(10),
    ing_org_ocor character varying(10),
    ing_sp_dip_cod character varying(10),
    ing_sp_dip_dt character varying(10),
    ing_sp_dip_num character varying(10),
    ing_sp_dt character varying(10),
    ing_sp_grupo character varying(10),
    ing_sp_ocor character varying(10),
    jornada_trab character varying(10),
    local_orgao character varying(10),
    local_unid_org character varying(10),
    lotac_unid_dt character varying(10),
    lotac_unid_org character varying(10),
    mat_serv_extint character varying(10),
    matric_anterior character varying(10),
    matric_atual character varying(10),
    mes_anuenio character varying(10),
    mod_fun_dip_cod character varying(10),
    mod_fun_dip_dt character varying(10),
    mod_fun_dip_num character varying(10),
    mod_fun_dt character varying(10),
    mod_fun_grupo character varying(10),
    mod_fun_ocor character varying(10),
    mud_org_destino character varying(10),
    mud_org_dt_lib character varying(10),
    mud_org_origem character varying(10),
    mud_upag_codigo character varying(10),
    mud_upag_dt_lib character varying(10),
    mud_upag_motivo character varying(10),
    nacionalidade character varying(10),
    naturalidade character varying(10),
    nome_mae character varying(10),
    nome_servidor character varying(10),
    nov_fc_codnivel character varying(10),
    nov_fc_dt_ingr character varying(10),
    nov_fc_dt_saida character varying(10),
    nov_fc_escolar character varying(10),
    nov_fc_opcao character varying(10),
    nov_fc_sigla character varying(10),
    nov_fc_unid_org character varying(10),
    obito_cartori0 character varying(10),
    obito_dt character varying(10),
    obito_folha character varying(10),
    obito_livro character varying(10),
    obito_registro character varying(10),
    orgao_anterior character varying(10),
    orgao_atual character varying(10),
    orgao_requisit character varying(10),
    pais character varying(10),
    perc_oper_raiox character varying(10),
    perc_tempo_serv character varying(10),
    pis_pasep character varying(10),
    posse_dip_cod character varying(10),
    posse_dip_dt character varying(10),
    posse_dip_num character varying(10),
    posse_dt character varying(10),
    posse_grupo character varying(10),
    posse_ocor character varying(10),
    proporc_denomin character varying(10),
    proporc_numerad character varying(10),
    quant_dep_ir character varying(10),
    quant_dep_sf character varying(10),
    reg_jur_ant character varying(10),
    regime_juridico character varying(10),
    rev_ati_dip_cod character varying(10),
    rev_ati_dip_dt character varying(10),
    rev_ati_dip_num character varying(10),
    rev_ati_dt character varying(10),
    rev_ati_grupo character varying(10),
    rev_ati_ocor character varying(10),
    rg_dt_emissao character varying(10),
    rg_numero character varying(10),
    rg_orgao character varying(10),
    rg_uf character varying(10),
    sexo character varying(10),
    siape character varying(10),
    sigla_uf character varying(10),
    sit_serv_ant character varying(10),
    tipo_registro character varying(10),
    tit_eleitor character varying(10),
    titulacao character varying(10),
    unid_pagadora character varying(10),
    uorg_controle character varying(10),
    vale_al_dt_fim character varying(10),
    vale_al_dt_inic character varying(10),
    vale_al_tipo character varying(10)
);


--
-- TOC entry 2580 (class 1259 OID 83464)
-- Dependencies: 6
-- Name: rh_formacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_formacao (
    idformacao integer NOT NULL,
    formacao character varying(40),
    escolaridade character(2),
    habsiape integer
);


--
-- TOC entry 2581 (class 1259 OID 83467)
-- Dependencies: 6
-- Name: rh_funcao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_funcao (
    idfuncao integer NOT NULL,
    idnivel integer NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    descricao character varying(100) NOT NULL,
    idpublicacaoinicio integer,
    idpublicacaofim integer,
    idsetor integer NOT NULL,
    mandato integer,
    idcargoconfianca integer,
    idcurso character varying(20)
);


--
-- TOC entry 2582 (class 1259 OID 83470)
-- Dependencies: 6
-- Name: rh_funcaoatual; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_funcaoatual (
    idvinculo numeric(7,0) NOT NULL,
    funcao character(3)
);


--
-- TOC entry 2583 (class 1259 OID 83473)
-- Dependencies: 6
-- Name: rh_funcaoterceirizado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_funcaoterceirizado (
    idfuncaoterceirizado integer NOT NULL,
    descricao character varying(40)
);


--
-- TOC entry 2584 (class 1259 OID 83476)
-- Dependencies: 6
-- Name: rh_funcionario; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_funcionario (
    idfuncionario numeric(9,0) NOT NULL,
    escolaridade integer,
    ufempregoanterior character(2),
    dataprimeiroemprego date,
    idpessoa integer
);


--
-- TOC entry 2585 (class 1259 OID 83479)
-- Dependencies: 6
-- Name: rh_grupocargo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_grupocargo (
    idgrupocargo integer NOT NULL,
    descricao character varying(40) NOT NULL
);


--
-- TOC entry 2586 (class 1259 OID 83482)
-- Dependencies: 6
-- Name: rh_grupolicafast; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_grupolicafast (
    idtipolicafast integer NOT NULL,
    idgrupoocorrencia integer NOT NULL,
    idocorrencia integer NOT NULL
);


--
-- TOC entry 2587 (class 1259 OID 83485)
-- Dependencies: 6
-- Name: rh_grupoocorrencia; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_grupoocorrencia (
    idgrupoocorrencia integer NOT NULL,
    descricao character varying(30) NOT NULL
);


--
-- TOC entry 2588 (class 1259 OID 83488)
-- Dependencies: 6
-- Name: rh_histcapacitacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_histcapacitacao (
    idhistcapacitacao integer NOT NULL,
    idfuncionario numeric(9,0) NOT NULL,
    idcurso integer,
    idmodulo integer,
    datacapacitacao date,
    dataprogressao date,
    compativelcargo character(1),
    compativelambiente character(1)
);


--
-- TOC entry 2589 (class 1259 OID 83491)
-- Dependencies: 6
-- Name: rh_histformacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_histformacao (
    idfuncionario numeric(9,0) NOT NULL,
    idformacao integer NOT NULL,
    idhistformacao integer NOT NULL,
    datafim date,
    entidade character varying(100),
    idescolaridadepcctae integer,
    dataincentivo date,
    dataatualizacao date,
    nomecurso character varying(100)
);


--
-- TOC entry 2590 (class 1259 OID 83494)
-- Dependencies: 6
-- Name: rh_histincentivo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_histincentivo (
    idhistincentivo integer NOT NULL,
    idhistformacao integer,
    idhisttitulacao integer,
    idpercqualificacao integer,
    idvinculo numeric(7,0),
    relacao character varying(50),
    percentualaplicado double precision,
    dataincentivo date
);


--
-- TOC entry 2591 (class 1259 OID 83497)
-- Dependencies: 6
-- Name: rh_historico; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_historico (
    idhistorico integer NOT NULL,
    datainicio date,
    datafim date,
    obs character varying(5000),
    idvinculo numeric(7,0)
);


--
-- TOC entry 2592 (class 1259 OID 83503)
-- Dependencies: 6
-- Name: rh_histpensionista; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_histpensionista (
    idvinculo character(7) NOT NULL,
    idpensionista integer NOT NULL,
    tipopensao character varying(20) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    percentual integer,
    isentoir character(1),
    obs character varying(200)
);


--
-- TOC entry 2593 (class 1259 OID 83506)
-- Dependencies: 6
-- Name: rh_histtitulacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_histtitulacao (
    idhisttitulacao integer NOT NULL,
    idtitulacao integer NOT NULL,
    datafim date NOT NULL,
    entidade character varying(100),
    titulotrabalhofinal character varying(120),
    tipotrabalhofinal character varying(20),
    areaconcentracao character varying(100),
    idfuncionario numeric(9,0) NOT NULL,
    nomecurso character varying(100),
    idescolaridadepcctae integer,
    dataincentivo date,
    dataatualizacao date
);


--
-- TOC entry 2594 (class 1259 OID 83509)
-- Dependencies: 6
-- Name: rh_histvantagem; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_histvantagem (
    idvinculo numeric(7,0) NOT NULL,
    idvantagem character varying(20) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    valor1 integer,
    info1 character varying(60),
    valor2 integer,
    info2 character varying(60),
    valor3 integer,
    info3 character varying(60),
    valor4 integer,
    info4 character varying(60),
    valor5 integer,
    info5 character varying(60),
    valor6 integer,
    info6 character varying(60)
);


--
-- TOC entry 2595 (class 1259 OID 83512)
-- Dependencies: 6
-- Name: rh_idunicatemp; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_idunicatemp (
    idfuncionario numeric(9,0),
    idvinculo numeric(7,0)
);


--
-- TOC entry 2596 (class 1259 OID 83515)
-- Dependencies: 6
-- Name: rh_jornada; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_jornada (
    idjornada integer NOT NULL,
    descricao character varying(20) NOT NULL
);


--
-- TOC entry 2597 (class 1259 OID 83518)
-- Dependencies: 6
-- Name: rh_licafast; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_licafast (
    idvinculo numeric(7,0) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    motivo character varying(500),
    tipolicenca character varying(10),
    idgrupoocorrencia integer NOT NULL,
    idocorrencia integer NOT NULL,
    idcidcategoria character(3),
    idcidsubcategoria character(4),
    idpublicacao integer
);


--
-- TOC entry 2598 (class 1259 OID 83524)
-- Dependencies: 6
-- Name: rh_localterceirizado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_localterceirizado (
    idlocalterceirizado integer NOT NULL,
    nome character varying(40),
    idsetor integer
);


--
-- TOC entry 2599 (class 1259 OID 83527)
-- Dependencies: 6
-- Name: rh_membro; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_membro (
    idmembro integer NOT NULL,
    idvinculo numeric(7,0) NOT NULL,
    idequipe integer NOT NULL,
    resultmembro integer,
    idatividade integer,
    atividade character varying(500)
);


--
-- TOC entry 2600 (class 1259 OID 83533)
-- Dependencies: 6
-- Name: rh_meta; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_meta (
    idmeta integer NOT NULL,
    idproades integer NOT NULL,
    previsao date,
    meta character varying(500),
    definida character(1),
    tipo integer
);


--
-- TOC entry 2601 (class 1259 OID 83539)
-- Dependencies: 6
-- Name: rh_naohabilitado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_naohabilitado (
    idnaohabilitado integer NOT NULL,
    idproades integer NOT NULL,
    idvinculo numeric(7,0) NOT NULL,
    justificativa character varying(300) NOT NULL
);


--
-- TOC entry 2602 (class 1259 OID 83542)
-- Dependencies: 6
-- Name: rh_nivelfuncao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_nivelfuncao (
    idnivel integer NOT NULL,
    descricao character varying(20) NOT NULL,
    sigla character(2) NOT NULL,
    nivel integer NOT NULL,
    valor integer
);


--
-- TOC entry 2603 (class 1259 OID 83545)
-- Dependencies: 6
-- Name: rh_ocorrencia; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_ocorrencia (
    idgrupoocorrencia integer NOT NULL,
    idocorrencia integer NOT NULL,
    descricao character varying(60) NOT NULL,
    mnemonico character(3),
    prazomaximo integer,
    sexo character(1),
    excpgto character(1)
);


--
-- TOC entry 2604 (class 1259 OID 83548)
-- Dependencies: 6
-- Name: rh_ocorrenciaterceirizado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_ocorrenciaterceirizado (
    idocorrenciaterceirizado integer NOT NULL,
    descricao character varying(30)
);


--
-- TOC entry 2605 (class 1259 OID 83551)
-- Dependencies: 6
-- Name: rh_ocupacaofuncao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_ocupacaofuncao (
    idocupacaofuncao integer NOT NULL,
    idfuncao integer NOT NULL,
    idvinculo numeric(7,0) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    idpublicacaoinicio integer,
    idpublicacaofim integer,
    substituicao character(1)
);


--
-- TOC entry 2606 (class 1259 OID 83554)
-- Dependencies: 6
-- Name: rh_ocupacaovaga; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_ocupacaovaga (
    idvinculo numeric(7,0) NOT NULL,
    numerovaga character(7) NOT NULL,
    datainicio date NOT NULL,
    datafim date
);


--
-- TOC entry 2607 (class 1259 OID 83557)
-- Dependencies: 6
-- Name: rh_origemvaga; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_origemvaga (
    idorigemvaga character(2) NOT NULL,
    descricao character varying(40)
);


--
-- TOC entry 2608 (class 1259 OID 83560)
-- Dependencies: 6
-- Name: rh_pensionista; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_pensionista (
    idpensionista character(8) NOT NULL,
    idpessoa integer NOT NULL,
    idvinculo numeric(7,0),
    numleipensao character varying(5),
    dataleipensao date,
    datapubleipensao date,
    numprocpensao character varying(15),
    dataexclusaoinstituidor date,
    origempensao character(1),
    numprocpensionista character(15),
    parentesco character varying(2),
    uorgcontrole character(9),
    uorglocal character(9),
    bancopgto character(3),
    agenciapgto character(6),
    tipocontapgto character(2),
    contapgto character varying(13),
    identcontajudicial character varying(18),
    numbenefinss character varying(10),
    especiebenefinss character varying(10),
    qtddepir integer,
    tipopensao character(2),
    naturezapensao character(1),
    percentpensao character varying(3),
    datainiciopensao date,
    datafimpensao date,
    idrepresentacao integer,
    numeradorcotaparte character varying(2),
    denominadorcotaparte character varying(2),
    numeradorcotacomp character varying(2),
    denominadorcotacomp character varying(2),
    mesiniciopgto integer,
    anoiniciopgto integer,
    messusppgto integer,
    anosusppgto integer,
    idgrupoocorrenciaexclusao integer,
    idocorrenciaexclusao integer,
    dataexclusao date
);


--
-- TOC entry 2609 (class 1259 OID 83563)
-- Dependencies: 6
-- Name: rh_percqualificacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_percqualificacao (
    idpercqualificacao integer NOT NULL,
    nivelclassificacao character varying(50),
    idescolaridadepcctae integer,
    percentualdireto double precision,
    percentualindireto double precision
);


--
-- TOC entry 2610 (class 1259 OID 83566)
-- Dependencies: 6
-- Name: rh_periodoaquisitivo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_periodoaquisitivo (
    idvinculo numeric(7,0) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    totaldias integer,
    diasusufruidos integer,
    faltas integer,
    obs character varying(200),
    dataprescricao date
);


--
-- TOC entry 2611 (class 1259 OID 83569)
-- Dependencies: 6
-- Name: rh_presente; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_presente (
    idpresente integer NOT NULL,
    idvinculo numeric(7,0) NOT NULL,
    idreuniao integer NOT NULL
);


--
-- TOC entry 2612 (class 1259 OID 83572)
-- Dependencies: 6
-- Name: rh_proades; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_proades (
    idproades integer NOT NULL,
    idsetor integer NOT NULL,
    iddirigente character(7) NOT NULL,
    datainicio date,
    datafim date,
    numpro character varying(12),
    missao character varying(500),
    objetivos character varying(1000),
    resultproades integer,
    status integer,
    idpublicacao integer,
    numportdir character varying(20),
    diaportdir integer,
    mesportdir integer,
    anoportdir integer
);


--
-- TOC entry 2613 (class 1259 OID 83578)
-- Dependencies: 6
-- Name: rh_proadesconfig; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_proadesconfig (
    idproades integer NOT NULL,
    primeirafase character(1),
    segundafase character(1),
    terceirafase character(1),
    subcoord character(1),
    pedidosubcoord character(1),
    quantsubcoord character(2),
    problemaequipe character(1)
);


--
-- TOC entry 2614 (class 1259 OID 83581)
-- Dependencies: 6
-- Name: rh_progressaocapacitacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_progressaocapacitacao (
    idprogressaocapacitacao integer NOT NULL,
    idclasse integer NOT NULL,
    cargahorariacapacitacao integer,
    nivelpadrao varchar(3) NOT NULL
);


--
-- TOC entry 2615 (class 1259 OID 83584)
-- Dependencies: 6
-- Name: rh_prorrogacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_prorrogacao (
    idvinculo numeric(7,0) NOT NULL,
    datafim date NOT NULL,
    obs character varying(200)
);


--
-- TOC entry 2616 (class 1259 OID 83587)
-- Dependencies: 6
-- Name: rh_provbkp; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_provbkp (
    idvinculo numeric(7,0) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    excedelotacao character(1) NOT NULL,
    obs character varying(500),
    regimejuridico character(3),
    idsituacao integer,
    idgrupocargo integer NOT NULL,
    idcargo integer NOT NULL,
    idsetor integer NOT NULL,
    idclasse integer,
    idreferencia integer,
    idjornada integer,
    idpublicacao integer,
    idgrupoocorrencia integer,
    idocorrencia integer
);


--
-- TOC entry 2617 (class 1259 OID 83593)
-- Dependencies: 6
-- Name: rh_provimento; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_provimento (
    idvinculo numeric(7,0) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    excedelotacao character(1) NOT NULL,
    obs character varying(500),
    regimejuridico character(3),
    idsituacao integer,
    idgrupocargo integer NOT NULL,
    idcargo integer NOT NULL,
    idsetor integer NOT NULL,
    idclasse integer,
    idreferencia integer,
    idjornada integer,
    idpublicacao integer,
    idgrupoocorrencia integer,
    idocorrencia integer,
    idambiente integer
);


--
-- TOC entry 2618 (class 1259 OID 83599)
-- Dependencies: 6
-- Name: rh_provimentoaux; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_provimentoaux (
    idvinculo numeric(7,0) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    excedelotacao character(1) NOT NULL,
    obs character varying(500),
    regimejuridico character(3),
    idsituacao integer,
    idgrupocargo integer NOT NULL,
    idcargo integer NOT NULL,
    idsetor integer NOT NULL,
    idclasse integer,
    idreferencia integer,
    idjornada integer,
    idpublicacao integer,
    idgrupoocorrencia integer,
    idocorrencia integer,
    idambiente integer
);


--
-- TOC entry 2619 (class 1259 OID 83605)
-- Dependencies: 6
-- Name: rh_provterceirizado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_provterceirizado (
    idterceirizado integer NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    idfuncaoterceirizado integer,
    idjornada integer NOT NULL,
    idocorrenciaterceirizado integer,
    idinstituicao numeric(9,0) NOT NULL,
    idlocalterceirizado integer,
    idescala integer,
    idcontrato integer
);


--
-- TOC entry 2620 (class 1259 OID 83608)
-- Dependencies: 6
-- Name: rh_publicacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_publicacao (
    idpublicacao integer NOT NULL,
    data date,
    numero character varying(20),
    autoridade character varying(20),
    datado date,
    obs character varying(500),
    iddiplomalegal integer
);


--
-- TOC entry 2621 (class 1259 OID 83614)
-- Dependencies: 6
-- Name: rh_referencia; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_referencia (
    idclasse integer NOT NULL,
    idreferencia integer NOT NULL,
    nivelpadrao character varying(3),
    idclassegrupocargo integer
);


--
-- TOC entry 2622 (class 1259 OID 83617)
-- Dependencies: 6
-- Name: rh_relatorioimportacao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_relatorioimportacao (
    idrelatorio integer NOT NULL,
    relatorio character varying(500),
    siape character(7),
    tipo character(1),
    anomes character(6)
);


--
-- TOC entry 2623 (class 1259 OID 83623)
-- Dependencies: 6
-- Name: rh_representacaopensao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_representacaopensao (
    idrepresentacao integer NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    idpessoa integer NOT NULL,
    idvinculo numeric(7,0),
    idpensionista character(8) NOT NULL,
    cartorio character varying(50),
    livro character varying(8),
    folha character varying(6)
);


--
-- TOC entry 2624 (class 1259 OID 83626)
-- Dependencies: 6
-- Name: rh_resultadoreuniao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_resultadoreuniao (
    idreuniao integer NOT NULL,
    idmeta integer NOT NULL,
    resultreuniao integer,
    justificativa character varying(300)
);


--
-- TOC entry 2625 (class 1259 OID 83629)
-- Dependencies: 6
-- Name: rh_reuniao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_reuniao (
    idreuniao integer NOT NULL,
    idproades integer NOT NULL,
    data date,
    local character varying(50),
    inicio integer,
    termino integer,
    resultreuniao integer,
    numero integer
);


--
-- TOC entry 2626 (class 1259 OID 83632)
-- Dependencies: 6
-- Name: rh_reuniaoanexo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_reuniaoanexo (
    idanexo integer NOT NULL,
    idreuniao integer,
    nome character varying(100),
    descricao character varying(500),
    tipo character varying(30),
    arquivo oid
);


--
-- TOC entry 2627 (class 1259 OID 83638)
-- Dependencies: 6
-- Name: rh_reuniaofator; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_reuniaofator (
    idreuniao integer NOT NULL,
    idfator integer NOT NULL,
    fatordificult character varying(100) NOT NULL,
    outro character(1),
    idmeta integer
);


--
-- TOC entry 2628 (class 1259 OID 83641)
-- Dependencies: 6
-- Name: rh_situacaofuncional; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_situacaofuncional (
    idsituacao integer NOT NULL,
    descricao character varying(20) NOT NULL,
    regimejuridico character(3) NOT NULL
);


--
-- TOC entry 2629 (class 1259 OID 83644)
-- Dependencies: 6
-- Name: rh_situacaoocorrencia; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_situacaoocorrencia (
    idsituacao integer NOT NULL,
    idgrupoocorrencia integer NOT NULL,
    idocorrencia integer NOT NULL
);


--
-- TOC entry 2630 (class 1259 OID 83647)
-- Dependencies: 6
-- Name: rh_substituicao; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_substituicao (
    idvinculo character(7) NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    obs character varying(200),
    datainicioremuneracao date,
    datafimremuneracao date,
    idvinculosubst character(7),
    datainiciosubst date,
    idfuncao integer,
    idpublicacao integer
);


--
-- TOC entry 2631 (class 1259 OID 83650)
-- Dependencies: 6
-- Name: rh_terceirizado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_terceirizado (
    idterceirizado integer NOT NULL,
    escolaridade character varying(50),
    idpessoa integer NOT NULL
);


--
-- TOC entry 2632 (class 1259 OID 83653)
-- Dependencies: 6
-- Name: rh_tipo0; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_tipo0 (
    anomes character(6),
    quant integer
);


--
-- TOC entry 2633 (class 1259 OID 83656)
-- Dependencies: 6
-- Name: rh_tipo1; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_tipo1 (
    unid_pagadora character varying(9),
    siape character varying(7) NOT NULL,
    dv_matricula character varying(1),
    tipo_registro character varying(1),
    sigla_uf character varying(2),
    nome_servidor character varying(60),
    cpf character varying(11),
    pis_pasep character varying(11),
    nome_mae character varying(50),
    sexo character varying(1),
    dt_nascimento character varying(8),
    estado_civil character varying(1),
    escolaridade character varying(2),
    titulacao character varying(2),
    filler1 character varying(5),
    nacionalidade character varying(1),
    naturalidade character varying(2),
    pais character varying(3),
    ano_chegada character varying(4),
    quant_dep_ir character varying(2),
    quant_dep_sf character varying(2),
    dt_prim_emp character varying(8),
    identif_origem character varying(8),
    end_logradouro character varying(40),
    end_numero character varying(6),
    end_complemento character varying(21),
    end_bairro character varying(25),
    end_municipio character varying(30),
    end_cep character varying(8),
    end_uf character varying(2),
    rg_numero character varying(14),
    rg_orgao character varying(5),
    rg_dt_emissao character varying(8),
    rg_uf character varying(2),
    tit_eleitor character varying(13),
    anomes character(6) NOT NULL,
    telefone character varying(20)
);


--
-- TOC entry 2634 (class 1259 OID 83659)
-- Dependencies: 6
-- Name: rh_tipo2; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_tipo2 (
    unid_pagadora character varying(9),
    siape character varying(7) NOT NULL,
    dv_matricula character varying(1),
    tipo_registro character varying(1),
    sigla_uf character varying(2),
    regime_juridico character varying(3),
    cod_situacao character varying(2),
    cart_trab_num character varying(6),
    cart_trab_serie character varying(5),
    cart_trab_uf character varying(2),
    banco character varying(3),
    agencia character varying(6),
    conta character varying(13),
    fgts_dt_opcao character varying(8),
    fgts_banco character varying(3),
    fgts_agencia character varying(6),
    fgts_conta character varying(13),
    jornada_trab character varying(2),
    perc_tempo_serv character varying(2),
    dt_cadast_serv character varying(8),
    ind_supr_pagto character varying(1),
    dt_supr_pagto character varying(6),
    proporc_numerad character varying(2),
    proporc_denomin character varying(2),
    cargo_grupo character varying(3),
    cargo_nome character varying(3),
    cargo_classe character varying(1),
    cargo_ref_nivel character varying(3),
    cargo_dt_entrad character varying(8),
    cargo_dt_saida character varying(8),
    funcao_sigla character varying(3),
    funcao_codnivel character varying(5),
    funcao_escolar character varying(2),
    funcao_opcao character varying(1),
    funcao_dt_ingr character varying(8),
    funcao_dt_saida character varying(8),
    funcao_unid_org character varying(9),
    nov_fc_sigla character varying(3),
    nov_fc_codnivel character varying(5),
    nov_fc_escolar character varying(2),
    nov_fc_opcao character varying(1),
    nov_fc_dt_ingr character varying(8),
    nov_fc_dt_saida character varying(8),
    nov_fc_unid_org character varying(9),
    ativid_funcao character varying(4),
    lotac_unid_org character varying(9),
    lotac_unid_dt character varying(8),
    local_orgao character varying(5),
    local_unid_org character varying(9),
    ing_org_grupo character varying(2),
    ing_org_ocor character varying(3),
    ing_org_dt character varying(8),
    ing_org_dip_cod character varying(2),
    ing_org_dip_num character varying(9),
    ing_org_dip_dt character varying(8),
    ing_sp_grupo character varying(2),
    ing_sp_ocor character varying(3),
    ing_sp_dt character varying(8),
    ing_sp_dip_cod character varying(2),
    ing_sp_dip_num character varying(9),
    ing_sp_dip_dt character varying(8),
    exclus_grupo character varying(2),
    exclus_ocor character varying(3),
    exclus_dt character varying(8),
    exclus_dip_cod character varying(2),
    exclus_dip_num character varying(9),
    exclus_dip_dt character varying(8),
    afast_grupo character varying(2),
    afast_ocor character varying(3),
    afast_dt_inic character varying(8),
    afast_dt_term character varying(8),
    afast_dip_cod character varying(2),
    afast_dip_num character varying(9),
    afast_dip_dt character varying(8),
    inativ_grupo character varying(2),
    inativ_ocor character varying(3),
    inativ_dt character varying(8),
    inativ_dip_cod character varying(2),
    inativ_dip_num character varying(9),
    inativ_dip_dt character varying(8),
    apos_num_proc character varying(15),
    apos_ano_prev character varying(4),
    apos_opcao_int character varying(1),
    uorg_controle character varying(9),
    mod_fun_grupo character varying(2),
    mod_fun_ocor character varying(3),
    mod_fun_dt character varying(8),
    mod_fun_dip_cod character varying(2),
    mod_fun_dip_num character varying(9),
    mod_fun_dip_dt character varying(8),
    reg_jur_ant character varying(3),
    sit_serv_ant character varying(2),
    mud_org_destino character varying(5),
    mud_org_dt_lib character varying(8),
    mud_org_origem character varying(5),
    orgao_anterior character varying(5),
    matric_anterior character varying(7),
    cod_org_extinto character varying(5),
    mat_serv_extint character varying(7),
    orgao_atual character varying(5),
    matric_atual character varying(7),
    mud_upag_codigo character varying(9),
    mud_upag_dt_lib character varying(8),
    mud_upag_motivo character varying(1),
    indic_pag_serv character varying(1),
    obito_cartori0 character varying(50),
    obito_livro character varying(8),
    obito_folha character varying(6),
    obito_registro character varying(8),
    obito_dt character varying(8),
    ind_exc_instit character varying(1),
    dt_exc_instit character varying(8),
    vale_al_tipo character varying(1),
    vale_al_dt_inic character varying(8),
    vale_al_dt_fim character varying(8),
    ind_oper_raiox character varying(1),
    orgao_requisit character varying(5),
    codigo_vaga character varying(7),
    mes_anuenio character varying(2),
    perc_oper_raiox character varying(5),
    posse_grupo character varying(2),
    posse_ocor character varying(3),
    posse_dt character varying(8),
    posse_dip_cod character varying(2),
    posse_dip_dt character varying(8),
    posse_dip_num character varying(9),
    rev_ati_grupo character varying(2),
    rev_ati_ocor character varying(3),
    rev_ati_dt character varying(8),
    rev_ati_dip_cod character varying(2),
    rev_ati_dip_dt character varying(8),
    rev_ati_dip_num character varying(9),
    ica_cargo character varying(1),
    ica_funcao character varying(1),
    ica_sal_familia character varying(1),
    ica_adic_tempo character varying(1),
    ica_fgts character varying(1),
    ica_inss character varying(1),
    ica_ir character varying(1),
    ica_margem_cons character varying(1),
    ica_cont_sind character varying(1),
    ica_adiant_13 character varying(1),
    ica_abate_teto character varying(1),
    ica_13_salario character varying(1),
    ica_pss_6 character varying(1),
    ica_ferias character varying(1),
    ica_pensao character varying(1),
    ica_beneficios character varying(1),
    ica_ipmf_cpmf character varying(1),
    ica_rais character varying(1),
    ica_dif_urv character varying(1),
    ica_adiant character varying(1),
    ica_rend_pasep character varying(1),
    anomes character(6) NOT NULL
);


--
-- TOC entry 2635 (class 1259 OID 83665)
-- Dependencies: 6
-- Name: rh_tipo3; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_tipo3 (
    unid_pagadora character varying(9),
    siape character varying(7),
    dv_matricula character varying(1),
    tipo_registro character varying(1),
    sigla_uf character varying(2),
    rub_rend_desc character varying(1),
    rub_codigo character varying(5),
    rub_sequencia character varying(1),
    rub_valor character varying(11),
    rub_prazo character varying(3),
    param_percent character varying(5),
    param_frac_num character varying(3),
    param_frac_den character varying(3),
    param_assunto character varying(2),
    param_niv_scn character varying(1),
    param_niv_cemp character varying(12),
    benef_nome character varying(40),
    benef_banco character varying(3),
    benef_agencia character varying(6),
    benef_conta character varying(13),
    benef_anomes character varying(6),
    anomes character(6)
);


--
-- TOC entry 2636 (class 1259 OID 83668)
-- Dependencies: 6
-- Name: rh_tipo4; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_tipo4 (
    unid_pagadora character varying(9),
    siape character varying(7) NOT NULL,
    dv_matricula character varying(1),
    tipo_registro character varying(1),
    sigla_uf character varying(2),
    total_bruto character varying(12),
    total_descontos character varying(12),
    liquido character varying(12),
    total_reg_3 character varying(3),
    anomes character(6) NOT NULL
);


--
-- TOC entry 2637 (class 1259 OID 83671)
-- Dependencies: 6
-- Name: rh_tipolicafast; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_tipolicafast (
    idtipolicafast integer NOT NULL,
    tipolicafast character(25) NOT NULL,
    descricao character varying(50)
);


--
-- TOC entry 2638 (class 1259 OID 83674)
-- Dependencies: 6
-- Name: rh_titulacaotemp; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_titulacaotemp (
    idvinculo numeric(7,0) NOT NULL,
    titulacao character varying(30)
);


--
-- TOC entry 2639 (class 1259 OID 83677)
-- Dependencies: 6
-- Name: rh_vaga; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_vaga (
    numerovaga character(7) NOT NULL,
    origem character(2),
    datainicio date,
    datafim date,
    obs character varying(180),
    idgrupocargo integer,
    idcargo integer,
    idsetor integer
);


--
-- TOC entry 2640 (class 1259 OID 83680)
-- Dependencies: 6
-- Name: rh_vantagem; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_vantagem (
    idvantagem character varying(20) NOT NULL,
    descricao character varying(60),
    ativos character(1),
    inativos character(1),
    manual character(1),
    funcdep character(1),
    falecido character(1)
);


--
-- TOC entry 2641 (class 1259 OID 83683)
-- Dependencies: 6
-- Name: rh_vinculo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_vinculo (
    idvinculo numeric(7,0) NOT NULL,
    dvidvinculo character(1) NOT NULL,
    dataposse date,
    dataexercicio date,
    classificacaoconcurso integer,
    dataconcurso date,
    datafimcontrato date,
    datavacancia date,
    saualternativo character varying(6),
    numfunc integer,
    numvinculo integer,
    idpublicacaovacancia integer,
    idfuncionario numeric(9,0) NOT NULL,
    idgrupoocorrenciavacancia integer,
    idocorrenciavacancia integer
);


--
-- TOC entry 2642 (class 1259 OID 83686)
-- Dependencies: 6
-- Name: rh_vinculocid; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_vinculocid (
    idvinculocid integer NOT NULL,
    idvinculo numeric(7,0) NOT NULL,
    cid character(3) NOT NULL,
    sub character(4) NOT NULL
);


--
-- TOC entry 2643 (class 1259 OID 83689)
-- Dependencies: 6
-- Name: rh_vinculosih; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rh_vinculosih (
    idvinculosih integer NOT NULL,
    idvinculo numeric(7,0) NOT NULL,
    idcirurgia integer NOT NULL
);


--
-- TOC entry 2644 (class 1259 OID 83692)
-- Dependencies: 6
-- Name: seq_ad_abastecimento; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_abastecimento
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2645 (class 1259 OID 83694)
-- Dependencies: 6
-- Name: seq_ad_anulacaoitem; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_anulacaoitem
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2646 (class 1259 OID 83696)
-- Dependencies: 6
-- Name: seq_ad_bolsa; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_bolsa
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2647 (class 1259 OID 83698)
-- Dependencies: 6
-- Name: seq_ad_bolsista; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_bolsista
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2648 (class 1259 OID 83700)
-- Dependencies: 6
-- Name: seq_ad_dependencia; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_dependencia
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2649 (class 1259 OID 83702)
-- Dependencies: 6
-- Name: seq_ad_empenhado; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_empenhado
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2650 (class 1259 OID 83704)
-- Dependencies: 6
-- Name: seq_ad_empenho; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_empenho
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2651 (class 1259 OID 83706)
-- Dependencies: 6
-- Name: seq_ad_empresamanutencaoveiculo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_empresamanutencaoveiculo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2652 (class 1259 OID 83708)
-- Dependencies: 6
-- Name: seq_ad_executoralmox; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_executoralmox
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2653 (class 1259 OID 83710)
-- Dependencies: 6
-- Name: seq_ad_executorservint; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_executorservint
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2654 (class 1259 OID 83712)
-- Dependencies: 6
-- Name: seq_ad_fornecedor; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_fornecedor
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2655 (class 1259 OID 83714)
-- Dependencies: 6
-- Name: seq_ad_hotel; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_hotel
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2656 (class 1259 OID 83716)
-- Dependencies: 6
-- Name: seq_ad_itemnota; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_itemnota
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2657 (class 1259 OID 83718)
-- Dependencies: 6
-- Name: seq_ad_itempatrimonio; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_itempatrimonio
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2658 (class 1259 OID 83720)
-- Dependencies: 6
-- Name: seq_ad_lancamentoint; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_lancamentoint
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2659 (class 1259 OID 83722)
-- Dependencies: 6
-- Name: seq_ad_licitacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_licitacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2660 (class 1259 OID 83724)
-- Dependencies: 6
-- Name: seq_ad_liquidacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_liquidacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2661 (class 1259 OID 83726)
-- Dependencies: 6
-- Name: seq_ad_localidadediaria; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_localidadediaria
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2662 (class 1259 OID 83728)
-- Dependencies: 6
-- Name: seq_ad_manutencaoveiculo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_manutencaoveiculo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2663 (class 1259 OID 83730)
-- Dependencies: 6
-- Name: seq_ad_material; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_material
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2664 (class 1259 OID 83732)
-- Dependencies: 6
-- Name: seq_ad_modalidadelicitacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_modalidadelicitacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2665 (class 1259 OID 83734)
-- Dependencies: 6
-- Name: seq_ad_motorista; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_motorista
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2666 (class 1259 OID 83736)
-- Dependencies: 6
-- Name: seq_ad_movimento; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_movimento
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2667 (class 1259 OID 83738)
-- Dependencies: 6
-- Name: seq_ad_movimentopat; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_movimentopat
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2668 (class 1259 OID 83740)
-- Dependencies: 6
-- Name: seq_ad_movimentopat_termo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_movimentopat_termo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2669 (class 1259 OID 83742)
-- Dependencies: 6
-- Name: seq_ad_notafiscal; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_notafiscal
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2670 (class 1259 OID 83744)
-- Dependencies: 6
-- Name: seq_ad_notafiscalmanutencaoveiculo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_notafiscalmanutencaoveiculo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2671 (class 1259 OID 83746)
-- Dependencies: 6
-- Name: seq_ad_novomaterial; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_novomaterial
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2672 (class 1259 OID 83748)
-- Dependencies: 6
-- Name: seq_ad_orcamento; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_orcamento
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2673 (class 1259 OID 83750)
-- Dependencies: 6
-- Name: seq_ad_orcamentointerno; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_orcamentointerno
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2674 (class 1259 OID 83752)
-- Dependencies: 6
-- Name: seq_ad_ordembancaria; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_ordembancaria
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2675 (class 1259 OID 83754)
-- Dependencies: 6
-- Name: seq_ad_ordementrega; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_ordementrega
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2676 (class 1259 OID 83756)
-- Dependencies: 6
-- Name: seq_ad_ordentrega; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_ordentrega
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2677 (class 1259 OID 83758)
-- Dependencies: 6
-- Name: seq_ad_prevrevisao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_prevrevisao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2678 (class 1259 OID 83760)
-- Dependencies: 6
-- Name: seq_ad_requisicao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_requisicao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2679 (class 1259 OID 83762)
-- Dependencies: 6
-- Name: seq_ad_restaurante; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_restaurante
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2680 (class 1259 OID 83764)
-- Dependencies: 6
-- Name: seq_ad_servico; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_servico
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2681 (class 1259 OID 83766)
-- Dependencies: 6
-- Name: seq_ad_solicitacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_solicitacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2682 (class 1259 OID 83768)
-- Dependencies: 6
-- Name: seq_ad_suplementacaoitem; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_suplementacaoitem
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2683 (class 1259 OID 83770)
-- Dependencies: 6
-- Name: seq_ad_tipomanutencao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_tipomanutencao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2684 (class 1259 OID 83772)
-- Dependencies: 6
-- Name: seq_ad_tipoprot; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_tipoprot
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2685 (class 1259 OID 83774)
-- Dependencies: 6
-- Name: seq_ad_tiporeq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_tiporeq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2686 (class 1259 OID 83776)
-- Dependencies: 6
-- Name: seq_ad_tiposervint; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_tiposervint
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2687 (class 1259 OID 83778)
-- Dependencies: 6
-- Name: seq_ad_uo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_ad_uo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2688 (class 1259 OID 83780)
-- Dependencies: 6
-- Name: seq_bt_artigo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_artigo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2689 (class 1259 OID 83782)
-- Dependencies: 6
-- Name: seq_bt_assunto; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_assunto
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2690 (class 1259 OID 83784)
-- Dependencies: 6
-- Name: seq_bt_autor; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_autor
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2691 (class 1259 OID 83786)
-- Dependencies: 6
-- Name: seq_bt_colecao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_colecao
    START WITH 403
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2692 (class 1259 OID 83788)
-- Dependencies: 6
-- Name: seq_bt_editora; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_editora
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2693 (class 1259 OID 83790)
-- Dependencies: 6
-- Name: seq_bt_emprestimo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_emprestimo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2694 (class 1259 OID 83792)
-- Dependencies: 6
-- Name: seq_bt_estado; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_estado
    START WITH 21
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2695 (class 1259 OID 83794)
-- Dependencies: 6
-- Name: seq_bt_etiqueta; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_etiqueta
    START WITH 211
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2696 (class 1259 OID 83796)
-- Dependencies: 6
-- Name: seq_bt_exemplar; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_exemplar
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2697 (class 1259 OID 83798)
-- Dependencies: 6
-- Name: seq_bt_exemplar_periodico; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_exemplar_periodico
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2698 (class 1259 OID 83800)
-- Dependencies: 6
-- Name: seq_bt_ficha; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_ficha
    START WITH 21
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2699 (class 1259 OID 83802)
-- Dependencies: 6
-- Name: seq_bt_genero; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_genero
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2700 (class 1259 OID 83804)
-- Dependencies: 6
-- Name: seq_bt_grupo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_grupo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2701 (class 1259 OID 83806)
-- Dependencies: 6
-- Name: seq_bt_indicadores; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_indicadores
    START WITH 1248084
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2702 (class 1259 OID 83808)
-- Dependencies: 6
-- Name: seq_bt_indicadoresperiodico; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_indicadoresperiodico
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2703 (class 1259 OID 83810)
-- Dependencies: 6
-- Name: seq_bt_infracao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_infracao
    START WITH 22
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2704 (class 1259 OID 83812)
-- Dependencies: 6
-- Name: seq_bt_logoperacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_logoperacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2705 (class 1259 OID 83814)
-- Dependencies: 6
-- Name: seq_bt_material; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_material
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2706 (class 1259 OID 83816)
-- Dependencies: 6
-- Name: seq_bt_materialartigo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_materialartigo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2707 (class 1259 OID 83818)
-- Dependencies: 6
-- Name: seq_bt_materialperiodico; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_materialperiodico
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2708 (class 1259 OID 83820)
-- Dependencies: 6
-- Name: seq_bt_multa; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_multa
    START WITH 105474
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2709 (class 1259 OID 83822)
-- Dependencies: 6
-- Name: seq_bt_notainfracao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_notainfracao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2710 (class 1259 OID 83824)
-- Dependencies: 6
-- Name: seq_bt_obra; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_obra
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2711 (class 1259 OID 83826)
-- Dependencies: 6
-- Name: seq_bt_obra_numerodaobra; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_obra_numerodaobra
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2712 (class 1259 OID 83828)
-- Dependencies: 6
-- Name: seq_bt_observacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_observacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2713 (class 1259 OID 83830)
-- Dependencies: 6
-- Name: seq_bt_opcao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_opcao
    START WITH 81
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2714 (class 1259 OID 83832)
-- Dependencies: 6
-- Name: seq_bt_opcaolista; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_opcaolista
    START WITH 1818
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2715 (class 1259 OID 83834)
-- Dependencies: 6
-- Name: seq_bt_operacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_operacao
    START WITH 121
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2716 (class 1259 OID 83836)
-- Dependencies: 6
-- Name: seq_bt_periodico; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_periodico
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2717 (class 1259 OID 83838)
-- Dependencies: 6
-- Name: seq_bt_politica; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_politica
    START WITH 81
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2718 (class 1259 OID 83840)
-- Dependencies: 6
-- Name: seq_bt_regracirculacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_regracirculacao
    START WITH 70
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2719 (class 1259 OID 83842)
-- Dependencies: 6
-- Name: seq_bt_reserva; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_reserva
    START WITH 53271
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2720 (class 1259 OID 83844)
-- Dependencies: 6
-- Name: seq_bt_situacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_situacao
    START WITH 21
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2721 (class 1259 OID 83846)
-- Dependencies: 6
-- Name: seq_bt_unidade; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_unidade
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2722 (class 1259 OID 83848)
-- Dependencies: 6
-- Name: seq_bt_validacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_bt_validacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2723 (class 1259 OID 83850)
-- Dependencies: 6
-- Name: seq_cm_arquivo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_arquivo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2724 (class 1259 OID 83852)
-- Dependencies: 6
-- Name: seq_cm_common; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_common
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2725 (class 1259 OID 83854)
-- Dependencies: 6
-- Name: seq_cm_estadocivil; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_estadocivil
    START WITH 8
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2726 (class 1259 OID 83856)
-- Dependencies: 6
-- Name: seq_cm_grupoacesso; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_grupoacesso
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2727 (class 1259 OID 83858)
-- Dependencies: 6
-- Name: seq_cm_inss; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_inss
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2728 (class 1259 OID 83860)
-- Dependencies: 6
-- Name: seq_cm_instituicao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_instituicao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2729 (class 1259 OID 83862)
-- Dependencies: 6
-- Name: seq_cm_irrf; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_irrf
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2730 (class 1259 OID 83864)
-- Dependencies: 6
-- Name: seq_cm_log; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_log
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2731 (class 1259 OID 83866)
-- Dependencies: 6
-- Name: seq_cm_municipio; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_municipio
    START WITH 10000
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2732 (class 1259 OID 83868)
-- Dependencies: 6
-- Name: seq_cm_noticia; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_noticia
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2733 (class 1259 OID 83870)
-- Dependencies: 6
-- Name: seq_cm_pais; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_pais
    START WITH 270
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2734 (class 1259 OID 83872)
-- Dependencies: 6
-- Name: seq_cm_pessoa; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_pessoa
    START WITH 0
    INCREMENT BY 1
    NO MAXVALUE
    MINVALUE 0
    CACHE 1;


--
-- TOC entry 2735 (class 1259 OID 83874)
-- Dependencies: 6
-- Name: seq_cm_sessao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_sessao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2736 (class 1259 OID 83876)
-- Dependencies: 6
-- Name: seq_cm_setor; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_setor
    START WITH 0
    INCREMENT BY 1
    NO MAXVALUE
    MINVALUE 0
    CACHE 1;


--
-- TOC entry 2737 (class 1259 OID 83878)
-- Dependencies: 6
-- Name: seq_cm_sistema; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_sistema
    START WITH 8
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2738 (class 1259 OID 83880)
-- Dependencies: 6
-- Name: seq_cm_tabelageral; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_tabelageral
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2739 (class 1259 OID 83882)
-- Dependencies: 6
-- Name: seq_cm_tabelasigaept; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_tabelasigaept
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2740 (class 1259 OID 83884)
-- Dependencies: 6
-- Name: seq_cm_tipoorganograma; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_tipoorganograma
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2741 (class 1259 OID 83886)
-- Dependencies: 6
-- Name: seq_cm_transacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_transacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2742 (class 1259 OID 83888)
-- Dependencies: 6
-- Name: seq_cm_usuario; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_cm_usuario
    START WITH 0
    INCREMENT BY 1
    NO MAXVALUE
    MINVALUE 0
    CACHE 1;


--
-- TOC entry 2743 (class 1259 OID 83890)
-- Dependencies: 6
-- Name: seq_rh_adicional; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_adicional
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2744 (class 1259 OID 83892)
-- Dependencies: 6
-- Name: seq_rh_assunto; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_assunto
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2745 (class 1259 OID 83894)
-- Dependencies: 6
-- Name: seq_rh_atividade; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_atividade
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2746 (class 1259 OID 83896)
-- Dependencies: 6
-- Name: seq_rh_ativproades; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_ativproades
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2747 (class 1259 OID 83898)
-- Dependencies: 6
-- Name: seq_rh_ausente; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_ausente
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2748 (class 1259 OID 83900)
-- Dependencies: 6
-- Name: seq_rh_averbacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_averbacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2749 (class 1259 OID 83902)
-- Dependencies: 6
-- Name: seq_rh_averbfinalidade; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_averbfinalidade
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2750 (class 1259 OID 83904)
-- Dependencies: 6
-- Name: seq_rh_calendarioferias; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_calendarioferias
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2751 (class 1259 OID 83906)
-- Dependencies: 6
-- Name: seq_rh_capacitacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_capacitacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2752 (class 1259 OID 83908)
-- Dependencies: 6
-- Name: seq_rh_capacitacaocurso; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_capacitacaocurso
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2753 (class 1259 OID 83910)
-- Dependencies: 6
-- Name: seq_rh_capacitacaoinsc; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_capacitacaoinsc
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2754 (class 1259 OID 83912)
-- Dependencies: 6
-- Name: seq_rh_capacitacaomodulo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_capacitacaomodulo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2755 (class 1259 OID 83914)
-- Dependencies: 6
-- Name: seq_rh_cargoconfianca; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_cargoconfianca
    START WITH 16
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2756 (class 1259 OID 83916)
-- Dependencies: 6
-- Name: seq_rh_cirurgia; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_cirurgia
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2757 (class 1259 OID 83918)
-- Dependencies: 6
-- Name: seq_rh_classe; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_classe
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2758 (class 1259 OID 83920)
-- Dependencies: 6
-- Name: seq_rh_contrato; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_contrato
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2759 (class 1259 OID 83922)
-- Dependencies: 6
-- Name: seq_rh_decisao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_decisao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2760 (class 1259 OID 83924)
-- Dependencies: 6
-- Name: seq_rh_dependente; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_dependente
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2761 (class 1259 OID 83926)
-- Dependencies: 6
-- Name: seq_rh_desaverbacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_desaverbacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2762 (class 1259 OID 83928)
-- Dependencies: 6
-- Name: seq_rh_dtlimiteferias; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_dtlimiteferias
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2763 (class 1259 OID 83930)
-- Dependencies: 6
-- Name: seq_rh_encaminhamento; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_encaminhamento
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2764 (class 1259 OID 83932)
-- Dependencies: 6
-- Name: seq_rh_equipe; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_equipe
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2765 (class 1259 OID 83934)
-- Dependencies: 6
-- Name: seq_rh_fichaclinica; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_fichaclinica
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2766 (class 1259 OID 83936)
-- Dependencies: 6
-- Name: seq_rh_funcao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_funcao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2767 (class 1259 OID 83938)
-- Dependencies: 6
-- Name: seq_rh_histcapacitacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_histcapacitacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2768 (class 1259 OID 83940)
-- Dependencies: 6
-- Name: seq_rh_histformacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_histformacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2769 (class 1259 OID 83942)
-- Dependencies: 6
-- Name: seq_rh_histincentivo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_histincentivo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2770 (class 1259 OID 83944)
-- Dependencies: 6
-- Name: seq_rh_historico; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_historico
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2771 (class 1259 OID 83946)
-- Dependencies: 6
-- Name: seq_rh_histtitulacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_histtitulacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2772 (class 1259 OID 83948)
-- Dependencies: 6
-- Name: seq_rh_localterceirizado; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_localterceirizado
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2773 (class 1259 OID 83950)
-- Dependencies: 6
-- Name: seq_rh_membro; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_membro
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2774 (class 1259 OID 83952)
-- Dependencies: 6
-- Name: seq_rh_meta; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_meta
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2775 (class 1259 OID 83954)
-- Dependencies: 6
-- Name: seq_rh_naohabilitado; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_naohabilitado
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2776 (class 1259 OID 83956)
-- Dependencies: 6
-- Name: seq_rh_ocupacaofuncao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_ocupacaofuncao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2777 (class 1259 OID 83958)
-- Dependencies: 6
-- Name: seq_rh_presente; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_presente
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2778 (class 1259 OID 83960)
-- Dependencies: 6
-- Name: seq_rh_proades; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_proades
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2779 (class 1259 OID 83962)
-- Dependencies: 6
-- Name: seq_rh_provimento; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_provimento
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2780 (class 1259 OID 83964)
-- Dependencies: 6
-- Name: seq_rh_publicacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_publicacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2781 (class 1259 OID 83966)
-- Dependencies: 6
-- Name: seq_rh_relatorioimportacao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_relatorioimportacao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2782 (class 1259 OID 83968)
-- Dependencies: 6
-- Name: seq_rh_representacaopensao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_representacaopensao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2783 (class 1259 OID 83970)
-- Dependencies: 6
-- Name: seq_rh_reuniao; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_reuniao
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2784 (class 1259 OID 83972)
-- Dependencies: 6
-- Name: seq_rh_reuniaoanexo; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_reuniaoanexo
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2785 (class 1259 OID 83974)
-- Dependencies: 6
-- Name: seq_rh_reuniaofator; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_reuniaofator
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2786 (class 1259 OID 83976)
-- Dependencies: 6
-- Name: seq_rh_terceirizado; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_terceirizado
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2787 (class 1259 OID 83978)
-- Dependencies: 6
-- Name: seq_rh_tipolicafast; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_tipolicafast
    START WITH 1
    INCREMENT BY 41
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2788 (class 1259 OID 83980)
-- Dependencies: 6
-- Name: seq_rh_vinculocid; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_vinculocid
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2789 (class 1259 OID 83982)
-- Dependencies: 6
-- Name: seq_rh_vinculosih; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE seq_rh_vinculosih
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2790 (class 1259 OID 83984)
-- Dependencies: 6
-- Name: temp; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE temp (
    id integer
);


--
-- TOC entry 2791 (class 1259 OID 83987)
-- Dependencies: 3083 6
-- Name: teste; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE teste (
    ativo character(1) DEFAULT 'S'::bpchar
);


--
-- TOC entry 2792 (class 1259 OID 83991)
-- Dependencies: 2880 6
-- Name: vw_depreciacao; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW vw_depreciacao AS
    SELECT ad_itempatrimonio.iditempatrimonio, ad_itempatrimonio.descricao AS item, ad_itempatrimonio.valor, ad_itempatrimonio.idsetor, ad_itempatrimonio.idvidautil AS idrubrica, ad_itempatrimonio.datainiciouso AS iniciouso, ad_vidautil.descricao AS ccontabil, ad_vidautil.valorresidual, ad_vidautil.anosvidautil AS vidautil, cm_setor.idinstituicao, cm_instituicao.sigla, (ad_vidautil.anosvidautil * 12) AS mesesdepreciacao, (ad_itempatrimonio.valor - ((ad_itempatrimonio.valor * (ad_vidautil.valorresidual)::numeric) / (100)::numeric)) AS valordepreciavel, ((ad_itempatrimonio.valor - ((ad_itempatrimonio.valor * (ad_vidautil.valorresidual)::numeric) / (100)::numeric)) / ((ad_vidautil.anosvidautil * 12))::numeric) AS valordepreciavelmes FROM (((ad_itempatrimonio LEFT JOIN ad_vidautil ON ((ad_itempatrimonio.idvidautil = ad_vidautil.idvidautil))) LEFT JOIN cm_setor ON ((ad_itempatrimonio.idsetor = cm_setor.idsetor))) LEFT JOIN cm_instituicao ON ((cm_setor.idinstituicao = cm_instituicao.idinstituicao))) ORDER BY ad_itempatrimonio.iditempatrimonio;


--
-- TOC entry 3079 (class 2604 OID 83996)
-- Dependencies: 2480 2479
-- Name: idmaterialautorartigo; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE bt_material_autor_artigo ALTER COLUMN idmaterialautorartigo SET DEFAULT nextval('bt_material_autor_artigo_idmaterialautorartigo_seq'::regclass);


--
-- TOC entry 3085 (class 2606 OID 83998)
-- Dependencies: 2341 2341
-- Name: ad_abastecimento_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_abastecimento
    ADD CONSTRAINT ad_abastecimento_pkey PRIMARY KEY (idabastecimento);


--
-- TOC entry 3126 (class 2606 OID 84000)
-- Dependencies: 2359 2359 2359
-- Name: ad_empenhadodist_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_empenhadodist
    ADD CONSTRAINT ad_empenhadodist_pkey PRIMARY KEY (idempenhado, idrequisicao);


--
-- TOC entry 3135 (class 2606 OID 84002)
-- Dependencies: 2361 2361
-- Name: ad_empresamanutencaoveiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_empresamanutencaoveiculo
    ADD CONSTRAINT ad_empresamanutencaoveiculo_pkey PRIMARY KEY (idempresa);


--
-- TOC entry 3257 (class 2606 OID 84004)
-- Dependencies: 2388 2388
-- Name: ad_itemreqxerox_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemreqxerox
    ADD CONSTRAINT ad_itemreqxerox_pkey PRIMARY KEY (idrequisicao);


--
-- TOC entry 3275 (class 2606 OID 84006)
-- Dependencies: 2394 2394
-- Name: ad_manutencaoveiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_manutencaoveiculo
    ADD CONSTRAINT ad_manutencaoveiculo_pkey PRIMARY KEY (idmanutencao);


--
-- TOC entry 3308 (class 2606 OID 84008)
-- Dependencies: 2403 2403
-- Name: ad_notafiscalmanutencaoveiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_notafiscalmanutencaoveiculo
    ADD CONSTRAINT ad_notafiscalmanutencaoveiculo_pkey PRIMARY KEY (idnotafiscal);


--
-- TOC entry 3087 (class 2606 OID 84010)
-- Dependencies: 2342 2342 2342
-- Name: ad_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_abastecimentorequisicao
    ADD CONSTRAINT ad_pkey PRIMARY KEY (idabastecimento, idrequisicao);


--
-- TOC entry 3348 (class 2606 OID 84012)
-- Dependencies: 2416 2416
-- Name: ad_prevrevisao_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_prevrevisao
    ADD CONSTRAINT ad_prevrevisao_pkey PRIMARY KEY (idprevrevisao);


--
-- TOC entry 3354 (class 2606 OID 84014)
-- Dependencies: 2419 2419 2419
-- Name: ad_reqrubrica_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_reqrubrica
    ADD CONSTRAINT ad_reqrubrica_pkey PRIMARY KEY (idrubrica, idtiporeq);


--
-- TOC entry 3390 (class 2606 OID 84016)
-- Dependencies: 2433 2433
-- Name: ad_tipomanutencao_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_tipomanutencao
    ADD CONSTRAINT ad_tipomanutencao_pkey PRIMARY KEY (idtipomanutencao);


--
-- TOC entry 3392 (class 2606 OID 84018)
-- Dependencies: 2434 2434
-- Name: ad_tipoprot_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_tipoprot
    ADD CONSTRAINT ad_tipoprot_pkey PRIMARY KEY (idtipoprot);


--
-- TOC entry 3425 (class 2606 OID 84020)
-- Dependencies: 2447 2447
-- Name: bt_artigo_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_artigo
    ADD CONSTRAINT bt_artigo_pkey PRIMARY KEY (idartigo);


--
-- TOC entry 3443 (class 2606 OID 84022)
-- Dependencies: 2455 2455
-- Name: bt_codigobarra_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_codigobarra
    ADD CONSTRAINT bt_codigobarra_pkey PRIMARY KEY (idcodigobarra);


--
-- TOC entry 3471 (class 2606 OID 84024)
-- Dependencies: 2464 2464
-- Name: bt_etiquetalombada_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_etiquetalombada
    ADD CONSTRAINT bt_etiquetalombada_pkey PRIMARY KEY (idetiqueta);


--
-- TOC entry 3481 (class 2606 OID 84026)
-- Dependencies: 2466 2466
-- Name: bt_exemplarperiodico_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_exemplarperiodico
    ADD CONSTRAINT bt_exemplarperiodico_pkey PRIMARY KEY (idexemplarperiodico);


--
-- TOC entry 3494 (class 2606 OID 84028)
-- Dependencies: 2473 2473
-- Name: bt_indicadoresperiodico_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_indicadoresperiodico
    ADD CONSTRAINT bt_indicadoresperiodico_pkey PRIMARY KEY (idindicador);


--
-- TOC entry 3512 (class 2606 OID 84030)
-- Dependencies: 2478 2478
-- Name: bt_material_assunto_artigo_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_material_assunto_artigo
    ADD CONSTRAINT bt_material_assunto_artigo_pkey PRIMARY KEY (idmaterialassuntoartigo);


--
-- TOC entry 3514 (class 2606 OID 84032)
-- Dependencies: 2479 2479
-- Name: bt_material_autor_artigo_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_material_autor_artigo
    ADD CONSTRAINT bt_material_autor_artigo_pkey PRIMARY KEY (idmaterialautorartigo);


--
-- TOC entry 3516 (class 2606 OID 84034)
-- Dependencies: 2481 2481
-- Name: bt_materialartigo_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_materialartigo
    ADD CONSTRAINT bt_materialartigo_pkey PRIMARY KEY (idmaterial);


--
-- TOC entry 3518 (class 2606 OID 84036)
-- Dependencies: 2482 2482
-- Name: bt_materialperiodico_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_materialperiodico
    ADD CONSTRAINT bt_materialperiodico_pkey PRIMARY KEY (idmaterial);


--
-- TOC entry 3542 (class 2606 OID 84038)
-- Dependencies: 2490 2490
-- Name: bt_periodico_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_periodico
    ADD CONSTRAINT bt_periodico_pkey PRIMARY KEY (idperiodico);


--
-- TOC entry 3615 (class 2606 OID 84040)
-- Dependencies: 2515 2515
-- Name: cm_inss_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_inss
    ADD CONSTRAINT cm_inss_pkey PRIMARY KEY (idinss);


--
-- TOC entry 3617 (class 2606 OID 84042)
-- Dependencies: 2516 2516
-- Name: cm_irrf_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_irrf
    ADD CONSTRAINT cm_irrf_pkey PRIMARY KEY (idirrf);


--
-- TOC entry 3648 (class 2606 OID 84044)
-- Dependencies: 2524 2524
-- Name: cm_planosaude_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_planosaude
    ADD CONSTRAINT cm_planosaude_pkey PRIMARY KEY (login);


--
-- TOC entry 3091 (class 2606 OID 84046)
-- Dependencies: 2343 2343 2343
-- Name: pk_ad_acessobolsa; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_acessobolsa
    ADD CONSTRAINT pk_ad_acessobolsa PRIMARY KEY (idusuario, idbolsa);


--
-- TOC entry 3095 (class 2606 OID 84048)
-- Dependencies: 2344 2344 2344
-- Name: pk_ad_acessouoreq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_acessouoreq
    ADD CONSTRAINT pk_ad_acessouoreq PRIMARY KEY (idusuario, iduo);


--
-- TOC entry 3330 (class 2606 OID 84050)
-- Dependencies: 2409 2409 2409 2409
-- Name: pk_ad_ad_orcinttemp; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_orcinttemp
    ADD CONSTRAINT pk_ad_ad_orcinttemp PRIMARY KEY (iduo, idrubrica, ano);


--
-- TOC entry 3097 (class 2606 OID 84052)
-- Dependencies: 2345 2345 2345
-- Name: pk_ad_andamento; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_andamento
    ADD CONSTRAINT pk_ad_andamento PRIMARY KEY (numpro, numanda);


--
-- TOC entry 3099 (class 2606 OID 84054)
-- Dependencies: 2346 2346
-- Name: pk_ad_anulacaoitem; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_anulacaoitem
    ADD CONSTRAINT pk_ad_anulacaoitem PRIMARY KEY (idanulacaoitem);


--
-- TOC entry 3101 (class 2606 OID 84056)
-- Dependencies: 2347 2347
-- Name: pk_ad_bolsa; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_bolsa
    ADD CONSTRAINT pk_ad_bolsa PRIMARY KEY (idbolsa);


--
-- TOC entry 3105 (class 2606 OID 84058)
-- Dependencies: 2348 2348
-- Name: pk_ad_bolsista; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_bolsista
    ADD CONSTRAINT pk_ad_bolsista PRIMARY KEY (idbolsista);


--
-- TOC entry 3107 (class 2606 OID 84060)
-- Dependencies: 2349 2349
-- Name: pk_ad_catmat; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_catmat
    ADD CONSTRAINT pk_ad_catmat PRIMARY KEY (codmaterial);


--
-- TOC entry 3109 (class 2606 OID 84062)
-- Dependencies: 2350 2350
-- Name: pk_ad_classificador; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_classificador
    ADD CONSTRAINT pk_ad_classificador PRIMARY KEY (idclassificador);


--
-- TOC entry 3111 (class 2606 OID 84064)
-- Dependencies: 2351 2351
-- Name: pk_ad_contrato; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_contrato
    ADD CONSTRAINT pk_ad_contrato PRIMARY KEY (idcontrato);


--
-- TOC entry 3113 (class 2606 OID 84066)
-- Dependencies: 2353 2353 2353
-- Name: pk_ad_controleprot; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_controleprot
    ADD CONSTRAINT pk_ad_controleprot PRIMARY KEY (anopro, uasg);


--
-- TOC entry 3116 (class 2606 OID 84068)
-- Dependencies: 2354 2354
-- Name: pk_ad_dependencia; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_dependencia
    ADD CONSTRAINT pk_ad_dependencia PRIMARY KEY (iddependencia);


--
-- TOC entry 3118 (class 2606 OID 84070)
-- Dependencies: 2355 2355 2355 2355
-- Name: pk_ad_diaria; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_diaria
    ADD CONSTRAINT pk_ad_diaria PRIMARY KEY (dataini, categoriadiaria, categoriafunc);


--
-- TOC entry 3120 (class 2606 OID 84072)
-- Dependencies: 2356 2356
-- Name: pk_ad_elemento; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_elemento
    ADD CONSTRAINT pk_ad_elemento PRIMARY KEY (idelemento);


--
-- TOC entry 3124 (class 2606 OID 84074)
-- Dependencies: 2357 2357
-- Name: pk_ad_empenhado; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_empenhado
    ADD CONSTRAINT pk_ad_empenhado PRIMARY KEY (idempenhado);


--
-- TOC entry 3133 (class 2606 OID 84076)
-- Dependencies: 2360 2360
-- Name: pk_ad_empenho; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_empenho
    ADD CONSTRAINT pk_ad_empenho PRIMARY KEY (idempenho);


--
-- TOC entry 3137 (class 2606 OID 84078)
-- Dependencies: 2362 2362
-- Name: pk_ad_empresapassagem; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_empresapassagem
    ADD CONSTRAINT pk_ad_empresapassagem PRIMARY KEY (idempresapassagem);


--
-- TOC entry 3141 (class 2606 OID 84080)
-- Dependencies: 2363 2363 2363
-- Name: pk_ad_estoque; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_estoque
    ADD CONSTRAINT pk_ad_estoque PRIMARY KEY (idmaterial, iduo);


--
-- TOC entry 3146 (class 2606 OID 84082)
-- Dependencies: 2364 2364 2364 2364
-- Name: pk_ad_executa; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_executa
    ADD CONSTRAINT pk_ad_executa PRIMARY KEY (idtiporeq, iduo, ano);


--
-- TOC entry 3150 (class 2606 OID 84084)
-- Dependencies: 2365 2365 2365 2365
-- Name: pk_ad_executor; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_executor
    ADD CONSTRAINT pk_ad_executor PRIMARY KEY (iduo, idusuario, datainicio);


--
-- TOC entry 3154 (class 2606 OID 84086)
-- Dependencies: 2366 2366
-- Name: pk_ad_executoralmox; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_executoralmox
    ADD CONSTRAINT pk_ad_executoralmox PRIMARY KEY (idexecutoralmox);


--
-- TOC entry 3158 (class 2606 OID 84088)
-- Dependencies: 2367 2367
-- Name: pk_ad_executorservint; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_executorservint
    ADD CONSTRAINT pk_ad_executorservint PRIMARY KEY (idexecutorservint);


--
-- TOC entry 3160 (class 2606 OID 84090)
-- Dependencies: 2368 2368
-- Name: pk_ad_fonte; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_fonte
    ADD CONSTRAINT pk_ad_fonte PRIMARY KEY (idfonte);


--
-- TOC entry 3165 (class 2606 OID 84092)
-- Dependencies: 2369 2369
-- Name: pk_ad_fornecedor; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_fornecedor
    ADD CONSTRAINT pk_ad_fornecedor PRIMARY KEY (idfornecedor);


--
-- TOC entry 3169 (class 2606 OID 84094)
-- Dependencies: 2370 2370 2370
-- Name: pk_ad_fpotencial; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_fpotencial
    ADD CONSTRAINT pk_ad_fpotencial PRIMARY KEY (idmaterial, idfornecedor);


--
-- TOC entry 3173 (class 2606 OID 84096)
-- Dependencies: 2371 2371 2371 2371
-- Name: pk_ad_funcionarioresp; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_funcionarioresp
    ADD CONSTRAINT pk_ad_funcionarioresp PRIMARY KEY (idfunc, idsetor, dataini);


--
-- TOC entry 3177 (class 2606 OID 84098)
-- Dependencies: 2372 2372 2372 2372
-- Name: pk_ad_gestor; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_gestor
    ADD CONSTRAINT pk_ad_gestor PRIMARY KEY (iduo, idusuario, datainicio);


--
-- TOC entry 3179 (class 2606 OID 84100)
-- Dependencies: 2373 2373
-- Name: pk_ad_hotel; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_hotel
    ADD CONSTRAINT pk_ad_hotel PRIMARY KEY (idhotel);


--
-- TOC entry 3182 (class 2606 OID 84102)
-- Dependencies: 2374 2374 2374
-- Name: pk_ad_itemlicitacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemlicitacao
    ADD CONSTRAINT pk_ad_itemlicitacao PRIMARY KEY (idlicitacao, item);


--
-- TOC entry 3186 (class 2606 OID 84104)
-- Dependencies: 2375 2375
-- Name: pk_ad_itemnota; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemnota
    ADD CONSTRAINT pk_ad_itemnota PRIMARY KEY (iditemnota);


--
-- TOC entry 3190 (class 2606 OID 84106)
-- Dependencies: 2376 2376
-- Name: pk_ad_itempatrimo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itempatrimo
    ADD CONSTRAINT pk_ad_itempatrimo PRIMARY KEY (idpatrimo);


--
-- TOC entry 3198 (class 2606 OID 84108)
-- Dependencies: 2377 2377
-- Name: pk_ad_itempatrimonio; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itempatrimonio
    ADD CONSTRAINT pk_ad_itempatrimonio PRIMARY KEY (iditempatrimonio);


--
-- TOC entry 3203 (class 2606 OID 84110)
-- Dependencies: 2378 2378 2378
-- Name: pk_ad_itemreq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemreq
    ADD CONSTRAINT pk_ad_itemreq PRIMARY KEY (idrequisicao, idmaterial);


--
-- TOC entry 3205 (class 2606 OID 84112)
-- Dependencies: 2379 2379 2379
-- Name: pk_ad_itemreqbib; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemreqbib
    ADD CONSTRAINT pk_ad_itemreqbib PRIMARY KEY (idrequisicao, idmaterial);


--
-- TOC entry 3212 (class 2606 OID 84114)
-- Dependencies: 2380 2380 2380
-- Name: pk_ad_itemreqdiaria; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemreqdiaria
    ADD CONSTRAINT pk_ad_itemreqdiaria PRIMARY KEY (idrequisicao, idvinculo);


--
-- TOC entry 3218 (class 2606 OID 84116)
-- Dependencies: 2381 2381 2381
-- Name: pk_ad_itemreqhotel; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemreqhotel
    ADD CONSTRAINT pk_ad_itemreqhotel PRIMARY KEY (idrequisicao, idpessoa);


--
-- TOC entry 3226 (class 2606 OID 84118)
-- Dependencies: 2382 2382 2382
-- Name: pk_ad_itemreqpassagem; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemreqpassagem
    ADD CONSTRAINT pk_ad_itemreqpassagem PRIMARY KEY (idrequisicao, idpessoa);


--
-- TOC entry 3233 (class 2606 OID 84120)
-- Dependencies: 2383 2383 2383
-- Name: pk_ad_itemreqrestaurante; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemreqrestaurante
    ADD CONSTRAINT pk_ad_itemreqrestaurante PRIMARY KEY (idrequisicao, idpessoa);


--
-- TOC entry 3237 (class 2606 OID 84122)
-- Dependencies: 2384 2384 2384
-- Name: pk_ad_itemreqservext; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemreqservext
    ADD CONSTRAINT pk_ad_itemreqservext PRIMARY KEY (idrequisicao, idservico);


--
-- TOC entry 3241 (class 2606 OID 84124)
-- Dependencies: 2385 2385 2385
-- Name: pk_ad_itemreqservint; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemreqservint
    ADD CONSTRAINT pk_ad_itemreqservint PRIMARY KEY (idrequisicao, idtiposervint);


--
-- TOC entry 3246 (class 2606 OID 84126)
-- Dependencies: 2386 2386 2386
-- Name: pk_ad_itemreqservpf; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemreqservpf
    ADD CONSTRAINT pk_ad_itemreqservpf PRIMARY KEY (idrequisicao, idpessoa);


--
-- TOC entry 3255 (class 2606 OID 84128)
-- Dependencies: 2387 2387 2387
-- Name: pk_ad_itemreqveiculo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_itemreqveiculo
    ADD CONSTRAINT pk_ad_itemreqveiculo PRIMARY KEY (idrequisicao, idpessoa);


--
-- TOC entry 3263 (class 2606 OID 84130)
-- Dependencies: 2389 2389
-- Name: pk_ad_lancamentoint; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_lancamentoint
    ADD CONSTRAINT pk_ad_lancamentoint PRIMARY KEY (idlancamentoint);


--
-- TOC entry 3267 (class 2606 OID 84132)
-- Dependencies: 2391 2391
-- Name: pk_ad_licitacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_licitacao
    ADD CONSTRAINT pk_ad_licitacao PRIMARY KEY (idlicitacao);


--
-- TOC entry 3269 (class 2606 OID 84134)
-- Dependencies: 2392 2392
-- Name: pk_ad_liquidacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_liquidacao
    ADD CONSTRAINT pk_ad_liquidacao PRIMARY KEY (idliquidacao);


--
-- TOC entry 3273 (class 2606 OID 84136)
-- Dependencies: 2393 2393
-- Name: pk_ad_localidadediaria; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_localidadediaria
    ADD CONSTRAINT pk_ad_localidadediaria PRIMARY KEY (idlocalidadediaria);


--
-- TOC entry 3279 (class 2606 OID 84138)
-- Dependencies: 2395 2395 2395 2395
-- Name: pk_ad_mapalicitacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_mapalicitacao
    ADD CONSTRAINT pk_ad_mapalicitacao PRIMARY KEY (idlicitacao, item, idfornecedor);


--
-- TOC entry 3283 (class 2606 OID 84140)
-- Dependencies: 2396 2396
-- Name: pk_ad_material; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_material
    ADD CONSTRAINT pk_ad_material PRIMARY KEY (idmaterial);


--
-- TOC entry 3285 (class 2606 OID 84142)
-- Dependencies: 2397 2397
-- Name: pk_ad_modalidadelicitacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_modalidadelicitacao
    ADD CONSTRAINT pk_ad_modalidadelicitacao PRIMARY KEY (idmodalidadelicitacao);


--
-- TOC entry 3288 (class 2606 OID 84144)
-- Dependencies: 2398 2398
-- Name: pk_ad_motorista; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_motorista
    ADD CONSTRAINT pk_ad_motorista PRIMARY KEY (idmotorista);


--
-- TOC entry 3293 (class 2606 OID 84146)
-- Dependencies: 2399 2399
-- Name: pk_ad_movimento; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_movimento
    ADD CONSTRAINT pk_ad_movimento PRIMARY KEY (idmovimento);


--
-- TOC entry 3300 (class 2606 OID 84148)
-- Dependencies: 2400 2400
-- Name: pk_ad_movimentopat; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_movimentopat
    ADD CONSTRAINT pk_ad_movimentopat PRIMARY KEY (idmovimentacao);


--
-- TOC entry 3302 (class 2606 OID 84150)
-- Dependencies: 2401 2401
-- Name: pk_ad_movimentoserv; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_movimentoserv
    ADD CONSTRAINT pk_ad_movimentoserv PRIMARY KEY (idmovimentoserv);


--
-- TOC entry 3306 (class 2606 OID 84152)
-- Dependencies: 2402 2402
-- Name: pk_ad_notafiscal; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_notafiscal
    ADD CONSTRAINT pk_ad_notafiscal PRIMARY KEY (idnotafiscal);


--
-- TOC entry 3317 (class 2606 OID 84154)
-- Dependencies: 2405 2405
-- Name: pk_ad_orcamento; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_orcamento
    ADD CONSTRAINT pk_ad_orcamento PRIMARY KEY (idorcamento);


--
-- TOC entry 3320 (class 2606 OID 84156)
-- Dependencies: 2406 2406 2406 2406
-- Name: pk_ad_orcamentohist; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_orcamentohist
    ADD CONSTRAINT pk_ad_orcamentohist PRIMARY KEY (idorcamento, data, tipoorc);


--
-- TOC entry 3324 (class 2606 OID 84158)
-- Dependencies: 2407 2407 2407 2407
-- Name: pk_ad_orcamentointerno; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_orcamentointerno
    ADD CONSTRAINT pk_ad_orcamentointerno PRIMARY KEY (iduo, idrubrica, ano);


--
-- TOC entry 3326 (class 2606 OID 84160)
-- Dependencies: 2408 2408 2408
-- Name: pk_ad_orcamentotermo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_orcamentotermo
    ADD CONSTRAINT pk_ad_orcamentotermo PRIMARY KEY (item, idlicitacao);


--
-- TOC entry 3333 (class 2606 OID 84162)
-- Dependencies: 2410 2410 2410
-- Name: pk_ad_orctermo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_orctermo
    ADD CONSTRAINT pk_ad_orctermo PRIMARY KEY (item, idlicitacao);


--
-- TOC entry 3336 (class 2606 OID 84164)
-- Dependencies: 2411 2411
-- Name: pk_ad_ordembancaria; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_ordembancaria
    ADD CONSTRAINT pk_ad_ordembancaria PRIMARY KEY (idordembancaria);


--
-- TOC entry 3339 (class 2606 OID 84166)
-- Dependencies: 2412 2412
-- Name: pk_ad_ordentrega; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_ordentrega
    ADD CONSTRAINT pk_ad_ordentrega PRIMARY KEY (idordement);


--
-- TOC entry 3342 (class 2606 OID 84168)
-- Dependencies: 2413 2413 2413 2413
-- Name: pk_ad_pagbolsa; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_pagbolsa
    ADD CONSTRAINT pk_ad_pagbolsa PRIMARY KEY (idbolsista, mesano, folha);


--
-- TOC entry 3346 (class 2606 OID 84170)
-- Dependencies: 2414 2414 2414
-- Name: pk_ad_paiempenho; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_paiempenho
    ADD CONSTRAINT pk_ad_paiempenho PRIMARY KEY (idempenhopai, idempenho);


--
-- TOC entry 3350 (class 2606 OID 84172)
-- Dependencies: 2417 2417
-- Name: pk_ad_processo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_processo
    ADD CONSTRAINT pk_ad_processo PRIMARY KEY (numpro);


--
-- TOC entry 3352 (class 2606 OID 84174)
-- Dependencies: 2418 2418
-- Name: pk_ad_ptr; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_ptr
    ADD CONSTRAINT pk_ad_ptr PRIMARY KEY (idptr);


--
-- TOC entry 3359 (class 2606 OID 84176)
-- Dependencies: 2420 2420
-- Name: pk_ad_requisicao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_requisicao
    ADD CONSTRAINT pk_ad_requisicao PRIMARY KEY (idrequisicao);


--
-- TOC entry 3364 (class 2606 OID 84178)
-- Dependencies: 2421 2421 2421 2421
-- Name: pk_ad_requisita; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_requisita
    ADD CONSTRAINT pk_ad_requisita PRIMARY KEY (idtiporeq, iduo, ano);


--
-- TOC entry 3366 (class 2606 OID 84180)
-- Dependencies: 2422 2422
-- Name: pk_ad_restaurante; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_restaurante
    ADD CONSTRAINT pk_ad_restaurante PRIMARY KEY (idrestaurante);


--
-- TOC entry 3368 (class 2606 OID 84182)
-- Dependencies: 2423 2423
-- Name: pk_ad_retencao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_retencao
    ADD CONSTRAINT pk_ad_retencao PRIMARY KEY (numpro);


--
-- TOC entry 3370 (class 2606 OID 84184)
-- Dependencies: 2424 2424
-- Name: pk_ad_rubrica; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_rubrica
    ADD CONSTRAINT pk_ad_rubrica PRIMARY KEY (idrubrica);


--
-- TOC entry 3374 (class 2606 OID 84186)
-- Dependencies: 2425 2425 2425
-- Name: pk_ad_saldolic; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_saldolic
    ADD CONSTRAINT pk_ad_saldolic PRIMARY KEY (numerolic, item);


--
-- TOC entry 3377 (class 2606 OID 84188)
-- Dependencies: 2426 2426
-- Name: pk_ad_servico; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_servico
    ADD CONSTRAINT pk_ad_servico PRIMARY KEY (idservico);


--
-- TOC entry 3379 (class 2606 OID 84190)
-- Dependencies: 2427 2427 2427
-- Name: pk_ad_setoracesso; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_setoracesso
    ADD CONSTRAINT pk_ad_setoracesso PRIMARY KEY (setor, setorfilho);


--
-- TOC entry 3381 (class 2606 OID 84192)
-- Dependencies: 2428 2428 2428 2428
-- Name: pk_ad_solicitacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_solicitacao
    ADD CONSTRAINT pk_ad_solicitacao PRIMARY KEY (idlicitacao, item, data);


--
-- TOC entry 3384 (class 2606 OID 84194)
-- Dependencies: 2430 2430 2430
-- Name: pk_ad_subelemento; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_subelemento
    ADD CONSTRAINT pk_ad_subelemento PRIMARY KEY (idelemento, idsubelemento);


--
-- TOC entry 3386 (class 2606 OID 84196)
-- Dependencies: 2431 2431
-- Name: pk_ad_suplementacaoitem; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_suplementacaoitem
    ADD CONSTRAINT pk_ad_suplementacaoitem PRIMARY KEY (idsuplementacaoitem);


--
-- TOC entry 3388 (class 2606 OID 84198)
-- Dependencies: 2432 2432
-- Name: pk_ad_taxi; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_taxi
    ADD CONSTRAINT pk_ad_taxi PRIMARY KEY (dataini);


--
-- TOC entry 3395 (class 2606 OID 84200)
-- Dependencies: 2435 2435
-- Name: pk_ad_tiporeq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_tiporeq
    ADD CONSTRAINT pk_ad_tiporeq PRIMARY KEY (idtiporeq);


--
-- TOC entry 3398 (class 2606 OID 84202)
-- Dependencies: 2436 2436
-- Name: pk_ad_tiposervint; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_tiposervint
    ADD CONSTRAINT pk_ad_tiposervint PRIMARY KEY (idtiposervint);


--
-- TOC entry 3400 (class 2606 OID 84204)
-- Dependencies: 2437 2437
-- Name: pk_ad_tipoveiculo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_tipoveiculo
    ADD CONSTRAINT pk_ad_tipoveiculo PRIMARY KEY (tipoveiculo);


--
-- TOC entry 3403 (class 2606 OID 84206)
-- Dependencies: 2438 2438 2438 2438
-- Name: pk_ad_trecho; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_trecho
    ADD CONSTRAINT pk_ad_trecho PRIMARY KEY (idrequisicao, idpessoa, idtrecho);


--
-- TOC entry 3406 (class 2606 OID 84208)
-- Dependencies: 2439 2439
-- Name: pk_ad_uo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_uo
    ADD CONSTRAINT pk_ad_uo PRIMARY KEY (iduo);


--
-- TOC entry 3416 (class 2606 OID 84210)
-- Dependencies: 2443 2443 2443
-- Name: pk_ad_uoalmox; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_uoalmox
    ADD CONSTRAINT pk_ad_uoalmox PRIMARY KEY (iduoreq, iduoalmox);


--
-- TOC entry 3418 (class 2606 OID 84212)
-- Dependencies: 2444 2444
-- Name: pk_ad_valetransporte; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_valetransporte
    ADD CONSTRAINT pk_ad_valetransporte PRIMARY KEY (dataini);


--
-- TOC entry 3421 (class 2606 OID 84214)
-- Dependencies: 2445 2445
-- Name: pk_ad_veiculo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_veiculo
    ADD CONSTRAINT pk_ad_veiculo PRIMARY KEY (placa);


--
-- TOC entry 3423 (class 2606 OID 84216)
-- Dependencies: 2446 2446
-- Name: pk_ad_vidautil; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_vidautil
    ADD CONSTRAINT pk_ad_vidautil PRIMARY KEY (idvidautil);


--
-- TOC entry 3427 (class 2606 OID 84218)
-- Dependencies: 2448 2448
-- Name: pk_bt_assunto; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_assunto
    ADD CONSTRAINT pk_bt_assunto PRIMARY KEY (idassunto);


--
-- TOC entry 3429 (class 2606 OID 86759)
-- Dependencies: 2450 2450 2450 2450
-- Name: pk_bt_autor; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_autor
    ADD CONSTRAINT pk_bt_autor PRIMARY KEY (idautor, idetiqueta, subcampo);

--
-- TOC entry 3433 (class 2606 OID 84220)
-- Dependencies: 2452 2452 2452
-- Name: pk_bt_camposfixos; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_camposfixos
    ADD CONSTRAINT pk_bt_camposfixos PRIMARY KEY (idetiqueta, idobra);


--
-- TOC entry 3437 (class 2606 OID 84222)
-- Dependencies: 2453 2453 2453
-- Name: pk_bt_camposfixosperiodico; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_camposfixosperiodico
    ADD CONSTRAINT pk_bt_camposfixosperiodico PRIMARY KEY (idetiqueta, idperiodico);


--
-- TOC entry 3441 (class 2606 OID 84224)
-- Dependencies: 2454 2454 2454 2454 2454
-- Name: pk_bt_camposubficha; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_camposubficha
    ADD CONSTRAINT pk_bt_camposubficha PRIMARY KEY (idficha, idsubficha, idetiqueta, subcampo);


--
-- TOC entry 3445 (class 2606 OID 84226)
-- Dependencies: 2456 2456
-- Name: pk_bt_colecao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_colecao
    ADD CONSTRAINT pk_bt_colecao PRIMARY KEY (idcolecao);


--
-- TOC entry 3447 (class 2606 OID 84228)
-- Dependencies: 2457 2457
-- Name: pk_bt_consulta; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_consulta
    ADD CONSTRAINT pk_bt_consulta PRIMARY KEY (idconsulta);


--
-- TOC entry 3451 (class 2606 OID 84230)
-- Dependencies: 2458 2458 2458 2458
-- Name: pk_bt_consultacampo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_consultacampo
    ADD CONSTRAINT pk_bt_consultacampo PRIMARY KEY (idconsulta, idetiqueta, subcampo);


--
-- TOC entry 3456 (class 2606 OID 84232)
-- Dependencies: 2459 2459 2459 2459
-- Name: pk_bt_direito; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_direito
    ADD CONSTRAINT pk_bt_direito PRIMARY KEY (idregracirculacao, idoperacao, idgrupo);


--
-- TOC entry 3458 (class 2606 OID 84234)
-- Dependencies: 2460 2460
-- Name: pk_bt_editora; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_editora
    ADD CONSTRAINT pk_bt_editora PRIMARY KEY (ideditora);


--
-- TOC entry 3465 (class 2606 OID 84236)
-- Dependencies: 2461 2461
-- Name: pk_bt_emprestimo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_emprestimo
    ADD CONSTRAINT pk_bt_emprestimo PRIMARY KEY (idemprestimo);


--
-- TOC entry 3467 (class 2606 OID 84238)
-- Dependencies: 2462 2462
-- Name: pk_bt_estado; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_estado
    ADD CONSTRAINT pk_bt_estado PRIMARY KEY (idestado);


--
-- TOC entry 3469 (class 2606 OID 84240)
-- Dependencies: 2463 2463
-- Name: pk_bt_etiqueta; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_etiqueta
    ADD CONSTRAINT pk_bt_etiqueta PRIMARY KEY (idetiqueta);


--
-- TOC entry 3479 (class 2606 OID 84242)
-- Dependencies: 2465 2465
-- Name: pk_bt_exemplar; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_exemplar
    ADD CONSTRAINT pk_bt_exemplar PRIMARY KEY (idexemplar);


--
-- TOC entry 3483 (class 2606 OID 84244)
-- Dependencies: 2469 2469
-- Name: pk_bt_ficha; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_ficha
    ADD CONSTRAINT pk_bt_ficha PRIMARY KEY (idficha);


--
-- TOC entry 3486 (class 2606 OID 84246)
-- Dependencies: 2470 2470
-- Name: pk_bt_genero; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_genero
    ADD CONSTRAINT pk_bt_genero PRIMARY KEY (idgenero);


--
-- TOC entry 3488 (class 2606 OID 84248)
-- Dependencies: 2471 2471
-- Name: pk_bt_grupo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_grupo
    ADD CONSTRAINT pk_bt_grupo PRIMARY KEY (idgrupo);


--
-- TOC entry 3492 (class 2606 OID 84250)
-- Dependencies: 2472 2472
-- Name: pk_bt_indicadores; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_indicadores
    ADD CONSTRAINT pk_bt_indicadores PRIMARY KEY (idindicador);


--
-- TOC entry 3498 (class 2606 OID 84252)
-- Dependencies: 2474 2474
-- Name: pk_bt_infracao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_infracao
    ADD CONSTRAINT pk_bt_infracao PRIMARY KEY (idinfracao);


--
-- TOC entry 3503 (class 2606 OID 84254)
-- Dependencies: 2475 2475
-- Name: pk_bt_logoperacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_logoperacao
    ADD CONSTRAINT pk_bt_logoperacao PRIMARY KEY (idlogoperacao);


--
-- TOC entry 3506 (class 2606 OID 84256)
-- Dependencies: 2476 2476 2476
-- Name: pk_bt_logoperacaodetalhe; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_logoperacaodetalhe
    ADD CONSTRAINT pk_bt_logoperacaodetalhe PRIMARY KEY (idlogoperacao, campo);


--
-- TOC entry 3510 (class 2606 OID 84258)
-- Dependencies: 2477 2477
-- Name: pk_bt_material; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_material
    ADD CONSTRAINT pk_bt_material PRIMARY KEY (idmaterial);


--
-- TOC entry 3521 (class 2606 OID 84260)
-- Dependencies: 2483 2483
-- Name: pk_bt_multa; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_multa
    ADD CONSTRAINT pk_bt_multa PRIMARY KEY (idmulta);


--
-- TOC entry 3525 (class 2606 OID 84262)
-- Dependencies: 2484 2484
-- Name: pk_bt_notainfracao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_notainfracao
    ADD CONSTRAINT pk_bt_notainfracao PRIMARY KEY (idnotainfracao);


--



--
-- TOC entry 3533 (class 2606 OID 84266)
-- Dependencies: 2486 2486
-- Name: pk_bt_observacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_observacao
    ADD CONSTRAINT pk_bt_observacao PRIMARY KEY (idobservacao);


--
-- TOC entry 3535 (class 2606 OID 84268)
-- Dependencies: 2487 2487
-- Name: pk_bt_opcao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_opcao
    ADD CONSTRAINT pk_bt_opcao PRIMARY KEY (idopcao);


--
-- TOC entry 3538 (class 2606 OID 84270)
-- Dependencies: 2488 2488 2488
-- Name: pk_bt_opcaolista; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_opcaolista
    ADD CONSTRAINT pk_bt_opcaolista PRIMARY KEY (idopcao, idopcaolista);


--
-- TOC entry 3540 (class 2606 OID 84272)
-- Dependencies: 2489 2489
-- Name: pk_bt_operacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_operacao
    ADD CONSTRAINT pk_bt_operacao PRIMARY KEY (idoperacao);


--
-- TOC entry 3548 (class 2606 OID 84274)
-- Dependencies: 2492 2492
-- Name: pk_bt_politica; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_politica
    ADD CONSTRAINT pk_bt_politica PRIMARY KEY (idpolitica);


--
-- TOC entry 3552 (class 2606 OID 84276)
-- Dependencies: 2493 2493 2493
-- Name: pk_bt_posicao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_posicao
    ADD CONSTRAINT pk_bt_posicao PRIMARY KEY (idetiqueta, posicao);


--
-- TOC entry 3556 (class 2606 OID 84278)
-- Dependencies: 2494 2494 2494 2494 2494
-- Name: pk_bt_posicaosubficha; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_posicaosubficha
    ADD CONSTRAINT pk_bt_posicaosubficha PRIMARY KEY (idetiqueta, posicao, idficha, idsubficha);


--
-- TOC entry 3558 (class 2606 OID 84280)
-- Dependencies: 2495 2495
-- Name: pk_bt_regracirculacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_regracirculacao
    ADD CONSTRAINT pk_bt_regracirculacao PRIMARY KEY (idregracirculacao);


--
-- TOC entry 3563 (class 2606 OID 84282)
-- Dependencies: 2496 2496
-- Name: pk_bt_reserva; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_reserva
    ADD CONSTRAINT pk_bt_reserva PRIMARY KEY (idreserva);


--
-- TOC entry 3565 (class 2606 OID 84284)
-- Dependencies: 2497 2497
-- Name: pk_bt_situacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_situacao
    ADD CONSTRAINT pk_bt_situacao PRIMARY KEY (idsituacao);


--
-- TOC entry 3569 (class 2606 OID 84286)
-- Dependencies: 2498 2498 2498
-- Name: pk_bt_subcampo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_subcampo
    ADD CONSTRAINT pk_bt_subcampo PRIMARY KEY (idetiqueta, subcampo);


--
-- TOC entry 3572 (class 2606 OID 84288)
-- Dependencies: 2499 2499 2499
-- Name: pk_bt_subficha; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_subficha
    ADD CONSTRAINT pk_bt_subficha PRIMARY KEY (idficha, idsubficha);


--
-- TOC entry 3577 (class 2606 OID 84290)
-- Dependencies: 2501 2501
-- Name: pk_bt_unidade; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_unidade
    ADD CONSTRAINT pk_bt_unidade PRIMARY KEY (idunidade);


--
-- TOC entry 3580 (class 2606 OID 84292)
-- Dependencies: 2502 2502
-- Name: pk_bt_usuarioexterno; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_usuarioexterno
    ADD CONSTRAINT pk_bt_usuarioexterno PRIMARY KEY (idusuario);


--
-- TOC entry 3583 (class 2606 OID 84294)
-- Dependencies: 2503 2503
-- Name: pk_bt_validacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_validacao
    ADD CONSTRAINT pk_bt_validacao PRIMARY KEY (idvalidacao);


--
-- TOC entry 3587 (class 2606 OID 84296)
-- Dependencies: 2504 2504 2504
-- Name: pk_bt_vinculo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_vinculo
    ADD CONSTRAINT pk_bt_vinculo PRIMARY KEY (idgrupo, idusuario);


--
-- TOC entry 3591 (class 2606 OID 84298)
-- Dependencies: 2505 2505 2505
-- Name: pk_cm_acesso; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_acesso
    ADD CONSTRAINT pk_cm_acesso PRIMARY KEY (idgrupo, idtrans);


--
-- TOC entry 3594 (class 2606 OID 84300)
-- Dependencies: 2506 2506 2506
-- Name: pk_cm_agencia; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_agencia
    ADD CONSTRAINT pk_cm_agencia PRIMARY KEY (idbanco, idagenc);


--
-- TOC entry 3596 (class 2606 OID 84302)
-- Dependencies: 2507 2507
-- Name: pk_cm_arquivo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_arquivo
    ADD CONSTRAINT pk_cm_arquivo PRIMARY KEY (idarquivo);


--
-- TOC entry 3598 (class 2606 OID 84304)
-- Dependencies: 2508 2508
-- Name: pk_cm_banco; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_banco
    ADD CONSTRAINT pk_cm_banco PRIMARY KEY (idbanco);


--
-- TOC entry 3600 (class 2606 OID 84306)
-- Dependencies: 2509 2509
-- Name: pk_cm_estadocivil; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_estadocivil
    ADD CONSTRAINT pk_cm_estadocivil PRIMARY KEY (idestadocivil);


--
-- TOC entry 3602 (class 2606 OID 84308)
-- Dependencies: 2510 2510
-- Name: pk_cm_feriado; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_feriado
    ADD CONSTRAINT pk_cm_feriado PRIMARY KEY (data);


--
-- TOC entry 3606 (class 2606 OID 84310)
-- Dependencies: 2511 2511 2511
-- Name: pk_cm_grpusuario; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_grpusuario
    ADD CONSTRAINT pk_cm_grpusuario PRIMARY KEY (idgrupo, idusuario);


--
-- TOC entry 3608 (class 2606 OID 84312)
-- Dependencies: 2512 2512
-- Name: pk_cm_grupoacesso; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_grupoacesso
    ADD CONSTRAINT pk_cm_grupoacesso PRIMARY KEY (idgrupo);


--
-- TOC entry 3610 (class 2606 OID 84314)
-- Dependencies: 2513 2513
-- Name: pk_cm_indice; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_indice
    ADD CONSTRAINT pk_cm_indice PRIMARY KEY (sigla);


--
-- TOC entry 3613 (class 2606 OID 84316)
-- Dependencies: 2514 2514
-- Name: pk_cm_indicemensal; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_indicemensal
    ADD CONSTRAINT pk_cm_indicemensal PRIMARY KEY (idindicemensal);


--
-- TOC entry 3410 (class 2606 OID 84318)
-- Dependencies: 2440 2440
-- Name: pk_cm_instituicao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_instituicao
    ADD CONSTRAINT pk_cm_instituicao PRIMARY KEY (idinstituicao);


--
-- TOC entry 3620 (class 2606 OID 84320)
-- Dependencies: 2517 2517
-- Name: pk_cm_log; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_log
    ADD CONSTRAINT pk_cm_log PRIMARY KEY (idlog);


--
-- TOC entry 3622 (class 2606 OID 84322)
-- Dependencies: 2518 2518
-- Name: pk_cm_logant; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_logant
    ADD CONSTRAINT pk_cm_logant PRIMARY KEY (idlog);


--
-- TOC entry 3627 (class 2606 OID 84324)
-- Dependencies: 2519 2519
-- Name: pk_cm_municipio; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_municipio
    ADD CONSTRAINT pk_cm_municipio PRIMARY KEY (idmunicipio);


--
-- TOC entry 3630 (class 2606 OID 84326)
-- Dependencies: 2520 2520 2520
-- Name: pk_cm_noticia; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_noticia
    ADD CONSTRAINT pk_cm_noticia PRIMARY KEY (idsistema, idnoticia);


--
-- TOC entry 3635 (class 2606 OID 84328)
-- Dependencies: 2521 2521 2521 2521
-- Name: pk_cm_organograma; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_organograma
    ADD CONSTRAINT pk_cm_organograma PRIMARY KEY (idtipoorganograma, idsetor, idsetorpai);


--
-- TOC entry 3637 (class 2606 OID 84330)
-- Dependencies: 2522 2522
-- Name: pk_cm_pais; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_pais
    ADD CONSTRAINT pk_cm_pais PRIMARY KEY (idpais);


--
-- TOC entry 3646 (class 2606 OID 84332)
-- Dependencies: 2523 2523
-- Name: pk_cm_pessoa; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_pessoa
    ADD CONSTRAINT pk_cm_pessoa PRIMARY KEY (idpessoa);


--
-- TOC entry 3651 (class 2606 OID 84334)
-- Dependencies: 2525 2525
-- Name: pk_cm_sessao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_sessao
    ADD CONSTRAINT pk_cm_sessao PRIMARY KEY (idsessao);


--
-- TOC entry 3412 (class 2606 OID 84336)
-- Dependencies: 2441 2441
-- Name: pk_cm_setor; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_setor
    ADD CONSTRAINT pk_cm_setor PRIMARY KEY (idsetor);


--
-- TOC entry 3655 (class 2606 OID 84338)
-- Dependencies: 2526 2526 2526 2526
-- Name: pk_cm_setoracesso; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_setoracesso
    ADD CONSTRAINT pk_cm_setoracesso PRIMARY KEY (idsetor, idsetoracesso, finalidade);


--
-- TOC entry 3659 (class 2606 OID 84340)
-- Dependencies: 2527 2527 2527
-- Name: pk_cm_setorequivalente; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_setorequivalente
    ADD CONSTRAINT pk_cm_setorequivalente PRIMARY KEY (idsetor, idsetorequivalente);


--
-- TOC entry 3661 (class 2606 OID 84342)
-- Dependencies: 2529 2529
-- Name: pk_cm_sistema; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_sistema
    ADD CONSTRAINT pk_cm_sistema PRIMARY KEY (idsistema);


--
-- TOC entry 3663 (class 2606 OID 84344)
-- Dependencies: 2530 2530
-- Name: pk_cm_tabelageral; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_tabelageral
    ADD CONSTRAINT pk_cm_tabelageral PRIMARY KEY (idtabelageral);


--
-- TOC entry 3665 (class 2606 OID 84346)
-- Dependencies: 2531 2531
-- Name: pk_cm_tabelasigaept; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_tabelasigaept
    ADD CONSTRAINT pk_cm_tabelasigaept PRIMARY KEY (idtabelasigaept);


--
-- TOC entry 3667 (class 2606 OID 84348)
-- Dependencies: 2532 2532
-- Name: pk_cm_tipoorganograma; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_tipoorganograma
    ADD CONSTRAINT pk_cm_tipoorganograma PRIMARY KEY (idtipoorganograma);


--
-- TOC entry 3670 (class 2606 OID 84350)
-- Dependencies: 2533 2533
-- Name: pk_cm_transacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_transacao
    ADD CONSTRAINT pk_cm_transacao PRIMARY KEY (idtrans);


--
-- TOC entry 3672 (class 2606 OID 84352)
-- Dependencies: 2534 2534
-- Name: pk_cm_uf; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_uf
    ADD CONSTRAINT pk_cm_uf PRIMARY KEY (iduf);


--
-- TOC entry 3676 (class 2606 OID 84354)
-- Dependencies: 2535 2535
-- Name: pk_cm_usuario; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cm_usuario
    ADD CONSTRAINT pk_cm_usuario PRIMARY KEY (idusuario);


--
-- TOC entry 3679 (class 2606 OID 84358)
-- Dependencies: 2536 2536
-- Name: pk_ga_aluno; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ga_aluno
    ADD CONSTRAINT pk_ga_aluno PRIMARY KEY (matricula);


--
-- TOC entry 3681 (class 2606 OID 84360)
-- Dependencies: 2537 2537
-- Name: pk_ga_situacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ga_situacao
    ADD CONSTRAINT pk_ga_situacao PRIMARY KEY (idsituacao);


--
-- TOC entry 3544 (class 2606 OID 84362)
-- Dependencies: 2491 2491
-- Name: pk_permitemulta; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bt_permitemulta
    ADD CONSTRAINT pk_permitemulta PRIMARY KEY (idpermitemulta);


--
-- TOC entry 3684 (class 2606 OID 84364)
-- Dependencies: 2539 2539 2539
-- Name: pk_rh_adicional; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_adicional
    ADD CONSTRAINT pk_rh_adicional PRIMARY KEY (idvinculo, datainicio);


--
-- TOC entry 3686 (class 2606 OID 84366)
-- Dependencies: 2540 2540
-- Name: pk_rh_ambiente; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_ambiente
    ADD CONSTRAINT pk_rh_ambiente PRIMARY KEY (idambiente);


--
-- TOC entry 3688 (class 2606 OID 84368)
-- Dependencies: 2541 2541
-- Name: pk_rh_assunto; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_assunto
    ADD CONSTRAINT pk_rh_assunto PRIMARY KEY (idassunto);


--
-- TOC entry 3691 (class 2606 OID 84370)
-- Dependencies: 2542 2542
-- Name: pk_rh_atividade; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_atividade
    ADD CONSTRAINT pk_rh_atividade PRIMARY KEY (idatividade);


--
-- TOC entry 3693 (class 2606 OID 84372)
-- Dependencies: 2544 2544
-- Name: pk_rh_ausente; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_ausente
    ADD CONSTRAINT pk_rh_ausente PRIMARY KEY (idausente);


--
-- TOC entry 3696 (class 2606 OID 84374)
-- Dependencies: 2545 2545
-- Name: pk_rh_averbacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_averbacao
    ADD CONSTRAINT pk_rh_averbacao PRIMARY KEY (idaverbacao);


--
-- TOC entry 3699 (class 2606 OID 84376)
-- Dependencies: 2546 2546 2546
-- Name: pk_rh_averbfinalidade; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_averbfinalidade
    ADD CONSTRAINT pk_rh_averbfinalidade PRIMARY KEY (idaverbacao, idaverbfinalidade);


--
-- TOC entry 3701 (class 2606 OID 84378)
-- Dependencies: 2547 2547 2547 2547
-- Name: pk_rh_baseaposentadoria; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_baseaposentadoria
    ADD CONSTRAINT pk_rh_baseaposentadoria PRIMARY KEY (idvinculo, ano, mes);


--
-- TOC entry 3703 (class 2606 OID 84380)
-- Dependencies: 2548 2548 2548
-- Name: pk_rh_capacitacaocoinc; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_capacitacaocoinc
    ADD CONSTRAINT pk_rh_capacitacaocoinc PRIMARY KEY (idmodulo1, idmodulo2);


--
-- TOC entry 3705 (class 2606 OID 84382)
-- Dependencies: 2550 2550
-- Name: pk_rh_capacitacaocurso; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_capacitacaocurso
    ADD CONSTRAINT pk_rh_capacitacaocurso PRIMARY KEY (idcurso);


--
-- TOC entry 3708 (class 2606 OID 84384)
-- Dependencies: 2552 2552
-- Name: pk_rh_capacitacaoinsc; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_capacitacaoinsc
    ADD CONSTRAINT pk_rh_capacitacaoinsc PRIMARY KEY (inscricao);


--
-- TOC entry 3710 (class 2606 OID 84386)
-- Dependencies: 2554 2554
-- Name: pk_rh_capacitacaomodulo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_capacitacaomodulo
    ADD CONSTRAINT pk_rh_capacitacaomodulo PRIMARY KEY (idmodulo);


--
-- TOC entry 3714 (class 2606 OID 84388)
-- Dependencies: 2555 2555 2555
-- Name: pk_rh_cargo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_cargo
    ADD CONSTRAINT pk_rh_cargo PRIMARY KEY (idgrupocargo, idcargo);


--
-- TOC entry 3716 (class 2606 OID 84390)
-- Dependencies: 2556 2556
-- Name: pk_rh_cargoconfianca; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_cargoconfianca
    ADD CONSTRAINT pk_rh_cargoconfianca PRIMARY KEY (idcargoconfianca);


--
-- TOC entry 3722 (class 2606 OID 84392)
-- Dependencies: 2557 2557 2557
-- Name: pk_rh_cessao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_cessao
    ADD CONSTRAINT pk_rh_cessao PRIMARY KEY (idvinculo, datainicio);


--
-- TOC entry 3724 (class 2606 OID 84394)
-- Dependencies: 2558 2558
-- Name: pk_rh_cidcategoria; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_cidcategoria
    ADD CONSTRAINT pk_rh_cidcategoria PRIMARY KEY (idcidcategoria);


--
-- TOC entry 3727 (class 2606 OID 84396)
-- Dependencies: 2559 2559 2559
-- Name: pk_rh_cidsubcategoria; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_cidsubcategoria
    ADD CONSTRAINT pk_rh_cidsubcategoria PRIMARY KEY (idcidcategoria, idcidsubcategoria);


--
-- TOC entry 3731 (class 2606 OID 84398)
-- Dependencies: 2561 2561
-- Name: pk_rh_classe; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_classe
    ADD CONSTRAINT pk_rh_classe PRIMARY KEY (idclasse);


--
-- TOC entry 3735 (class 2606 OID 84400)
-- Dependencies: 2562 2562
-- Name: pk_rh_classegrupocargo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_classegrupocargo
    ADD CONSTRAINT pk_rh_classegrupocargo PRIMARY KEY (idclassegrupocargo);


--
-- TOC entry 3741 (class 2606 OID 84402)
-- Dependencies: 2565 2565 2565 2565
-- Name: pk_rh_conprovter; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_contratoprovterceirizado
    ADD CONSTRAINT pk_rh_conprovter PRIMARY KEY (idterceirizado, datainicio, idcontrato);


--
-- TOC entry 3739 (class 2606 OID 84404)
-- Dependencies: 2564 2564
-- Name: pk_rh_contrato; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_contrato
    ADD CONSTRAINT pk_rh_contrato PRIMARY KEY (idcontrato);


--
-- TOC entry 3743 (class 2606 OID 84406)
-- Dependencies: 2566 2566
-- Name: pk_rh_decisao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_decisao
    ADD CONSTRAINT pk_rh_decisao PRIMARY KEY (iddecisao);


--
-- TOC entry 3746 (class 2606 OID 84408)
-- Dependencies: 2567 2567 2567 2567
-- Name: pk_rh_dependencia; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_dependencia
    ADD CONSTRAINT pk_rh_dependencia PRIMARY KEY (iddependente, idtipodependencia, datainicio);


--
-- TOC entry 3750 (class 2606 OID 84410)
-- Dependencies: 2568 2568
-- Name: pk_rh_dependente; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_dependente
    ADD CONSTRAINT pk_rh_dependente PRIMARY KEY (iddependente);


--
-- TOC entry 3753 (class 2606 OID 84412)
-- Dependencies: 2569 2569
-- Name: pk_rh_desaverbacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_desaverbacao
    ADD CONSTRAINT pk_rh_desaverbacao PRIMARY KEY (iddesaverbacao);


--
-- TOC entry 3755 (class 2606 OID 84414)
-- Dependencies: 2570 2570 2570
-- Name: pk_rh_designacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_designacao
    ADD CONSTRAINT pk_rh_designacao PRIMARY KEY (idvinculo, datainicio);


--
-- TOC entry 3757 (class 2606 OID 84416)
-- Dependencies: 2571 2571
-- Name: pk_rh_diplomalegal; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_diplomalegal
    ADD CONSTRAINT pk_rh_diplomalegal PRIMARY KEY (iddiplomalegal);


--
-- TOC entry 3761 (class 2606 OID 84418)
-- Dependencies: 2573 2573
-- Name: pk_rh_encaminhamento; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_encaminhamento
    ADD CONSTRAINT pk_rh_encaminhamento PRIMARY KEY (idencaminhamento);


--
-- TOC entry 3763 (class 2606 OID 84420)
-- Dependencies: 2574 2574
-- Name: pk_rh_equipe; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_equipe
    ADD CONSTRAINT pk_rh_equipe PRIMARY KEY (idequipe);


--
-- TOC entry 3770 (class 2606 OID 84422)
-- Dependencies: 2577 2577 2577 2577
-- Name: pk_rh_ferias; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_ferias
    ADD CONSTRAINT pk_rh_ferias PRIMARY KEY (idvinculoperaq, datainicioperaq, datainicio);


--
-- TOC entry 3774 (class 2606 OID 84424)
-- Dependencies: 2580 2580
-- Name: pk_rh_formacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_formacao
    ADD CONSTRAINT pk_rh_formacao PRIMARY KEY (idformacao);


--
-- TOC entry 3780 (class 2606 OID 84426)
-- Dependencies: 2581 2581
-- Name: pk_rh_funcao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_funcao
    ADD CONSTRAINT pk_rh_funcao PRIMARY KEY (idfuncao);


--
-- TOC entry 3784 (class 2606 OID 84428)
-- Dependencies: 2583 2583
-- Name: pk_rh_funcaoterceirizado; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_funcaoterceirizado
    ADD CONSTRAINT pk_rh_funcaoterceirizado PRIMARY KEY (idfuncaoterceirizado);


--
-- TOC entry 3787 (class 2606 OID 84430)
-- Dependencies: 2584 2584
-- Name: pk_rh_funcionario; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_funcionario
    ADD CONSTRAINT pk_rh_funcionario PRIMARY KEY (idfuncionario);


--
-- TOC entry 3789 (class 2606 OID 84432)
-- Dependencies: 2585 2585
-- Name: pk_rh_grupocargo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_grupocargo
    ADD CONSTRAINT pk_rh_grupocargo PRIMARY KEY (idgrupocargo);


--
-- TOC entry 3793 (class 2606 OID 84434)
-- Dependencies: 2586 2586 2586 2586
-- Name: pk_rh_grupolicafast; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_grupolicafast
    ADD CONSTRAINT pk_rh_grupolicafast PRIMARY KEY (idtipolicafast, idgrupoocorrencia, idocorrencia);


--
-- TOC entry 3795 (class 2606 OID 84436)
-- Dependencies: 2587 2587
-- Name: pk_rh_grupoocorrencia; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_grupoocorrencia
    ADD CONSTRAINT pk_rh_grupoocorrencia PRIMARY KEY (idgrupoocorrencia);


--
-- TOC entry 3801 (class 2606 OID 84438)
-- Dependencies: 2589 2589
-- Name: pk_rh_histformacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_histformacao
    ADD CONSTRAINT pk_rh_histformacao PRIMARY KEY (idhistformacao);


--
-- TOC entry 3807 (class 2606 OID 84440)
-- Dependencies: 2592 2592 2592 2592 2592
-- Name: pk_rh_histpensionista; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_histpensionista
    ADD CONSTRAINT pk_rh_histpensionista PRIMARY KEY (idvinculo, idpensionista, tipopensao, datainicio);


--
-- TOC entry 3810 (class 2606 OID 84442)
-- Dependencies: 2593 2593
-- Name: pk_rh_histtitulacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_histtitulacao
    ADD CONSTRAINT pk_rh_histtitulacao PRIMARY KEY (idhisttitulacao);


--
-- TOC entry 3814 (class 2606 OID 84444)
-- Dependencies: 2594 2594 2594 2594
-- Name: pk_rh_histvantagem; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_histvantagem
    ADD CONSTRAINT pk_rh_histvantagem PRIMARY KEY (idvinculo, idvantagem, datainicio);


--
-- TOC entry 3816 (class 2606 OID 84446)
-- Dependencies: 2596 2596
-- Name: pk_rh_jornada; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_jornada
    ADD CONSTRAINT pk_rh_jornada PRIMARY KEY (idjornada);


--
-- TOC entry 3822 (class 2606 OID 84448)
-- Dependencies: 2597 2597 2597
-- Name: pk_rh_licafast; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_licafast
    ADD CONSTRAINT pk_rh_licafast PRIMARY KEY (idvinculo, datainicio);


--
-- TOC entry 3824 (class 2606 OID 84450)
-- Dependencies: 2598 2598
-- Name: pk_rh_localterceirizado; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_localterceirizado
    ADD CONSTRAINT pk_rh_localterceirizado PRIMARY KEY (idlocalterceirizado);


--
-- TOC entry 3826 (class 2606 OID 84452)
-- Dependencies: 2599 2599
-- Name: pk_rh_membro; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_membro
    ADD CONSTRAINT pk_rh_membro PRIMARY KEY (idmembro);


--
-- TOC entry 3828 (class 2606 OID 84454)
-- Dependencies: 2600 2600
-- Name: pk_rh_meta; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_meta
    ADD CONSTRAINT pk_rh_meta PRIMARY KEY (idmeta);


--
-- TOC entry 3830 (class 2606 OID 84456)
-- Dependencies: 2601 2601
-- Name: pk_rh_naohabilitado; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_naohabilitado
    ADD CONSTRAINT pk_rh_naohabilitado PRIMARY KEY (idnaohabilitado);


--
-- TOC entry 3832 (class 2606 OID 84458)
-- Dependencies: 2602 2602
-- Name: pk_rh_nivelfuncao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_nivelfuncao
    ADD CONSTRAINT pk_rh_nivelfuncao PRIMARY KEY (idnivel);


--
-- TOC entry 3835 (class 2606 OID 84460)
-- Dependencies: 2603 2603 2603
-- Name: pk_rh_ocorrencia; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_ocorrencia
    ADD CONSTRAINT pk_rh_ocorrencia PRIMARY KEY (idgrupoocorrencia, idocorrencia);


--
-- TOC entry 3837 (class 2606 OID 84462)
-- Dependencies: 2604 2604
-- Name: pk_rh_ocorrenciaterceirizado; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_ocorrenciaterceirizado
    ADD CONSTRAINT pk_rh_ocorrenciaterceirizado PRIMARY KEY (idocorrenciaterceirizado);


--
-- TOC entry 3843 (class 2606 OID 84464)
-- Dependencies: 2605 2605
-- Name: pk_rh_ocupacaofuncao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_ocupacaofuncao
    ADD CONSTRAINT pk_rh_ocupacaofuncao PRIMARY KEY (idocupacaofuncao);


--
-- TOC entry 3847 (class 2606 OID 84466)
-- Dependencies: 2606 2606 2606
-- Name: pk_rh_ocupacaovaga; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_ocupacaovaga
    ADD CONSTRAINT pk_rh_ocupacaovaga PRIMARY KEY (idvinculo, numerovaga);


--
-- TOC entry 3853 (class 2606 OID 84468)
-- Dependencies: 2608 2608
-- Name: pk_rh_pensionista; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_pensionista
    ADD CONSTRAINT pk_rh_pensionista PRIMARY KEY (idpensionista);


--
-- TOC entry 3858 (class 2606 OID 84470)
-- Dependencies: 2610 2610 2610
-- Name: pk_rh_periodoaquisitivo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_periodoaquisitivo
    ADD CONSTRAINT pk_rh_periodoaquisitivo PRIMARY KEY (idvinculo, datainicio);


--
-- TOC entry 3860 (class 2606 OID 84472)
-- Dependencies: 2611 2611
-- Name: pk_rh_presente; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_presente
    ADD CONSTRAINT pk_rh_presente PRIMARY KEY (idpresente);


--
-- TOC entry 3862 (class 2606 OID 84474)
-- Dependencies: 2612 2612
-- Name: pk_rh_proades; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_proades
    ADD CONSTRAINT pk_rh_proades PRIMARY KEY (idproades);


--
-- TOC entry 3867 (class 2606 OID 84476)
-- Dependencies: 2615 2615 2615
-- Name: pk_rh_prorrogacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_prorrogacao
    ADD CONSTRAINT pk_rh_prorrogacao PRIMARY KEY (idvinculo, datafim);


--
-- TOC entry 3877 (class 2606 OID 84478)
-- Dependencies: 2617 2617 2617
-- Name: pk_rh_provimento; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_provimento
    ADD CONSTRAINT pk_rh_provimento PRIMARY KEY (idvinculo, datainicio);


--
-- TOC entry 3879 (class 2606 OID 84480)
-- Dependencies: 2619 2619 2619
-- Name: pk_rh_provterceirizado; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_provterceirizado
    ADD CONSTRAINT pk_rh_provterceirizado PRIMARY KEY (idterceirizado, datainicio);


--
-- TOC entry 3882 (class 2606 OID 84482)
-- Dependencies: 2620 2620
-- Name: pk_rh_publicacao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_publicacao
    ADD CONSTRAINT pk_rh_publicacao PRIMARY KEY (idpublicacao);


--
-- TOC entry 3886 (class 2606 OID 84484)
-- Dependencies: 2621 2621 2621
-- Name: pk_rh_referencia; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_referencia
    ADD CONSTRAINT pk_rh_referencia PRIMARY KEY (idclasse, idreferencia);


--
-- TOC entry 3890 (class 2606 OID 84486)
-- Dependencies: 2623 2623
-- Name: pk_rh_representacaopensao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_representacaopensao
    ADD CONSTRAINT pk_rh_representacaopensao PRIMARY KEY (idrepresentacao);


--
-- TOC entry 3892 (class 2606 OID 84488)
-- Dependencies: 2624 2624 2624
-- Name: pk_rh_resultadoreuniao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_resultadoreuniao
    ADD CONSTRAINT pk_rh_resultadoreuniao PRIMARY KEY (idreuniao, idmeta);


--
-- TOC entry 3894 (class 2606 OID 84490)
-- Dependencies: 2625 2625
-- Name: pk_rh_reuniao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_reuniao
    ADD CONSTRAINT pk_rh_reuniao PRIMARY KEY (idreuniao);


--
-- TOC entry 3896 (class 2606 OID 84492)
-- Dependencies: 2626 2626
-- Name: pk_rh_reuniaoanexo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_reuniaoanexo
    ADD CONSTRAINT pk_rh_reuniaoanexo PRIMARY KEY (idanexo);


--
-- TOC entry 3898 (class 2606 OID 84494)
-- Dependencies: 2627 2627
-- Name: pk_rh_reuniaofator; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_reuniaofator
    ADD CONSTRAINT pk_rh_reuniaofator PRIMARY KEY (idfator);


--
-- TOC entry 3900 (class 2606 OID 84496)
-- Dependencies: 2628 2628
-- Name: pk_rh_situacaofuncional; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_situacaofuncional
    ADD CONSTRAINT pk_rh_situacaofuncional PRIMARY KEY (idsituacao);


--
-- TOC entry 3904 (class 2606 OID 84498)
-- Dependencies: 2629 2629 2629 2629
-- Name: pk_rh_situacaoocorrencia; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_situacaoocorrencia
    ADD CONSTRAINT pk_rh_situacaoocorrencia PRIMARY KEY (idsituacao, idgrupoocorrencia, idocorrencia);


--
-- TOC entry 3906 (class 2606 OID 84500)
-- Dependencies: 2630 2630 2630
-- Name: pk_rh_substituicao; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_substituicao
    ADD CONSTRAINT pk_rh_substituicao PRIMARY KEY (idvinculo, datainicio);


--
-- TOC entry 3908 (class 2606 OID 84502)
-- Dependencies: 2631 2631
-- Name: pk_rh_terceirizado; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_terceirizado
    ADD CONSTRAINT pk_rh_terceirizado PRIMARY KEY (idterceirizado);


--
-- TOC entry 3910 (class 2606 OID 84504)
-- Dependencies: 2633 2633
-- Name: pk_rh_tipo1_temp; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_tipo1
    ADD CONSTRAINT pk_rh_tipo1_temp PRIMARY KEY (siape);


--
-- TOC entry 3912 (class 2606 OID 84506)
-- Dependencies: 2634 2634 2634
-- Name: pk_rh_tipo2; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_tipo2
    ADD CONSTRAINT pk_rh_tipo2 PRIMARY KEY (anomes, siape);


--
-- TOC entry 3915 (class 2606 OID 84508)
-- Dependencies: 2636 2636 2636
-- Name: pk_rh_tipo4; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_tipo4
    ADD CONSTRAINT pk_rh_tipo4 PRIMARY KEY (anomes, siape);


--
-- TOC entry 3917 (class 2606 OID 84510)
-- Dependencies: 2637 2637
-- Name: pk_rh_tipolicafast; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_tipolicafast
    ADD CONSTRAINT pk_rh_tipolicafast PRIMARY KEY (idtipolicafast);


--
-- TOC entry 3919 (class 2606 OID 84512)
-- Dependencies: 2638 2638
-- Name: pk_rh_titulacaotemp; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_titulacaotemp
    ADD CONSTRAINT pk_rh_titulacaotemp PRIMARY KEY (idvinculo);


--
-- TOC entry 3922 (class 2606 OID 84514)
-- Dependencies: 2639 2639
-- Name: pk_rh_vaga; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_vaga
    ADD CONSTRAINT pk_rh_vaga PRIMARY KEY (numerovaga);


--
-- TOC entry 3924 (class 2606 OID 84516)
-- Dependencies: 2640 2640
-- Name: pk_rh_vantagem; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_vantagem
    ADD CONSTRAINT pk_rh_vantagem PRIMARY KEY (idvantagem);


--
-- TOC entry 3929 (class 2606 OID 84518)
-- Dependencies: 2641 2641
-- Name: pk_rh_vinculo; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_vinculo
    ADD CONSTRAINT pk_rh_vinculo PRIMARY KEY (idvinculo);


--
-- TOC entry 3729 (class 2606 OID 84520)
-- Dependencies: 2560 2560
-- Name: rh_cirurgia_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_cirurgia
    ADD CONSTRAINT rh_cirurgia_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3772 (class 2606 OID 84522)
-- Dependencies: 2578 2578
-- Name: rh_fichaclinica_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_fichaclinica
    ADD CONSTRAINT rh_fichaclinica_pkey PRIMARY KEY (idfichaclinica);


--
-- TOC entry 3797 (class 2606 OID 84524)
-- Dependencies: 2588 2588
-- Name: rh_histcapacitacao_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_histcapacitacao
    ADD CONSTRAINT rh_histcapacitacao_pkey PRIMARY KEY (idhistcapacitacao);


--
-- TOC entry 3803 (class 2606 OID 84526)
-- Dependencies: 2590 2590
-- Name: rh_histincentivo_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_histincentivo
    ADD CONSTRAINT rh_histincentivo_pkey PRIMARY KEY (idhistincentivo);


--
-- TOC entry 3805 (class 2606 OID 84528)
-- Dependencies: 2591 2591
-- Name: rh_historico_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_historico
    ADD CONSTRAINT rh_historico_pkey PRIMARY KEY (idhistorico);


--
-- TOC entry 3855 (class 2606 OID 84530)
-- Dependencies: 2609 2609
-- Name: rh_percqualificacao_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_percqualificacao
    ADD CONSTRAINT rh_percqualificacao_pkey PRIMARY KEY (idpercqualificacao);


--
-- TOC entry 3864 (class 2606 OID 84532)
-- Dependencies: 2614 2614
-- Name: rh_progressaocapacitacao_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_progressaocapacitacao
    ADD CONSTRAINT rh_progressaocapacitacao_pkey PRIMARY KEY (idprogressaocapacitacao);


--
-- TOC entry 3888 (class 2606 OID 84534)
-- Dependencies: 2622 2622
-- Name: rh_relatorioimportacao_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_relatorioimportacao
    ADD CONSTRAINT rh_relatorioimportacao_pkey PRIMARY KEY (idrelatorio);


--
-- TOC entry 3931 (class 2606 OID 84536)
-- Dependencies: 2642 2642
-- Name: rh_vinculocid_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_vinculocid
    ADD CONSTRAINT rh_vinculocid_pkey PRIMARY KEY (idvinculocid);


--
-- TOC entry 3933 (class 2606 OID 84538)
-- Dependencies: 2643 2643
-- Name: rh_vinculosih_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_vinculosih
    ADD CONSTRAINT rh_vinculosih_pkey PRIMARY KEY (idvinculosih);


--
-- TOC entry 3849 (class 2606 OID 84540)
-- Dependencies: 2607 2607
-- Name: sys_c0010067; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_origemvaga
    ADD CONSTRAINT sys_c0010067 PRIMARY KEY (idorigemvaga);


--
-- TOC entry 3737 (class 2606 OID 84542)
-- Dependencies: 2563 2563
-- Name: sys_c002612; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_contagem
    ADD CONSTRAINT sys_c002612 PRIMARY KEY (idvinc);


--
-- TOC entry 3782 (class 2606 OID 84544)
-- Dependencies: 2582 2582
-- Name: sys_c006028; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_funcaoatual
    ADD CONSTRAINT sys_c006028 PRIMARY KEY (idvinculo);


--
-- TOC entry 3312 (class 2606 OID 84546)
-- Dependencies: 2404 2404
-- Name: sys_c006134; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ad_novomaterial
    ADD CONSTRAINT sys_c006134 PRIMARY KEY (idnovomaterial);


--
-- TOC entry 3759 (class 2606 OID 84548)
-- Dependencies: 2572 2572
-- Name: sys_c006526; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_dtlimiteferias
    ADD CONSTRAINT sys_c006526 PRIMARY KEY (iddtlimiteferias);


--
-- TOC entry 3765 (class 2606 OID 84550)
-- Dependencies: 2575 2575
-- Name: sys_c009267; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_escala
    ADD CONSTRAINT sys_c009267 PRIMARY KEY (idescala);


--
-- TOC entry 3767 (class 2606 OID 84552)
-- Dependencies: 2576 2576
-- Name: sys_c009826; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rh_escolaridadepcctae
    ADD CONSTRAINT sys_c009826 PRIMARY KEY (idescolaridadepcctae);


--
-- TOC entry 3331 (class 1259 OID 84553)
-- Dependencies: 2410 2410
-- Name: fki_ad_orctermo1_ad_il; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX fki_ad_orctermo1_ad_il ON ad_orctermo USING btree (idlicitacao, itemdef);


--
-- TOC entry 3088 (class 1259 OID 84554)
-- Dependencies: 2343
-- Name: idx_ad_acessobolsa1_ad_bo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_acessobolsa1_ad_bo ON ad_acessobolsa USING btree (idbolsa);


--
-- TOC entry 3089 (class 1259 OID 84555)
-- Dependencies: 2343
-- Name: idx_ad_acessobolsa2_cm_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_acessobolsa2_cm_us ON ad_acessobolsa USING btree (idusuario);


--
-- TOC entry 3092 (class 1259 OID 84556)
-- Dependencies: 2344
-- Name: idx_ad_acessouoreq1_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_acessouoreq1_ad_uo ON ad_acessouoreq USING btree (iduo);


--
-- TOC entry 3093 (class 1259 OID 84557)
-- Dependencies: 2344
-- Name: idx_ad_acessouoreq2_cm_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_acessouoreq2_cm_us ON ad_acessouoreq USING btree (idusuario);


--
-- TOC entry 3102 (class 1259 OID 84558)
-- Dependencies: 2348
-- Name: idx_ad_bolsista1_ad_bo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_bolsista1_ad_bo ON ad_bolsista USING btree (idbolsa);


--
-- TOC entry 3103 (class 1259 OID 84559)
-- Dependencies: 2348
-- Name: idx_ad_bolsista2_cm_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_bolsista2_cm_pe ON ad_bolsista USING btree (idpessoa);


--
-- TOC entry 3114 (class 1259 OID 84560)
-- Dependencies: 2354
-- Name: idx_ad_dependencia1_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_dependencia1_cm_se ON ad_dependencia USING btree (idsetor);


--
-- TOC entry 3121 (class 1259 OID 84561)
-- Dependencies: 2357
-- Name: idx_ad_empenhado1_ad_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_empenhado1_ad_em ON ad_empenhado USING btree (idempenho);


--
-- TOC entry 3122 (class 1259 OID 84562)
-- Dependencies: 2357 2357
-- Name: idx_ad_empenhado2_ad_it; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_empenhado2_ad_it ON ad_empenhado USING btree (idlicitacao, item);


--
-- TOC entry 3127 (class 1259 OID 84563)
-- Dependencies: 2360
-- Name: idx_ad_empenho; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX idx_ad_empenho ON ad_empenho USING btree (numero);


--
-- TOC entry 3128 (class 1259 OID 84564)
-- Dependencies: 2360
-- Name: idx_ad_empenho1_ad_fo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_empenho1_ad_fo ON ad_empenho USING btree (idfornecedor);


--
-- TOC entry 3129 (class 1259 OID 84565)
-- Dependencies: 2360
-- Name: idx_ad_empenho3_ad_pr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_empenho3_ad_pr ON ad_empenho USING btree (numpro);


--
-- TOC entry 3130 (class 1259 OID 84566)
-- Dependencies: 2360
-- Name: idx_ad_empenho4_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_empenho4_ad_uo ON ad_empenho USING btree (iduo);


--
-- TOC entry 3131 (class 1259 OID 84567)
-- Dependencies: 2360
-- Name: idx_ad_empenho5_ad_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_empenho5_ad_em ON ad_empenho USING btree (idempenhoref);


--
-- TOC entry 3138 (class 1259 OID 84568)
-- Dependencies: 2363
-- Name: idx_ad_estoque1_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_estoque1_ad_uo ON ad_estoque USING btree (iduo);


--
-- TOC entry 3139 (class 1259 OID 84569)
-- Dependencies: 2363
-- Name: idx_ad_estoque2_ad_ma; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_estoque2_ad_ma ON ad_estoque USING btree (idmaterial);


--
-- TOC entry 3142 (class 1259 OID 84570)
-- Dependencies: 2364
-- Name: idx_ad_executa1_ad_ru; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_executa1_ad_ru ON ad_executa USING btree (idrubrica);


--
-- TOC entry 3143 (class 1259 OID 84571)
-- Dependencies: 2364
-- Name: idx_ad_executa1_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_executa1_ad_uo ON ad_executa USING btree (iduo);


--
-- TOC entry 3144 (class 1259 OID 84572)
-- Dependencies: 2364
-- Name: idx_ad_executa2_ad_ti; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_executa2_ad_ti ON ad_executa USING btree (idtiporeq);


--
-- TOC entry 3147 (class 1259 OID 84573)
-- Dependencies: 2365
-- Name: idx_ad_executor1_cm_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_executor1_cm_us ON ad_executor USING btree (idusuario);


--
-- TOC entry 3148 (class 1259 OID 84574)
-- Dependencies: 2365
-- Name: idx_ad_executor2_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_executor2_ad_uo ON ad_executor USING btree (iduo);


--
-- TOC entry 3151 (class 1259 OID 84575)
-- Dependencies: 2366
-- Name: idx_ad_executoralmox1_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_executoralmox1_ad_uo ON ad_executoralmox USING btree (iduoexecutante);


--
-- TOC entry 3152 (class 1259 OID 84576)
-- Dependencies: 2366
-- Name: idx_ad_executoralmox2_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_executoralmox2_ad_uo ON ad_executoralmox USING btree (iduorequisitante);


--
-- TOC entry 3155 (class 1259 OID 84577)
-- Dependencies: 2367
-- Name: idx_ad_executorservint1_ad_ti; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_executorservint1_ad_ti ON ad_executorservint USING btree (idtiposervint);


--
-- TOC entry 3156 (class 1259 OID 84578)
-- Dependencies: 2367
-- Name: idx_ad_executorservint2_cm_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_executorservint2_cm_us ON ad_executorservint USING btree (idusuario);


--
-- TOC entry 3161 (class 1259 OID 84579)
-- Dependencies: 2369
-- Name: idx_ad_fornecedor1_cm_in; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_fornecedor1_cm_in ON ad_fornecedor USING btree (idinstituicao);


--
-- TOC entry 3162 (class 1259 OID 84580)
-- Dependencies: 2369
-- Name: idx_ad_fornecedor2_cm_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_fornecedor2_cm_pe ON ad_fornecedor USING btree (idpessoa);


--
-- TOC entry 3163 (class 1259 OID 84581)
-- Dependencies: 2369
-- Name: idx_ad_fornecedor3_cm_ag; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_fornecedor3_cm_ag ON ad_fornecedor USING btree (idagenc);


--
-- TOC entry 3166 (class 1259 OID 84582)
-- Dependencies: 2370
-- Name: idx_ad_fpotencial1_ad_fo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_fpotencial1_ad_fo ON ad_fpotencial USING btree (idfornecedor);


--
-- TOC entry 3167 (class 1259 OID 84583)
-- Dependencies: 2370
-- Name: idx_ad_fpotencial2_ad_ma; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_fpotencial2_ad_ma ON ad_fpotencial USING btree (idmaterial);


--
-- TOC entry 3170 (class 1259 OID 84584)
-- Dependencies: 2371
-- Name: idx_ad_funcionarioresp1_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_funcionarioresp1_cm_se ON ad_funcionarioresp USING btree (idsetor);


--
-- TOC entry 3171 (class 1259 OID 84585)
-- Dependencies: 2371
-- Name: idx_ad_funcionarioresp2_rh_fu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_funcionarioresp2_rh_fu ON ad_funcionarioresp USING btree (idfunc);


--
-- TOC entry 3174 (class 1259 OID 84586)
-- Dependencies: 2372
-- Name: idx_ad_gestor1_cm_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_gestor1_cm_us ON ad_gestor USING btree (idusuario);


--
-- TOC entry 3175 (class 1259 OID 84587)
-- Dependencies: 2372
-- Name: idx_ad_gestor2_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_gestor2_ad_uo ON ad_gestor USING btree (iduo);


--
-- TOC entry 3180 (class 1259 OID 84588)
-- Dependencies: 2374
-- Name: idx_ad_itemlicitacao1_ad_li; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemlicitacao1_ad_li ON ad_itemlicitacao USING btree (idlicitacao);


--
-- TOC entry 3183 (class 1259 OID 84589)
-- Dependencies: 2375
-- Name: idx_ad_itemnota1_ad_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemnota1_ad_em ON ad_itemnota USING btree (idempenhado);


--
-- TOC entry 3184 (class 1259 OID 84590)
-- Dependencies: 2375
-- Name: idx_ad_itemnota2_ad_no; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemnota2_ad_no ON ad_itemnota USING btree (idnotafiscal);


--
-- TOC entry 3187 (class 1259 OID 84591)
-- Dependencies: 2376
-- Name: idx_ad_itempatrimo1_ad_ma; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itempatrimo1_ad_ma ON ad_itempatrimo USING btree (idmaterial);


--
-- TOC entry 3188 (class 1259 OID 84592)
-- Dependencies: 2376
-- Name: idx_ad_itempatrimo2_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itempatrimo2_cm_se ON ad_itempatrimo USING btree (idsetor);


--
-- TOC entry 3191 (class 1259 OID 84593)
-- Dependencies: 2377
-- Name: idx_ad_itempatrimonio1_ad_de; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itempatrimonio1_ad_de ON ad_itempatrimonio USING btree (iddependencia);


--
-- TOC entry 3192 (class 1259 OID 84594)
-- Dependencies: 2377
-- Name: idx_ad_itempatrimonio2_ad_ma; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itempatrimonio2_ad_ma ON ad_itempatrimonio USING btree (idmaterial);


--
-- TOC entry 3193 (class 1259 OID 84595)
-- Dependencies: 2377
-- Name: idx_ad_itempatrimonio3_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itempatrimonio3_cm_se ON ad_itempatrimonio USING btree (idsetor);


--
-- TOC entry 3194 (class 1259 OID 84596)
-- Dependencies: 2377
-- Name: idx_ad_itempatrimonio4_ad_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itempatrimonio4_ad_em ON ad_itempatrimonio USING btree (idempenhado);


--
-- TOC entry 3195 (class 1259 OID 84597)
-- Dependencies: 2377
-- Name: idx_ad_itempatrimonio5_ad_cl; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itempatrimonio5_ad_cl ON ad_itempatrimonio USING btree (idclassificador);


--
-- TOC entry 3196 (class 1259 OID 84598)
-- Dependencies: 2377
-- Name: idx_ad_itempatrimonio6_proce; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itempatrimonio6_proce ON ad_itempatrimonio USING btree (numpro);


--
-- TOC entry 3199 (class 1259 OID 84599)
-- Dependencies: 2378
-- Name: idx_ad_itemreq1_ad_ma; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreq1_ad_ma ON ad_itemreq USING btree (idmaterial);


--
-- TOC entry 3200 (class 1259 OID 84600)
-- Dependencies: 2378
-- Name: idx_ad_itemreq2_ad_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreq2_ad_re ON ad_itemreq USING btree (idrequisicao);


--
-- TOC entry 3201 (class 1259 OID 84601)
-- Dependencies: 2378 2378
-- Name: idx_ad_itemreq3_ad_it; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreq3_ad_it ON ad_itemreq USING btree (idlicitacao, item);


--
-- TOC entry 3206 (class 1259 OID 84602)
-- Dependencies: 2380
-- Name: idx_ad_itemreqdiaria1_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqdiaria1_rh_vi ON ad_itemreqdiaria USING btree (idvinculo);


--
-- TOC entry 3207 (class 1259 OID 84603)
-- Dependencies: 2380
-- Name: idx_ad_itemreqdiaria2_ad_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqdiaria2_ad_re ON ad_itemreqdiaria USING btree (idrequisicao);


--
-- TOC entry 3208 (class 1259 OID 84604)
-- Dependencies: 2380
-- Name: idx_ad_itemreqdiaria2_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqdiaria2_rh_vi ON ad_itemreqdiaria USING btree (idvinculoprop);


--
-- TOC entry 3209 (class 1259 OID 84605)
-- Dependencies: 2380
-- Name: idx_ad_itemreqdiaria3_ad_pr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqdiaria3_ad_pr ON ad_itemreqdiaria USING btree (numpro);


--
-- TOC entry 3210 (class 1259 OID 84606)
-- Dependencies: 2380
-- Name: idx_ad_itemreqdiaria4_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqdiaria4_rh_vi ON ad_itemreqdiaria USING btree (idvinculochefe);


--
-- TOC entry 3213 (class 1259 OID 84607)
-- Dependencies: 2381
-- Name: idx_ad_itemreqhotel1_cm_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqhotel1_cm_pe ON ad_itemreqhotel USING btree (idpessoa);


--
-- TOC entry 3214 (class 1259 OID 84608)
-- Dependencies: 2381
-- Name: idx_ad_itemreqhotel2_ad_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqhotel2_ad_re ON ad_itemreqhotel USING btree (idrequisicao);


--
-- TOC entry 3215 (class 1259 OID 84609)
-- Dependencies: 2381
-- Name: idx_ad_itemreqhotel3_ad_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqhotel3_ad_em ON ad_itemreqhotel USING btree (idempenho);


--
-- TOC entry 3216 (class 1259 OID 84610)
-- Dependencies: 2381
-- Name: idx_ad_itemreqhotel4_ad_ho; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqhotel4_ad_ho ON ad_itemreqhotel USING btree (idhotelpref);


--
-- TOC entry 3219 (class 1259 OID 84611)
-- Dependencies: 2382
-- Name: idx_ad_itemreqpassagem1_cm_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqpassagem1_cm_pe ON ad_itemreqpassagem USING btree (idpessoa);


--
-- TOC entry 3220 (class 1259 OID 84612)
-- Dependencies: 2382
-- Name: idx_ad_itemreqpassagem2_ad_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqpassagem2_ad_re ON ad_itemreqpassagem USING btree (idrequisicao);


--
-- TOC entry 3221 (class 1259 OID 84613)
-- Dependencies: 2382
-- Name: idx_ad_itemreqpassagem3_ad_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqpassagem3_ad_em ON ad_itemreqpassagem USING btree (idempenho);


--
-- TOC entry 3222 (class 1259 OID 84614)
-- Dependencies: 2382
-- Name: idx_ad_itemreqpassagem4_cm_mu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqpassagem4_cm_mu ON ad_itemreqpassagem USING btree (idmunicipioorigem);


--
-- TOC entry 3223 (class 1259 OID 84615)
-- Dependencies: 2382
-- Name: idx_ad_itemreqpassagem5_cm_mu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqpassagem5_cm_mu ON ad_itemreqpassagem USING btree (idmunicipiodestino);


--
-- TOC entry 3224 (class 1259 OID 84616)
-- Dependencies: 2382
-- Name: idx_ad_itemreqpassagem7_ad_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqpassagem7_ad_em ON ad_itemreqpassagem USING btree (idempresapassagem);


--
-- TOC entry 3227 (class 1259 OID 84617)
-- Dependencies: 2383
-- Name: idx_ad_itemreqrest1_cm_p; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqrest1_cm_p ON ad_itemreqrestaurante USING btree (idpessoa);


--
-- TOC entry 3228 (class 1259 OID 84618)
-- Dependencies: 2383
-- Name: idx_ad_itemreqrest2_ad_r; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqrest2_ad_r ON ad_itemreqrestaurante USING btree (idrequisicao);


--
-- TOC entry 3229 (class 1259 OID 84619)
-- Dependencies: 2383
-- Name: idx_ad_itemreqrest3_ad_e; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqrest3_ad_e ON ad_itemreqrestaurante USING btree (idempenho);


--
-- TOC entry 3230 (class 1259 OID 84620)
-- Dependencies: 2383
-- Name: idx_ad_itemreqrest4_cm_p; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqrest4_cm_p ON ad_itemreqrestaurante USING btree (idpessoaacompanhante);


--
-- TOC entry 3231 (class 1259 OID 84621)
-- Dependencies: 2383
-- Name: idx_ad_itemreqrest5_ad_r; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqrest5_ad_r ON ad_itemreqrestaurante USING btree (idrestaurantepref);


--
-- TOC entry 3234 (class 1259 OID 84622)
-- Dependencies: 2384
-- Name: idx_ad_itemreqservext1_ad_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqservext1_ad_re ON ad_itemreqservext USING btree (idrequisicao);


--
-- TOC entry 3235 (class 1259 OID 84623)
-- Dependencies: 2384 2384
-- Name: idx_ad_itemreqservext2_ad_it; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqservext2_ad_it ON ad_itemreqservext USING btree (idlicitacao, item);


--
-- TOC entry 3238 (class 1259 OID 84624)
-- Dependencies: 2385
-- Name: idx_ad_itemreqservint1_ad_ti; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqservint1_ad_ti ON ad_itemreqservint USING btree (idtiposervint);


--
-- TOC entry 3239 (class 1259 OID 84625)
-- Dependencies: 2385
-- Name: idx_ad_itemreqservint2_ad_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqservint2_ad_re ON ad_itemreqservint USING btree (idrequisicao);


--
-- TOC entry 3242 (class 1259 OID 84626)
-- Dependencies: 2386
-- Name: idx_ad_itemreqservpf1_cm_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqservpf1_cm_pe ON ad_itemreqservpf USING btree (idpessoa);


--
-- TOC entry 3243 (class 1259 OID 84627)
-- Dependencies: 2386
-- Name: idx_ad_itemreqservpf2_ad_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqservpf2_ad_re ON ad_itemreqservpf USING btree (idrequisicao);


--
-- TOC entry 3244 (class 1259 OID 84628)
-- Dependencies: 2386
-- Name: idx_ad_itemreqservpf3_ad_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqservpf3_ad_em ON ad_itemreqservpf USING btree (idempenho);


--
-- TOC entry 3247 (class 1259 OID 84629)
-- Dependencies: 2387
-- Name: idx_ad_itemreqveiculo1_cm_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqveiculo1_cm_pe ON ad_itemreqveiculo USING btree (idpessoa);


--
-- TOC entry 3248 (class 1259 OID 84630)
-- Dependencies: 2387
-- Name: idx_ad_itemreqveiculo2_ad_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqveiculo2_ad_re ON ad_itemreqveiculo USING btree (idrequisicao);


--
-- TOC entry 3249 (class 1259 OID 84631)
-- Dependencies: 2387
-- Name: idx_ad_itemreqveiculo3_ad_ve; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqveiculo3_ad_ve ON ad_itemreqveiculo USING btree (placa);


--
-- TOC entry 3250 (class 1259 OID 84632)
-- Dependencies: 2387
-- Name: idx_ad_itemreqveiculo4_ad_mo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqveiculo4_ad_mo ON ad_itemreqveiculo USING btree (idmotorista);


--
-- TOC entry 3251 (class 1259 OID 84633)
-- Dependencies: 2387
-- Name: idx_ad_itemreqveiculo5_cm_mu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqveiculo5_cm_mu ON ad_itemreqveiculo USING btree (idmunicipiodestino);


--
-- TOC entry 3252 (class 1259 OID 84634)
-- Dependencies: 2387
-- Name: idx_ad_itemreqveiculo6_cm_mu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqveiculo6_cm_mu ON ad_itemreqveiculo USING btree (idmunicipioorigem);


--
-- TOC entry 3253 (class 1259 OID 84635)
-- Dependencies: 2387
-- Name: idx_ad_itemreqveiculo7_ad_ti; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_itemreqveiculo7_ad_ti ON ad_itemreqveiculo USING btree (tipoveiculo);


--
-- TOC entry 3258 (class 1259 OID 84636)
-- Dependencies: 2389
-- Name: idx_ad_lancamentoint1_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_lancamentoint1_ad_uo ON ad_lancamentoint USING btree (iduoreq);


--
-- TOC entry 3259 (class 1259 OID 84637)
-- Dependencies: 2389
-- Name: idx_ad_lancamentoint2_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_lancamentoint2_ad_uo ON ad_lancamentoint USING btree (iduoexec);


--
-- TOC entry 3260 (class 1259 OID 84638)
-- Dependencies: 2389
-- Name: idx_ad_lancamentoint3_ad_ru; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_lancamentoint3_ad_ru ON ad_lancamentoint USING btree (idrubrica);


--
-- TOC entry 3261 (class 1259 OID 84639)
-- Dependencies: 2389
-- Name: idx_ad_lancamentoint4_ad_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_lancamentoint4_ad_re ON ad_lancamentoint USING btree (idrequisicao);


--
-- TOC entry 3264 (class 1259 OID 84640)
-- Dependencies: 2391
-- Name: idx_ad_licitacao1_ad_mo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_licitacao1_ad_mo ON ad_licitacao USING btree (idmodalidadelicitacao);


--
-- TOC entry 3265 (class 1259 OID 84641)
-- Dependencies: 2391
-- Name: idx_ad_licitacao2_ad_pr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_licitacao2_ad_pr ON ad_licitacao USING btree (numpro);


--
-- TOC entry 3270 (class 1259 OID 84642)
-- Dependencies: 2393
-- Name: idx_ad_localidadediaria1_cm_mu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_localidadediaria1_cm_mu ON ad_localidadediaria USING btree (idmunicipio);


--
-- TOC entry 3271 (class 1259 OID 84643)
-- Dependencies: 2393 2393
-- Name: idx_ad_localidadediaria2_ad_it; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_localidadediaria2_ad_it ON ad_localidadediaria USING btree (idrequisicao, idvinculo);


--
-- TOC entry 3276 (class 1259 OID 84644)
-- Dependencies: 2395
-- Name: idx_ad_mapalicitacao1_ad_fo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_mapalicitacao1_ad_fo ON ad_mapalicitacao USING btree (idfornecedor);


--
-- TOC entry 3277 (class 1259 OID 84645)
-- Dependencies: 2395 2395
-- Name: idx_ad_mapalicitacao2_ad_it; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_mapalicitacao2_ad_it ON ad_mapalicitacao USING btree (idlicitacao, item);


--
-- TOC entry 3280 (class 1259 OID 84646)
-- Dependencies: 2396
-- Name: idx_ad_material1_ad_ca; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_material1_ad_ca ON ad_material USING btree (codmaterial);


--
-- TOC entry 3281 (class 1259 OID 84647)
-- Dependencies: 2396 2396
-- Name: idx_ad_material2_ad_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_material2_ad_su ON ad_material USING btree (idelemento, idsubelemento);


--
-- TOC entry 3286 (class 1259 OID 84648)
-- Dependencies: 2398
-- Name: idx_ad_motorista1_cm_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_motorista1_cm_pe ON ad_motorista USING btree (idpessoa);


--
-- TOC entry 3289 (class 1259 OID 84649)
-- Dependencies: 2399
-- Name: idx_ad_movimento1_ad_mo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_movimento1_ad_mo ON ad_movimento USING btree (iditemnota);


--
-- TOC entry 3290 (class 1259 OID 84650)
-- Dependencies: 2399
-- Name: idx_ad_movimento1_ad_or; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_movimento1_ad_or ON ad_movimento USING btree (idordement);


--
-- TOC entry 3291 (class 1259 OID 84651)
-- Dependencies: 2399 2399
-- Name: idx_ad_movimento2_ad_it; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_movimento2_ad_it ON ad_movimento USING btree (idrequisicao, idmaterial);


--
-- TOC entry 3294 (class 1259 OID 84652)
-- Dependencies: 2400
-- Name: idx_ad_movimentopat1_ad_de; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_movimentopat1_ad_de ON ad_movimentopat USING btree (iddependenciaorigem);


--
-- TOC entry 3295 (class 1259 OID 84653)
-- Dependencies: 2400
-- Name: idx_ad_movimentopat2_ad_it; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_movimentopat2_ad_it ON ad_movimentopat USING btree (iditempatrimonio);


--
-- TOC entry 3296 (class 1259 OID 84654)
-- Dependencies: 2400
-- Name: idx_ad_movimentopat3_ad_de; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_movimentopat3_ad_de ON ad_movimentopat USING btree (iddependenciadestino);


--
-- TOC entry 3297 (class 1259 OID 84655)
-- Dependencies: 2400
-- Name: idx_ad_movimentopat4_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_movimentopat4_cm_se ON ad_movimentopat USING btree (idsetororigem);


--
-- TOC entry 3298 (class 1259 OID 84656)
-- Dependencies: 2400
-- Name: idx_ad_movimentopat5_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_movimentopat5_cm_se ON ad_movimentopat USING btree (idsetordestino);


--
-- TOC entry 3303 (class 1259 OID 84657)
-- Dependencies: 2402
-- Name: idx_ad_notafiscal1_ad_li; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_notafiscal1_ad_li ON ad_notafiscal USING btree (idliquidacao);


--
-- TOC entry 3304 (class 1259 OID 84658)
-- Dependencies: 2402
-- Name: idx_ad_notafiscal2_ad_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_notafiscal2_ad_em ON ad_notafiscal USING btree (idempenho);


--
-- TOC entry 3309 (class 1259 OID 84659)
-- Dependencies: 2404
-- Name: idx_ad_novomaterial1_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_novomaterial1_ad_uo ON ad_novomaterial USING btree (iduoreq);


--
-- TOC entry 3310 (class 1259 OID 84660)
-- Dependencies: 2404
-- Name: idx_ad_novomaterial2_cm_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_novomaterial2_cm_us ON ad_novomaterial USING btree (idusuario);


--
-- TOC entry 3313 (class 1259 OID 84661)
-- Dependencies: 2405
-- Name: idx_ad_orcamento1_ad_pt; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_orcamento1_ad_pt ON ad_orcamento USING btree (idptr);


--
-- TOC entry 3314 (class 1259 OID 84662)
-- Dependencies: 2405
-- Name: idx_ad_orcamento2_ad_fo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_orcamento2_ad_fo ON ad_orcamento USING btree (idfonte);


--
-- TOC entry 3315 (class 1259 OID 84663)
-- Dependencies: 2405
-- Name: idx_ad_orcamento3_ad_ru; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_orcamento3_ad_ru ON ad_orcamento USING btree (idrubrica);


--
-- TOC entry 3318 (class 1259 OID 84664)
-- Dependencies: 2406
-- Name: idx_ad_orcamentohist1_ad_or; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_orcamentohist1_ad_or ON ad_orcamentohist USING btree (idorcamento);


--
-- TOC entry 3321 (class 1259 OID 84665)
-- Dependencies: 2407
-- Name: idx_ad_orcamentointerno1_ad_ru; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_orcamentointerno1_ad_ru ON ad_orcamentointerno USING btree (idrubrica);


--
-- TOC entry 3322 (class 1259 OID 84666)
-- Dependencies: 2407
-- Name: idx_ad_orcamentointerno2_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_orcamentointerno2_ad_uo ON ad_orcamentointerno USING btree (iduo);


--
-- TOC entry 3327 (class 1259 OID 84667)
-- Dependencies: 2409
-- Name: idx_ad_orcinttemp2_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_orcinttemp2_ad_uo ON ad_orcinttemp USING btree (iduo);


--
-- TOC entry 3328 (class 1259 OID 84668)
-- Dependencies: 2409
-- Name: idx_ad_orcinttemp_ad_ru; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_orcinttemp_ad_ru ON ad_orcinttemp USING btree (idrubrica);


--
-- TOC entry 3334 (class 1259 OID 84669)
-- Dependencies: 2411
-- Name: idx_ad_ordembancaria1_ad_li; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_ordembancaria1_ad_li ON ad_ordembancaria USING btree (idliquidacao);


--
-- TOC entry 3337 (class 1259 OID 84670)
-- Dependencies: 2412
-- Name: idx_ad_ordentrega1_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_ordentrega1_ad_uo ON ad_ordentrega USING btree (iduoexec);


--
-- TOC entry 3340 (class 1259 OID 84671)
-- Dependencies: 2413
-- Name: idx_ad_pagbolsa1_ad_bo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_pagbolsa1_ad_bo ON ad_pagbolsa USING btree (idbolsista);


--
-- TOC entry 3343 (class 1259 OID 84672)
-- Dependencies: 2414
-- Name: idx_ad_paiempenho1_ad_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_paiempenho1_ad_em ON ad_paiempenho USING btree (idempenhopai);


--
-- TOC entry 3344 (class 1259 OID 84673)
-- Dependencies: 2414
-- Name: idx_ad_paiempenho2_ad_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_paiempenho2_ad_em ON ad_paiempenho USING btree (idempenho);


--
-- TOC entry 3355 (class 1259 OID 84674)
-- Dependencies: 2420
-- Name: idx_ad_requisicao2_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_requisicao2_ad_uo ON ad_requisicao USING btree (iduoreq);


--
-- TOC entry 3356 (class 1259 OID 84675)
-- Dependencies: 2420
-- Name: idx_ad_requisicao3_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_requisicao3_ad_uo ON ad_requisicao USING btree (iduoexec);


--
-- TOC entry 3357 (class 1259 OID 84676)
-- Dependencies: 2420
-- Name: idx_ad_requisicao4_cm_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_requisicao4_cm_us ON ad_requisicao USING btree (idusuarioreq);


--
-- TOC entry 3360 (class 1259 OID 84677)
-- Dependencies: 2421
-- Name: idx_ad_requisita1_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_requisita1_ad_uo ON ad_requisita USING btree (iduo);


--
-- TOC entry 3361 (class 1259 OID 84678)
-- Dependencies: 2421
-- Name: idx_ad_requisita2_ad_ti; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_requisita2_ad_ti ON ad_requisita USING btree (idtiporeq);


--
-- TOC entry 3362 (class 1259 OID 84679)
-- Dependencies: 2421
-- Name: idx_ad_requisita3_ad_ru; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_requisita3_ad_ru ON ad_requisita USING btree (idrubrica);


--
-- TOC entry 3371 (class 1259 OID 84680)
-- Dependencies: 2425
-- Name: idx_ad_saldolic1_ad_ma; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_saldolic1_ad_ma ON ad_saldolic USING btree (idmaterial);


--
-- TOC entry 3372 (class 1259 OID 84681)
-- Dependencies: 2425
-- Name: idx_ad_saldolic2_ad_fo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_saldolic2_ad_fo ON ad_saldolic USING btree (idfornecedor);


--
-- TOC entry 3375 (class 1259 OID 84682)
-- Dependencies: 2426 2426
-- Name: idx_ad_servico1_ad_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_servico1_ad_su ON ad_servico USING btree (idelemento, idsubelemento);


--
-- TOC entry 3382 (class 1259 OID 84683)
-- Dependencies: 2430
-- Name: idx_ad_subelemento1_ad_el; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_subelemento1_ad_el ON ad_subelemento USING btree (idelemento);


--
-- TOC entry 3393 (class 1259 OID 84684)
-- Dependencies: 2435
-- Name: idx_ad_tiporeq1_ad_ru; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_tiporeq1_ad_ru ON ad_tiporeq USING btree (idrubrica);


--
-- TOC entry 3396 (class 1259 OID 84685)
-- Dependencies: 2436
-- Name: idx_ad_tiposervint1_ad_ru; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_tiposervint1_ad_ru ON ad_tiposervint USING btree (idrubrica);


--
-- TOC entry 3401 (class 1259 OID 84686)
-- Dependencies: 2438 2438
-- Name: idx_ad_trecho1_ad_it; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_trecho1_ad_it ON ad_trecho USING btree (idrequisicao, idpessoa);


--
-- TOC entry 3404 (class 1259 OID 84687)
-- Dependencies: 2439
-- Name: idx_ad_uo1_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_uo1_cm_se ON ad_uo USING btree (idsetor);


--
-- TOC entry 3413 (class 1259 OID 84688)
-- Dependencies: 2443
-- Name: idx_ad_uoalmox1_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_uoalmox1_ad_uo ON ad_uoalmox USING btree (iduoalmox);


--
-- TOC entry 3414 (class 1259 OID 84689)
-- Dependencies: 2443
-- Name: idx_ad_uoalmox2_ad_uo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_uoalmox2_ad_uo ON ad_uoalmox USING btree (iduoreq);


--
-- TOC entry 3419 (class 1259 OID 84690)
-- Dependencies: 2445
-- Name: idx_ad_veiculo1_ad_ti; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_ad_veiculo1_ad_ti ON ad_veiculo USING btree (tipoveiculo);


--
-- TOC entry 3430 (class 1259 OID 84691)
-- Dependencies: 2452
-- Name: idx_bt_camposfixos1_bt_ob; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_camposfixos1_bt_ob ON bt_camposfixos USING btree (idobra);


--
-- TOC entry 3431 (class 1259 OID 84692)
-- Dependencies: 2452
-- Name: idx_bt_camposfixos2_bt_et; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_camposfixos2_bt_et ON bt_camposfixos USING btree (idetiqueta);


--
-- TOC entry 3434 (class 1259 OID 84693)
-- Dependencies: 2453
-- Name: idx_bt_camposfixosperiodico0_bt_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_camposfixosperiodico0_bt_pe ON bt_camposfixosperiodico USING btree (idperiodico);


--
-- TOC entry 3435 (class 1259 OID 84694)
-- Dependencies: 2453
-- Name: idx_bt_camposfixosperiodico1_bt_et; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_camposfixosperiodico1_bt_et ON bt_camposfixosperiodico USING btree (idetiqueta);


--
-- TOC entry 3438 (class 1259 OID 84695)
-- Dependencies: 2454 2454
-- Name: idx_bt_camposubficha1_bt_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_camposubficha1_bt_su ON bt_camposubficha USING btree (idetiqueta, subcampo);


--
-- TOC entry 3439 (class 1259 OID 84696)
-- Dependencies: 2454 2454
-- Name: idx_bt_camposubficha2_bt_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_camposubficha2_bt_su ON bt_camposubficha USING btree (idficha, idsubficha);


--
-- TOC entry 3448 (class 1259 OID 84697)
-- Dependencies: 2458 2458
-- Name: idx_bt_consultacampo1_bt_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_consultacampo1_bt_su ON bt_consultacampo USING btree (idetiqueta, subcampo);


--
-- TOC entry 3449 (class 1259 OID 84698)
-- Dependencies: 2458
-- Name: idx_bt_consultacampo2_bt_co; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_consultacampo2_bt_co ON bt_consultacampo USING btree (idconsulta);


--
-- TOC entry 3452 (class 1259 OID 84699)
-- Dependencies: 2459
-- Name: idx_bt_direito1_bt_gr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_direito1_bt_gr ON bt_direito USING btree (idgrupo);


--
-- TOC entry 3453 (class 1259 OID 84700)
-- Dependencies: 2459
-- Name: idx_bt_direito2_bt_op; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_direito2_bt_op ON bt_direito USING btree (idoperacao);


--
-- TOC entry 3454 (class 1259 OID 84701)
-- Dependencies: 2459
-- Name: idx_bt_direito3_bt_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_direito3_bt_re ON bt_direito USING btree (idregracirculacao);


--
-- TOC entry 3459 (class 1259 OID 84702)
-- Dependencies: 2461
-- Name: idx_bt_emprestimo1_bt_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_emprestimo1_bt_us ON bt_emprestimo USING btree (idusuario);


--
-- TOC entry 3460 (class 1259 OID 84703)
-- Dependencies: 2461
-- Name: idx_bt_emprestimo2_bt_ex; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_emprestimo2_bt_ex ON bt_emprestimo USING btree (idexemplar);


--
-- TOC entry 3461 (class 1259 OID 84704)
-- Dependencies: 2461
-- Name: idx_bt_emprestimo3_dtdevolucao; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_emprestimo3_dtdevolucao ON bt_emprestimo USING btree (datahoradadevolucao);


--
-- TOC entry 3462 (class 1259 OID 84705)
-- Dependencies: 2461
-- Name: idx_bt_emprestimo4_dtemp; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_emprestimo4_dtemp ON bt_emprestimo USING btree (datahoradoemprestimo);


--
-- TOC entry 3463 (class 1259 OID 84706)
-- Dependencies: 2461
-- Name: idx_bt_emprestimo5_dtprev; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_emprestimo5_dtprev ON bt_emprestimo USING btree (datahoraprevisaodevolucao);


--
-- TOC entry 3472 (class 1259 OID 84707)
-- Dependencies: 2465
-- Name: idx_bt_exemplar1_bt_es; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_exemplar1_bt_es ON bt_exemplar USING btree (idestado);


--
-- TOC entry 3473 (class 1259 OID 84708)
-- Dependencies: 2465
-- Name: idx_bt_exemplar2_bt_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_exemplar2_bt_re ON bt_exemplar USING btree (idregracirculacao);


--
-- TOC entry 3474 (class 1259 OID 84709)
-- Dependencies: 2465
-- Name: idx_bt_exemplar3_bt_un; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_exemplar3_bt_un ON bt_exemplar USING btree (idunidade);


--
-- TOC entry 3475 (class 1259 OID 84710)
-- Dependencies: 2465
-- Name: idx_bt_exemplar4_bt_co; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_exemplar4_bt_co ON bt_exemplar USING btree (idcolecao);


--
-- TOC entry 3476 (class 1259 OID 84711)
-- Dependencies: 2465
-- Name: idx_bt_exemplar5_bt_ob; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_exemplar5_bt_ob ON bt_exemplar USING btree (idobra);


--
-- TOC entry 3477 (class 1259 OID 84712)
-- Dependencies: 2465
-- Name: idx_bt_exemplar_numerodotombo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX idx_bt_exemplar_numerodotombo ON bt_exemplar USING btree (numerodotombo);


--
-- TOC entry 3484 (class 1259 OID 84713)
-- Dependencies: 2470
-- Name: idx_bt_genero1_bt_fi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_genero1_bt_fi ON bt_genero USING btree (idficha);


--
-- TOC entry 3489 (class 1259 OID 84714)
-- Dependencies: 2472
-- Name: idx_bt_indicadores0_bt_et; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_indicadores0_bt_et ON bt_indicadores USING btree (idetiqueta);


--
-- TOC entry 3490 (class 1259 OID 84715)
-- Dependencies: 2472
-- Name: idx_bt_indicadores1_bt_ob; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_indicadores1_bt_ob ON bt_indicadores USING btree (idobra);


--
-- TOC entry 3495 (class 1259 OID 84716)
-- Dependencies: 2473
-- Name: idx_bt_indicadoresperiodico0_bt_et; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_indicadoresperiodico0_bt_et ON bt_indicadoresperiodico USING btree (idetiqueta);


--
-- TOC entry 3496 (class 1259 OID 84717)
-- Dependencies: 2473
-- Name: idx_bt_indicadoresperiodico1_bt_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_indicadoresperiodico1_bt_pe ON bt_indicadoresperiodico USING btree (idperiodico);


--
-- TOC entry 3499 (class 1259 OID 84718)
-- Dependencies: 2475
-- Name: idx_bt_logoperacao1_bt_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_logoperacao1_bt_us ON bt_logoperacao USING btree (idusuario);


--
-- TOC entry 3500 (class 1259 OID 84719)
-- Dependencies: 2475
-- Name: idx_bt_logoperacao2_bt_op; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_logoperacao2_bt_op ON bt_logoperacao USING btree (idoperacao);


--
-- TOC entry 3501 (class 1259 OID 84720)
-- Dependencies: 2475
-- Name: idx_bt_logoperacao3_ident; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_logoperacao3_ident ON bt_logoperacao USING btree (identificador);


--
-- TOC entry 3504 (class 1259 OID 84721)
-- Dependencies: 2476
-- Name: idx_bt_logoperacaodet1_bt_l; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_logoperacaodet1_bt_l ON bt_logoperacaodetalhe USING btree (idlogoperacao);


--
-- TOC entry 3507 (class 1259 OID 84722)
-- Dependencies: 2477 2477
-- Name: idx_bt_material1_bt_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_material1_bt_su ON bt_material USING btree (idetiqueta, subcampo);


--
-- TOC entry 3508 (class 1259 OID 84723)
-- Dependencies: 2477
-- Name: idx_bt_material2_bt_ob; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_material2_bt_ob ON bt_material USING btree (idobra);


--
-- TOC entry 3519 (class 1259 OID 84724)
-- Dependencies: 2483
-- Name: idx_bt_multa1_bt_em; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_multa1_bt_em ON bt_multa USING btree (idemprestimo);


--
-- TOC entry 3522 (class 1259 OID 84725)
-- Dependencies: 2484
-- Name: idx_bt_notainfracao1_bt_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_notainfracao1_bt_us ON bt_notainfracao USING btree (idusuario);


--
-- TOC entry 3523 (class 1259 OID 84726)
-- Dependencies: 2484
-- Name: idx_bt_notainfracao2_bt_in; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_notainfracao2_bt_in ON bt_notainfracao USING btree (idinfracao);


--
-- TOC entry 3526 (class 1259 OID 84727)
-- Dependencies: 2485
-- Name: idx_bt_obra1_bt_ge; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_obra1_bt_ge ON bt_obra USING btree (idgenero);


--
-- TOC entry 3527 (class 1259 OID 84728)
-- Dependencies: 2485
-- Name: idx_bt_obra2_bt_ed; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_obra2_bt_ed ON bt_obra USING btree (ideditora);


--
-- TOC entry 3528 (class 1259 OID 84729)
-- Dependencies: 2485
-- Name: idx_bt_obra_numerodaobra; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_obra_numerodaobra ON bt_obra USING btree (numerodaobra);


--
-- TOC entry 3531 (class 1259 OID 84730)
-- Dependencies: 2486
-- Name: idx_bt_observacao1_bt_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_observacao1_bt_us ON bt_observacao USING btree (idusuario);


--
-- TOC entry 3536 (class 1259 OID 84731)
-- Dependencies: 2488
-- Name: idx_bt_opcaolista1_bt_op; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_opcaolista1_bt_op ON bt_opcaolista USING btree (idopcao);


--
-- TOC entry 3545 (class 1259 OID 84732)
-- Dependencies: 2492
-- Name: idx_bt_politica2_bt_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_politica2_bt_re ON bt_politica USING btree (idregracirculacao);


--
-- TOC entry 3546 (class 1259 OID 84733)
-- Dependencies: 2492
-- Name: idx_bt_politica3_bt_gr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_politica3_bt_gr ON bt_politica USING btree (idgrupo);


--
-- TOC entry 3549 (class 1259 OID 84734)
-- Dependencies: 2493
-- Name: idx_bt_posicao1_bt_et; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_posicao1_bt_et ON bt_posicao USING btree (idetiqueta);


--
-- TOC entry 3550 (class 1259 OID 84735)
-- Dependencies: 2493
-- Name: idx_bt_posicao2_bt_op; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_posicao2_bt_op ON bt_posicao USING btree (idopcao);


--
-- TOC entry 3553 (class 1259 OID 84736)
-- Dependencies: 2494 2494
-- Name: idx_bt_posicaosubficha1_bt_su; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_posicaosubficha1_bt_su ON bt_posicaosubficha USING btree (idficha, idsubficha);


--
-- TOC entry 3554 (class 1259 OID 84737)
-- Dependencies: 2494 2494
-- Name: idx_bt_posicaosubficha2_bt_po; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_posicaosubficha2_bt_po ON bt_posicaosubficha USING btree (idetiqueta, posicao);


--
-- TOC entry 3559 (class 1259 OID 84738)
-- Dependencies: 2496
-- Name: idx_bt_reserva1_bt_si; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_reserva1_bt_si ON bt_reserva USING btree (idsituacao);


--
-- TOC entry 3560 (class 1259 OID 84739)
-- Dependencies: 2496
-- Name: idx_bt_reserva2_bt_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_reserva2_bt_us ON bt_reserva USING btree (idusuario);


--
-- TOC entry 3561 (class 1259 OID 84740)
-- Dependencies: 2496
-- Name: idx_bt_reserva3_bt_ex; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_reserva3_bt_ex ON bt_reserva USING btree (idexemplar);


--
-- TOC entry 3566 (class 1259 OID 84741)
-- Dependencies: 2498
-- Name: idx_bt_subcampo1_bt_et; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_subcampo1_bt_et ON bt_subcampo USING btree (idetiqueta);


--
-- TOC entry 3567 (class 1259 OID 84742)
-- Dependencies: 2498
-- Name: idx_bt_subcampo2_bt_op; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_subcampo2_bt_op ON bt_subcampo USING btree (idopcao);


--
-- TOC entry 3570 (class 1259 OID 84743)
-- Dependencies: 2499
-- Name: idx_bt_subficha1_bt_fi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_subficha1_bt_fi ON bt_subficha USING btree (idficha);


--
-- TOC entry 3573 (class 1259 OID 84744)
-- Dependencies: 2500
-- Name: idx_bt_transicao0_bt_es; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_transicao0_bt_es ON bt_transicao USING btree (idestadopresente);


--
-- TOC entry 3574 (class 1259 OID 84745)
-- Dependencies: 2500
-- Name: idx_bt_transicao1_bt_es; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_transicao1_bt_es ON bt_transicao USING btree (idestadofuturo);


--
-- TOC entry 3575 (class 1259 OID 84746)
-- Dependencies: 2500
-- Name: idx_bt_transicao2_bt_op; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_transicao2_bt_op ON bt_transicao USING btree (idoperacao);


--
-- TOC entry 3578 (class 1259 OID 84747)
-- Dependencies: 2502
-- Name: idx_bt_usuarioexterno1_cm_mu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_usuarioexterno1_cm_mu ON bt_usuarioexterno USING btree (idmunicipio);


--
-- TOC entry 3581 (class 1259 OID 84748)
-- Dependencies: 2503
-- Name: idx_bt_validacao1_bt_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_validacao1_bt_us ON bt_validacao USING btree (idusuario);


--
-- TOC entry 3584 (class 1259 OID 84749)
-- Dependencies: 2504
-- Name: idx_bt_vinculo1_bt_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_vinculo1_bt_us ON bt_vinculo USING btree (idusuario);


--
-- TOC entry 3585 (class 1259 OID 84750)
-- Dependencies: 2504
-- Name: idx_bt_vinculo2_bt_gr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_bt_vinculo2_bt_gr ON bt_vinculo USING btree (idgrupo);


--
-- TOC entry 3588 (class 1259 OID 84751)
-- Dependencies: 2505
-- Name: idx_cm_acesso1_cm_tr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_acesso1_cm_tr ON cm_acesso USING btree (idtrans);


--
-- TOC entry 3589 (class 1259 OID 84752)
-- Dependencies: 2505
-- Name: idx_cm_acesso2_cm_gr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_acesso2_cm_gr ON cm_acesso USING btree (idgrupo);


--
-- TOC entry 3592 (class 1259 OID 84753)
-- Dependencies: 2506
-- Name: idx_cm_agencia1_cm_ba; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_agencia1_cm_ba ON cm_agencia USING btree (idbanco);


--
-- TOC entry 3603 (class 1259 OID 84754)
-- Dependencies: 2511
-- Name: idx_cm_grpusuario1_cm_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_grpusuario1_cm_us ON cm_grpusuario USING btree (idusuario);


--
-- TOC entry 3604 (class 1259 OID 84755)
-- Dependencies: 2511
-- Name: idx_cm_grpusuario2_cm_gr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_grpusuario2_cm_gr ON cm_grpusuario USING btree (idgrupo);


--
-- TOC entry 3611 (class 1259 OID 84756)
-- Dependencies: 2514
-- Name: idx_cm_indicemensal1_cm_in; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_indicemensal1_cm_in ON cm_indicemensal USING btree (sigla);


--
-- TOC entry 3407 (class 1259 OID 84757)
-- Dependencies: 2440
-- Name: idx_cm_instituicao1_cm_pa; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_instituicao1_cm_pa ON cm_instituicao USING btree (idpais);


--
-- TOC entry 3408 (class 1259 OID 84758)
-- Dependencies: 2440
-- Name: idx_cm_instituicao2_cm_mu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_instituicao2_cm_mu ON cm_instituicao USING btree (idmunicipio);


--
-- TOC entry 3618 (class 1259 OID 84759)
-- Dependencies: 2517
-- Name: idx_cm_log1_cm_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_log1_cm_us ON cm_log USING btree (idusuario);


--
-- TOC entry 3623 (class 1259 OID 84760)
-- Dependencies: 2519 2519
-- Name: idx_cm_municipio; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX idx_cm_municipio ON cm_municipio USING btree (municipio, iduf);


--
-- TOC entry 3624 (class 1259 OID 84761)
-- Dependencies: 2519
-- Name: idx_cm_municipio1_cm_uf; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_municipio1_cm_uf ON cm_municipio USING btree (iduf);


--
-- TOC entry 3625 (class 1259 OID 84762)
-- Dependencies: 2519
-- Name: idx_cm_municipio2_cm_pa; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_municipio2_cm_pa ON cm_municipio USING btree (idpais);


--
-- TOC entry 3628 (class 1259 OID 84763)
-- Dependencies: 2520
-- Name: idx_cm_noticia1_cm_si; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_noticia1_cm_si ON cm_noticia USING btree (idsistema);


--
-- TOC entry 3631 (class 1259 OID 84764)
-- Dependencies: 2521
-- Name: idx_cm_organograma1_cm_ti; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_organograma1_cm_ti ON cm_organograma USING btree (idtipoorganograma);


--
-- TOC entry 3632 (class 1259 OID 84765)
-- Dependencies: 2521
-- Name: idx_cm_organograma2_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_organograma2_cm_se ON cm_organograma USING btree (idsetor);


--
-- TOC entry 3633 (class 1259 OID 84766)
-- Dependencies: 2521
-- Name: idx_cm_organograma3_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_organograma3_cm_se ON cm_organograma USING btree (idsetorpai);


--
-- TOC entry 3638 (class 1259 OID 84767)
-- Dependencies: 2523
-- Name: idx_cm_pessoa2_cm_pa; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_pessoa2_cm_pa ON cm_pessoa USING btree (idpais);


--
-- TOC entry 3639 (class 1259 OID 84768)
-- Dependencies: 2523
-- Name: idx_cm_pessoa3_cm_mu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_pessoa3_cm_mu ON cm_pessoa USING btree (idmunicipio);


--
-- TOC entry 3640 (class 1259 OID 84769)
-- Dependencies: 2523
-- Name: idx_cm_pessoa5_cm_es; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_pessoa5_cm_es ON cm_pessoa USING btree (idestadocivil);


--
-- TOC entry 3641 (class 1259 OID 84770)
-- Dependencies: 2523
-- Name: idx_cm_pessoa5_cm_pa; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_pessoa5_cm_pa ON cm_pessoa USING btree (idpaisnascimento);


--
-- TOC entry 3642 (class 1259 OID 84771)
-- Dependencies: 2523
-- Name: idx_cm_pessoa6_cm_pa; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_pessoa6_cm_pa ON cm_pessoa USING btree (idpaisnacionalidade);


--
-- TOC entry 3643 (class 1259 OID 84772)
-- Dependencies: 2523 2523
-- Name: idx_cm_pessoa7_cm_ag; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_pessoa7_cm_ag ON cm_pessoa USING btree (idbanco, idagenc);


--
-- TOC entry 3644 (class 1259 OID 84773)
-- Dependencies: 2523
-- Name: idx_cm_pessoa_cpf; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_pessoa_cpf ON cm_pessoa USING btree (cpf);


--
-- TOC entry 3649 (class 1259 OID 84774)
-- Dependencies: 2525
-- Name: idx_cm_sessao1_cm_us; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_sessao1_cm_us ON cm_sessao USING btree (idusuario);


--
-- TOC entry 3652 (class 1259 OID 84775)
-- Dependencies: 2526
-- Name: idx_cm_setoracesso1esso01; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_setoracesso1esso01 ON cm_setoracesso USING btree (idsetor);


--
-- TOC entry 3653 (class 1259 OID 84776)
-- Dependencies: 2526
-- Name: idx_cm_setoracesso2esso02; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_setoracesso2esso02 ON cm_setoracesso USING btree (idsetoracesso);


--
-- TOC entry 3656 (class 1259 OID 84777)
-- Dependencies: 2527
-- Name: idx_cm_setorequivalente1_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_setorequivalente1_cm_se ON cm_setorequivalente USING btree (idsetor);


--
-- TOC entry 3657 (class 1259 OID 84778)
-- Dependencies: 2527
-- Name: idx_cm_setorequivalente2_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_setorequivalente2_cm_se ON cm_setorequivalente USING btree (idsetorequivalente);


--
-- TOC entry 3668 (class 1259 OID 84779)
-- Dependencies: 2533
-- Name: idx_cm_transacao1_cm_si; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_transacao1_cm_si ON cm_transacao USING btree (idsistema);


--
-- TOC entry 3673 (class 1259 OID 84780)
-- Dependencies: 2535
-- Name: idx_cm_usuario1_cm_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_usuario1_cm_pe ON cm_usuario USING btree (idpessoa);


--
-- TOC entry 3674 (class 1259 OID 84781)
-- Dependencies: 2535
-- Name: idx_cm_usuario2_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_cm_usuario2_cm_se ON cm_usuario USING btree (idsetor);


--
-- TOC entry 3682 (class 1259 OID 84782)
-- Dependencies: 2539
-- Name: idx_rh_adicional1_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_adicional1_rh_vi ON rh_adicional USING btree (idvinculo);


--
-- TOC entry 3689 (class 1259 OID 84783)
-- Dependencies: 2542
-- Name: idx_rh_atividade1_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_atividade1_rh_vi ON rh_atividade USING btree (idvinculo);


--
-- TOC entry 3694 (class 1259 OID 84784)
-- Dependencies: 2545
-- Name: idx_rh_averbacao1_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_averbacao1_rh_vi ON rh_averbacao USING btree (idvinculo);


--
-- TOC entry 3697 (class 1259 OID 84785)
-- Dependencies: 2546
-- Name: idx_rh_averbfinalidade1_rh_av; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_averbfinalidade1_rh_av ON rh_averbfinalidade USING btree (idaverbacao);


--
-- TOC entry 3706 (class 1259 OID 84786)
-- Dependencies: 2552 2552
-- Name: idx_rh_capacitacaoinsc; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX idx_rh_capacitacaoinsc ON rh_capacitacaoinsc USING btree (idmodulo, idvinculo);


--
-- TOC entry 3711 (class 1259 OID 84787)
-- Dependencies: 2555
-- Name: idx_rh_cargo1_rh_gr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_cargo1_rh_gr ON rh_cargo USING btree (idgrupocargo);


--
-- TOC entry 3712 (class 1259 OID 84788)
-- Dependencies: 2555
-- Name: idx_rh_cargo2_rh_jo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_cargo2_rh_jo ON rh_cargo USING btree (idjornada);


--
-- TOC entry 3717 (class 1259 OID 84789)
-- Dependencies: 2557
-- Name: idx_rh_cessao1_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_cessao1_rh_vi ON rh_cessao USING btree (idvinculo);


--
-- TOC entry 3718 (class 1259 OID 84790)
-- Dependencies: 2557 2557
-- Name: idx_rh_cessao2_rh_oc; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_cessao2_rh_oc ON rh_cessao USING btree (idgrupoocorrencia, idocorrencia);


--
-- TOC entry 3719 (class 1259 OID 84791)
-- Dependencies: 2557
-- Name: idx_rh_cessao3_cm_in; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_cessao3_cm_in ON rh_cessao USING btree (idinstituicao);


--
-- TOC entry 3720 (class 1259 OID 84792)
-- Dependencies: 2557
-- Name: idx_rh_cessao4_rh_pu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_cessao4_rh_pu ON rh_cessao USING btree (idpublicacao);


--
-- TOC entry 3725 (class 1259 OID 84793)
-- Dependencies: 2559
-- Name: idx_rh_cidsubcategoria1_rh_ci; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_cidsubcategoria1_rh_ci ON rh_cidsubcategoria USING btree (idcidcategoria);


--
-- TOC entry 3732 (class 1259 OID 84794)
-- Dependencies: 2562
-- Name: idx_rh_classegrupocargo1_rh_cl; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_classegrupocargo1_rh_cl ON rh_classegrupocargo USING btree (idclasse);


--
-- TOC entry 3733 (class 1259 OID 84795)
-- Dependencies: 2562
-- Name: idx_rh_classegrupocargo2_rh_gr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_classegrupocargo2_rh_gr ON rh_classegrupocargo USING btree (idgrupocargo);


--
-- TOC entry 3744 (class 1259 OID 84796)
-- Dependencies: 2567
-- Name: idx_rh_dependencia1_rh_de; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_dependencia1_rh_de ON rh_dependencia USING btree (iddependente);


--
-- TOC entry 3747 (class 1259 OID 84797)
-- Dependencies: 2568
-- Name: idx_rh_dependente1_cm_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_dependente1_cm_pe ON rh_dependente USING btree (idpessoa);


--
-- TOC entry 3748 (class 1259 OID 84798)
-- Dependencies: 2568
-- Name: idx_rh_dependente2_rh_fu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_dependente2_rh_fu ON rh_dependente USING btree (idfuncionario);


--
-- TOC entry 3751 (class 1259 OID 84799)
-- Dependencies: 2569
-- Name: idx_rh_desaverbacao1_rh_av; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_desaverbacao1_rh_av ON rh_desaverbacao USING btree (idaverbacao);


--
-- TOC entry 3768 (class 1259 OID 84800)
-- Dependencies: 2577 2577
-- Name: idx_rh_ferias1_rh_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_ferias1_rh_pe ON rh_ferias USING btree (idvinculoperaq, datainicioperaq);


--
-- TOC entry 3775 (class 1259 OID 84801)
-- Dependencies: 2581
-- Name: idx_rh_funcao1_rh_pu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_funcao1_rh_pu ON rh_funcao USING btree (idpublicacaoinicio);


--
-- TOC entry 3776 (class 1259 OID 84802)
-- Dependencies: 2581
-- Name: idx_rh_funcao2_rh_pu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_funcao2_rh_pu ON rh_funcao USING btree (idpublicacaofim);


--
-- TOC entry 3777 (class 1259 OID 84803)
-- Dependencies: 2581
-- Name: idx_rh_funcao3_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_funcao3_cm_se ON rh_funcao USING btree (idsetor);


--
-- TOC entry 3778 (class 1259 OID 84804)
-- Dependencies: 2581
-- Name: idx_rh_funcao4_rh_ni; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_funcao4_rh_ni ON rh_funcao USING btree (idnivel);


--
-- TOC entry 3785 (class 1259 OID 84805)
-- Dependencies: 2584
-- Name: idx_rh_funcionario1_cm_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_funcionario1_cm_pe ON rh_funcionario USING btree (idpessoa);


--
-- TOC entry 3790 (class 1259 OID 84806)
-- Dependencies: 2586 2586
-- Name: idx_rh_grupolicafast1_rh_oc; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_grupolicafast1_rh_oc ON rh_grupolicafast USING btree (idgrupoocorrencia, idocorrencia);


--
-- TOC entry 3791 (class 1259 OID 84807)
-- Dependencies: 2586
-- Name: idx_rh_grupolicafast2_rh_ti; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_grupolicafast2_rh_ti ON rh_grupolicafast USING btree (idtipolicafast);


--
-- TOC entry 3798 (class 1259 OID 84808)
-- Dependencies: 2589
-- Name: idx_rh_histformacao1_rh_fo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_histformacao1_rh_fo ON rh_histformacao USING btree (idformacao);


--
-- TOC entry 3799 (class 1259 OID 84809)
-- Dependencies: 2589
-- Name: idx_rh_histformacao2_rh_fu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_histformacao2_rh_fu ON rh_histformacao USING btree (idfuncionario);


--
-- TOC entry 3808 (class 1259 OID 84810)
-- Dependencies: 2593
-- Name: idx_rh_histtitulacao1_rh_fu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_histtitulacao1_rh_fu ON rh_histtitulacao USING btree (idfuncionario);


--
-- TOC entry 3811 (class 1259 OID 84811)
-- Dependencies: 2594
-- Name: idx_rh_histvantagem1_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_histvantagem1_rh_vi ON rh_histvantagem USING btree (idvinculo);


--
-- TOC entry 3812 (class 1259 OID 84812)
-- Dependencies: 2594
-- Name: idx_rh_histvantagem2_rh_va; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_histvantagem2_rh_va ON rh_histvantagem USING btree (idvantagem);


--
-- TOC entry 3817 (class 1259 OID 84813)
-- Dependencies: 2597
-- Name: idx_rh_licafast1_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_licafast1_rh_vi ON rh_licafast USING btree (idvinculo);


--
-- TOC entry 3818 (class 1259 OID 84814)
-- Dependencies: 2597 2597
-- Name: idx_rh_licafast2_rh_oc; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_licafast2_rh_oc ON rh_licafast USING btree (idgrupoocorrencia, idocorrencia);


--
-- TOC entry 3819 (class 1259 OID 84815)
-- Dependencies: 2597 2597
-- Name: idx_rh_licafast3_rh_ci; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_licafast3_rh_ci ON rh_licafast USING btree (idcidcategoria, idcidsubcategoria);


--
-- TOC entry 3820 (class 1259 OID 84816)
-- Dependencies: 2597
-- Name: idx_rh_licafast4_rh_pu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_licafast4_rh_pu ON rh_licafast USING btree (idpublicacao);


--
-- TOC entry 3833 (class 1259 OID 84817)
-- Dependencies: 2603
-- Name: idx_rh_ocorrencia1_rh_gr; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_ocorrencia1_rh_gr ON rh_ocorrencia USING btree (idgrupoocorrencia);


--
-- TOC entry 3838 (class 1259 OID 84818)
-- Dependencies: 2605
-- Name: idx_rh_ocupacaofuncao1_rh_fu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_ocupacaofuncao1_rh_fu ON rh_ocupacaofuncao USING btree (idfuncao);


--
-- TOC entry 3839 (class 1259 OID 84819)
-- Dependencies: 2605
-- Name: idx_rh_ocupacaofuncao2_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_ocupacaofuncao2_rh_vi ON rh_ocupacaofuncao USING btree (idvinculo);


--
-- TOC entry 3840 (class 1259 OID 84820)
-- Dependencies: 2605
-- Name: idx_rh_ocupacaofuncao3_rh_pu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_ocupacaofuncao3_rh_pu ON rh_ocupacaofuncao USING btree (idpublicacaoinicio);


--
-- TOC entry 3841 (class 1259 OID 84821)
-- Dependencies: 2605
-- Name: idx_rh_ocupacaofuncao4_rh_pu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_ocupacaofuncao4_rh_pu ON rh_ocupacaofuncao USING btree (idpublicacaofim);


--
-- TOC entry 3844 (class 1259 OID 84822)
-- Dependencies: 2606
-- Name: idx_rh_ocupacaovaga1_rh_va; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_ocupacaovaga1_rh_va ON rh_ocupacaovaga USING btree (numerovaga);


--
-- TOC entry 3845 (class 1259 OID 84823)
-- Dependencies: 2606
-- Name: idx_rh_ocupacaovaga2_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_ocupacaovaga2_rh_vi ON rh_ocupacaovaga USING btree (idvinculo);


--
-- TOC entry 3850 (class 1259 OID 84824)
-- Dependencies: 2608
-- Name: idx_rh_pensionista1_cm_pe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_pensionista1_cm_pe ON rh_pensionista USING btree (idpessoa);


--
-- TOC entry 3851 (class 1259 OID 84825)
-- Dependencies: 2608
-- Name: idx_rh_pensionista2_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_pensionista2_rh_vi ON rh_pensionista USING btree (idvinculo);


--
-- TOC entry 3856 (class 1259 OID 84826)
-- Dependencies: 2610
-- Name: idx_rh_periodoaquis1_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_periodoaquis1_rh_vi ON rh_periodoaquisitivo USING btree (idvinculo);


--
-- TOC entry 3865 (class 1259 OID 84827)
-- Dependencies: 2615
-- Name: idx_rh_prorrogacao1_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_prorrogacao1_rh_vi ON rh_prorrogacao USING btree (idvinculo);


--
-- TOC entry 3868 (class 1259 OID 84828)
-- Dependencies: 2617
-- Name: idx_rh_provimento1_rh_vi; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_provimento1_rh_vi ON rh_provimento USING btree (idvinculo);


--
-- TOC entry 3869 (class 1259 OID 84829)
-- Dependencies: 2617
-- Name: idx_rh_provimento2_rh_si; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_provimento2_rh_si ON rh_provimento USING btree (idsituacao);


--
-- TOC entry 3870 (class 1259 OID 84830)
-- Dependencies: 2617 2617
-- Name: idx_rh_provimento3_rh_ca; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_provimento3_rh_ca ON rh_provimento USING btree (idgrupocargo, idcargo);


--
-- TOC entry 3871 (class 1259 OID 84831)
-- Dependencies: 2617
-- Name: idx_rh_provimento4_cm_se; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_provimento4_cm_se ON rh_provimento USING btree (idsetor);


--
-- TOC entry 3872 (class 1259 OID 84832)
-- Dependencies: 2617 2617
-- Name: idx_rh_provimento5_rh_re; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_provimento5_rh_re ON rh_provimento USING btree (idclasse, idreferencia);


--
-- TOC entry 3873 (class 1259 OID 84833)
-- Dependencies: 2617
-- Name: idx_rh_provimento6_rh_jo; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_provimento6_rh_jo ON rh_provimento USING btree (idjornada);


--
-- TOC entry 3874 (class 1259 OID 84834)
-- Dependencies: 2617
-- Name: idx_rh_provimento7_rh_pu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_provimento7_rh_pu ON rh_provimento USING btree (idpublicacao);


--
-- TOC entry 3875 (class 1259 OID 84835)
-- Dependencies: 2617 2617
-- Name: idx_rh_provimento8_rh_oc; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_provimento8_rh_oc ON rh_provimento USING btree (idgrupoocorrencia, idocorrencia);


--
-- TOC entry 3880 (class 1259 OID 84836)
-- Dependencies: 2620
-- Name: idx_rh_publicacao1_rh_di; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_publicacao1_rh_di ON rh_publicacao USING btree (iddiplomalegal);


--
-- TOC entry 3883 (class 1259 OID 84837)
-- Dependencies: 2621
-- Name: idx_rh_referencia1_rh_cg; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_referencia1_rh_cg ON rh_referencia USING btree (idclassegrupocargo);


--
-- TOC entry 3884 (class 1259 OID 84838)
-- Dependencies: 2621
-- Name: idx_rh_referencia1_rh_cl; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_referencia1_rh_cl ON rh_referencia USING btree (idclasse);


--
-- TOC entry 3901 (class 1259 OID 84839)
-- Dependencies: 2629 2629
-- Name: idx_rh_situacaoocor1_rh_o; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_situacaoocor1_rh_o ON rh_situacaoocorrencia USING btree (idgrupoocorrencia, idocorrencia);


--
-- TOC entry 3902 (class 1259 OID 84840)
-- Dependencies: 2629
-- Name: idx_rh_situacaoocor2_rh_s; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_situacaoocor2_rh_s ON rh_situacaoocorrencia USING btree (idsituacao);


--
-- TOC entry 3913 (class 1259 OID 84841)
-- Dependencies: 2635 2635 2635
-- Name: idx_rh_tipo3; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_tipo3 ON rh_tipo3 USING btree (anomes, siape, rub_codigo);


--
-- TOC entry 3920 (class 1259 OID 84842)
-- Dependencies: 2639 2639
-- Name: idx_rh_vaga1_rh_ca; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_vaga1_rh_ca ON rh_vaga USING btree (idgrupocargo, idcargo);


--
-- TOC entry 3925 (class 1259 OID 84843)
-- Dependencies: 2641
-- Name: idx_rh_vinculo2_rh_pu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_vinculo2_rh_pu ON rh_vinculo USING btree (idpublicacaovacancia);


--
-- TOC entry 3926 (class 1259 OID 84844)
-- Dependencies: 2641
-- Name: idx_rh_vinculo3_rh_fu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_vinculo3_rh_fu ON rh_vinculo USING btree (idfuncionario);


--
-- TOC entry 3927 (class 1259 OID 84845)
-- Dependencies: 2641 2641
-- Name: idx_rh_vinculo5_rh_oc; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_rh_vinculo5_rh_oc ON rh_vinculo USING btree (idgrupoocorrenciavacancia, idocorrenciavacancia);


--
-- TOC entry 3677 (class 1259 OID 84846)
-- Dependencies: 2535
-- Name: uk_cm_usuario_login; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX uk_cm_usuario_login ON cm_usuario USING btree (login);


--
-- TOC entry 4306 (class 2620 OID 84847)
-- Dependencies: 2369 19
-- Name: tg_trim_ad_fornecedor; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER tg_trim_ad_fornecedor
    BEFORE INSERT ON ad_fornecedor
    FOR EACH ROW
    EXECUTE PROCEDURE fn_ad_fornecedor_ins();


--
-- TOC entry 4308 (class 2620 OID 84848)
-- Dependencies: 2506 20
-- Name: tg_trim_cm_agencia; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER tg_trim_cm_agencia
    BEFORE INSERT ON cm_agencia
    FOR EACH ROW
    EXECUTE PROCEDURE fn_cm_agencia_ins();


--
-- TOC entry 4307 (class 2620 OID 84849)
-- Dependencies: 2440 21
-- Name: tg_trim_cm_instituicao; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER tg_trim_cm_instituicao
    BEFORE INSERT ON cm_instituicao
    FOR EACH ROW
    EXECUTE PROCEDURE fn_cm_instituicao_ins();


--
-- TOC entry 4309 (class 2620 OID 84850)
-- Dependencies: 2534 22
-- Name: tg_trim_cm_uf; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER tg_trim_cm_uf
    BEFORE INSERT ON cm_uf
    FOR EACH ROW
    EXECUTE PROCEDURE fn_cm_uf_ins();


--
-- TOC entry 3947 (class 2606 OID 84851)
-- Dependencies: 3123 2357 2359
-- Name: ad_empenhadodist_idempenhado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empenhadodist
    ADD CONSTRAINT ad_empenhadodist_idempenhado_fkey FOREIGN KEY (idempenhado) REFERENCES ad_empenhado(idempenhado);


--
-- TOC entry 3948 (class 2606 OID 84856)
-- Dependencies: 3358 2420 2359
-- Name: ad_empenhadodist_idrequisicao_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empenhadodist
    ADD CONSTRAINT ad_empenhadodist_idrequisicao_fkey FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 3955 (class 2606 OID 84861)
-- Dependencies: 3626 2519 2361
-- Name: ad_empresamanutencaoveiculo_municipio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empresamanutencaoveiculo
    ADD CONSTRAINT ad_empresamanutencaoveiculo_municipio_fkey FOREIGN KEY (idmunicipio) REFERENCES cm_municipio(idmunicipio);


--
-- TOC entry 3934 (class 2606 OID 84866)
-- Dependencies: 3084 2341 2342
-- Name: ad_fkeyabs; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_abastecimentorequisicao
    ADD CONSTRAINT ad_fkeyabs FOREIGN KEY (idabastecimento) REFERENCES ad_abastecimento(idabastecimento);


--
-- TOC entry 4029 (class 2606 OID 84871)
-- Dependencies: 3307 2403 2394
-- Name: ad_manutencao_veiculo_notafiscalmanutencaoveiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_manutencaoveiculo
    ADD CONSTRAINT ad_manutencao_veiculo_notafiscalmanutencaoveiculo_fkey FOREIGN KEY (idnotafiscal) REFERENCES ad_notafiscalmanutencaoveiculo(idnotafiscal);


--
-- TOC entry 4030 (class 2606 OID 84876)
-- Dependencies: 3389 2433 2394
-- Name: ad_manutencao_veiculo_tipomanutencao_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_manutencaoveiculo
    ADD CONSTRAINT ad_manutencao_veiculo_tipomanutencao_fkey FOREIGN KEY (idtipomanutencao) REFERENCES ad_tipomanutencao(idtipomanutencao);


--
-- TOC entry 4046 (class 2606 OID 84881)
-- Dependencies: 3134 2361 2403
-- Name: ad_notafiscalmanutencaoveiculo_empresamanutencaoveiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_notafiscalmanutencaoveiculo
    ADD CONSTRAINT ad_notafiscalmanutencaoveiculo_empresamanutencaoveiculo_fkey FOREIGN KEY (idempresa) REFERENCES ad_empresamanutencaoveiculo(idempresa);


--
-- TOC entry 4047 (class 2606 OID 84886)
-- Dependencies: 3347 2416 2403
-- Name: ad_notafiscalmanutencaoveiculo_prevrevisao_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_notafiscalmanutencaoveiculo
    ADD CONSTRAINT ad_notafiscalmanutencaoveiculo_prevrevisao_fkey FOREIGN KEY (idprevrevisao) REFERENCES ad_prevrevisao(idprevrevisao);


--
-- TOC entry 4048 (class 2606 OID 84891)
-- Dependencies: 3420 2445 2403
-- Name: ad_notafiscalmanutencaoveiculo_veiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_notafiscalmanutencaoveiculo
    ADD CONSTRAINT ad_notafiscalmanutencaoveiculo_veiculo_fkey FOREIGN KEY (placa) REFERENCES ad_veiculo(placa);


--
-- TOC entry 4063 (class 2606 OID 84896)
-- Dependencies: 3420 2445 2416
-- Name: ad_prevrevisao_veiculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_prevrevisao
    ADD CONSTRAINT ad_prevrevisao_veiculo_fkey FOREIGN KEY (placa) REFERENCES ad_veiculo(placa);


--
-- TOC entry 4064 (class 2606 OID 84901)
-- Dependencies: 3369 2424 2419
-- Name: ad_reqrubrica_idrubrica_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_reqrubrica
    ADD CONSTRAINT ad_reqrubrica_idrubrica_fkey FOREIGN KEY (idrubrica) REFERENCES ad_rubrica(idrubrica);


--
-- TOC entry 4065 (class 2606 OID 84906)
-- Dependencies: 3394 2435 2419
-- Name: ad_reqrubrica_idtiporeq_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_reqrubrica
    ADD CONSTRAINT ad_reqrubrica_idtiporeq_fkey FOREIGN KEY (idtiporeq) REFERENCES ad_tiporeq(idtiporeq) ON DELETE CASCADE;


--
-- TOC entry 4094 (class 2606 OID 84911)
-- Dependencies: 3480 2466 2447
-- Name: bt_artigo_idexemplarperiodico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_artigo
    ADD CONSTRAINT bt_artigo_idexemplarperiodico_fkey FOREIGN KEY (idexemplarperiodico) REFERENCES bt_exemplarperiodico(idexemplarperiodico);


--
-- TOC entry 4101 (class 2606 OID 84916)
-- Dependencies: 3468 2463 2453
-- Name: bt_camposfixosperiodico_idetiqueta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_camposfixosperiodico
    ADD CONSTRAINT bt_camposfixosperiodico_idetiqueta_fkey FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta);


--
-- TOC entry 4116 (class 2606 OID 84921)
-- Dependencies: 3444 2456 2466
-- Name: bt_exemplarperiodico_idcolecao_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_exemplarperiodico
    ADD CONSTRAINT bt_exemplarperiodico_idcolecao_fkey FOREIGN KEY (idcolecao) REFERENCES bt_colecao(idcolecao);


--
-- TOC entry 4117 (class 2606 OID 84926)
-- Dependencies: 3466 2462 2466
-- Name: bt_exemplarperiodico_idestado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_exemplarperiodico
    ADD CONSTRAINT bt_exemplarperiodico_idestado_fkey FOREIGN KEY (idestado) REFERENCES bt_estado(idestado);


--
-- TOC entry 4118 (class 2606 OID 84931)
-- Dependencies: 3541 2490 2466
-- Name: bt_exemplarperiodico_idperiodico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_exemplarperiodico
    ADD CONSTRAINT bt_exemplarperiodico_idperiodico_fkey FOREIGN KEY (idperiodico) REFERENCES bt_periodico(idperiodico);


--
-- TOC entry 4119 (class 2606 OID 84936)
-- Dependencies: 3557 2495 2466
-- Name: bt_exemplarperiodico_idregracirculacao_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_exemplarperiodico
    ADD CONSTRAINT bt_exemplarperiodico_idregracirculacao_fkey FOREIGN KEY (idregracirculacao) REFERENCES bt_regracirculacao(idregracirculacao);


--
-- TOC entry 4120 (class 2606 OID 84941)
-- Dependencies: 3576 2501 2466
-- Name: bt_exemplarperiodico_idunidade_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_exemplarperiodico
    ADD CONSTRAINT bt_exemplarperiodico_idunidade_fkey FOREIGN KEY (idunidade) REFERENCES bt_unidade(idunidade);


--
-- TOC entry 4124 (class 2606 OID 84946)
-- Dependencies: 3468 2463 2473
-- Name: bt_indicadoresperiodico_idetiqueta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_indicadoresperiodico
    ADD CONSTRAINT bt_indicadoresperiodico_idetiqueta_fkey FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta);


--
-- TOC entry 4125 (class 2606 OID 84951)
-- Dependencies: 3541 2490 2473
-- Name: bt_indicadoresperiodico_idperiodico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_indicadoresperiodico
    ADD CONSTRAINT bt_indicadoresperiodico_idperiodico_fkey FOREIGN KEY (idperiodico) REFERENCES bt_periodico(idperiodico);


--
-- TOC entry 4131 (class 2606 OID 84956)
-- Dependencies: 3424 2447 2478
-- Name: bt_material_assunto_artigo_idartigo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_material_assunto_artigo
    ADD CONSTRAINT bt_material_assunto_artigo_idartigo_fkey FOREIGN KEY (idartigo) REFERENCES bt_artigo(idartigo);


--
-- TOC entry 4132 (class 2606 OID 84961)
-- Dependencies: 3468 2463 2478
-- Name: bt_material_assunto_artigo_idetiqueta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_material_assunto_artigo
    ADD CONSTRAINT bt_material_assunto_artigo_idetiqueta_fkey FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta);


--
-- TOC entry 4133 (class 2606 OID 84966)
-- Dependencies: 3424 2447 2479
-- Name: bt_material_autor_artigo_idartigo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_material_autor_artigo
    ADD CONSTRAINT bt_material_autor_artigo_idartigo_fkey FOREIGN KEY (idartigo) REFERENCES bt_artigo(idartigo);


--
-- TOC entry 4134 (class 2606 OID 84976)
-- Dependencies: 3468 2463 2479
-- Name: bt_material_autor_artigo_idetiqueta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_material_autor_artigo
    ADD CONSTRAINT bt_material_autor_artigo_idetiqueta_fkey FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta);


--
-- TOC entry 4135 (class 2606 OID 84981)
-- Dependencies: 3424 2447 2481
-- Name: bt_materialartigo_idartigo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_materialartigo
    ADD CONSTRAINT bt_materialartigo_idartigo_fkey FOREIGN KEY (idartigo) REFERENCES bt_artigo(idartigo);


--
-- TOC entry 4136 (class 2606 OID 84986)
-- Dependencies: 3468 2463 2481
-- Name: bt_materialartigo_idetiqueta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_materialartigo
    ADD CONSTRAINT bt_materialartigo_idetiqueta_fkey FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta);


--
-- TOC entry 4137 (class 2606 OID 84991)
-- Dependencies: 3468 2463 2482
-- Name: bt_materialperiodico_idetiqueta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_materialperiodico
    ADD CONSTRAINT bt_materialperiodico_idetiqueta_fkey FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta);


--
-- TOC entry 4138 (class 2606 OID 84996)
-- Dependencies: 3541 2490 2482
-- Name: bt_materialperiodico_idperiodico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_materialperiodico
    ADD CONSTRAINT bt_materialperiodico_idperiodico_fkey FOREIGN KEY (idperiodico) REFERENCES bt_periodico(idperiodico);


--
-- TOC entry 4145 (class 2606 OID 85006)
-- Dependencies: 3457 2460 2490
-- Name: bt_periodico_ideditora_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_periodico
    ADD CONSTRAINT bt_periodico_ideditora_fkey FOREIGN KEY (ideditora) REFERENCES bt_editora(ideditora);


--
-- TOC entry 3935 (class 2606 OID 85011)
-- Dependencies: 3100 2347 2343
-- Name: fk_ad_acessobolsa1_ad_bo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_acessobolsa
    ADD CONSTRAINT fk_ad_acessobolsa1_ad_bo FOREIGN KEY (idbolsa) REFERENCES ad_bolsa(idbolsa);


--
-- TOC entry 3936 (class 2606 OID 85016)
-- Dependencies: 3675 2535 2343
-- Name: fk_ad_acessobolsa2_cm_us; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_acessobolsa
    ADD CONSTRAINT fk_ad_acessobolsa2_cm_us FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 3937 (class 2606 OID 85021)
-- Dependencies: 3405 2439 2344
-- Name: fk_ad_acessouoreq1_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_acessouoreq
    ADD CONSTRAINT fk_ad_acessouoreq1_ad_uo FOREIGN KEY (iduo) REFERENCES ad_uo(iduo);


--
-- TOC entry 3938 (class 2606 OID 85026)
-- Dependencies: 3675 2535 2344
-- Name: fk_ad_acessouoreq2_cm_us; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_acessouoreq
    ADD CONSTRAINT fk_ad_acessouoreq2_cm_us FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 3939 (class 2606 OID 85031)
-- Dependencies: 3349 2417 2345
-- Name: fk_ad_andamento1_ad_pr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_andamento
    ADD CONSTRAINT fk_ad_andamento1_ad_pr FOREIGN KEY (numpro) REFERENCES ad_processo(numpro) ON DELETE CASCADE;


--
-- TOC entry 3940 (class 2606 OID 85036)
-- Dependencies: 3100 2347 2348
-- Name: fk_ad_bolsista1_ad_bo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_bolsista
    ADD CONSTRAINT fk_ad_bolsista1_ad_bo FOREIGN KEY (idbolsa) REFERENCES ad_bolsa(idbolsa);


--
-- TOC entry 3941 (class 2606 OID 85041)
-- Dependencies: 3645 2523 2348
-- Name: fk_ad_bolsista2_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_bolsista
    ADD CONSTRAINT fk_ad_bolsista2_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4109 (class 2606 OID 85046)
-- Dependencies: 3675 2535 2461
-- Name: fk_ad_bt_emprestimo_cm_usu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_emprestimo
    ADD CONSTRAINT fk_ad_bt_emprestimo_cm_usu FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 4126 (class 2606 OID 85051)
-- Dependencies: 3675 2535 2475
-- Name: fk_ad_bt_logoperacao_cm_usu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_logoperacao
    ADD CONSTRAINT fk_ad_bt_logoperacao_cm_usu FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 4139 (class 2606 OID 85056)
-- Dependencies: 3464 2461 2483
-- Name: fk_ad_bt_multa_bt_emprestimo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_multa
    ADD CONSTRAINT fk_ad_bt_multa_bt_emprestimo FOREIGN KEY (idemprestimo) REFERENCES bt_emprestimo(idemprestimo);


--
-- TOC entry 3942 (class 2606 OID 85061)
-- Dependencies: 3110 2351 2351
-- Name: fk_ad_contrato_ta; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_contrato
    ADD CONSTRAINT fk_ad_contrato_ta FOREIGN KEY (idcontratopai) REFERENCES ad_contrato(idcontrato);


--
-- TOC entry 3943 (class 2606 OID 85066)
-- Dependencies: 3411 2441 2354
-- Name: fk_ad_dependencia1_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_dependencia
    ADD CONSTRAINT fk_ad_dependencia1_cm_se FOREIGN KEY (idsetor) REFERENCES cm_setor(idsetor);


--
-- TOC entry 3944 (class 2606 OID 85071)
-- Dependencies: 3132 2360 2357
-- Name: fk_ad_empenhado1_ad_em; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empenhado
    ADD CONSTRAINT fk_ad_empenhado1_ad_em FOREIGN KEY (idempenho) REFERENCES ad_empenho(idempenho);


--
-- TOC entry 3945 (class 2606 OID 85076)
-- Dependencies: 3316 2405 2357
-- Name: fk_ad_empenhado2_ad_or; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empenhado
    ADD CONSTRAINT fk_ad_empenhado2_ad_or FOREIGN KEY (idorcamento) REFERENCES ad_orcamento(idorcamento);


--
-- TOC entry 3946 (class 2606 OID 85081)
-- Dependencies: 3181 2374 2374 2357 2357
-- Name: fk_ad_empenhado3_ad_it; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empenhado
    ADD CONSTRAINT fk_ad_empenhado3_ad_it FOREIGN KEY (idlicitacao, item) REFERENCES ad_itemlicitacao(idlicitacao, item);


--
-- TOC entry 3949 (class 2606 OID 85086)
-- Dependencies: 3123 2357 2359
-- Name: fk_ad_empenhadodist_empenhadoid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empenhadodist
    ADD CONSTRAINT fk_ad_empenhadodist_empenhadoid FOREIGN KEY (idempenhado) REFERENCES ad_empenhado(idempenhado);


--
-- TOC entry 3950 (class 2606 OID 85091)
-- Dependencies: 3358 2420 2359
-- Name: fk_ad_empenhadodist_requisicaoid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empenhadodist
    ADD CONSTRAINT fk_ad_empenhadodist_requisicaoid FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 3951 (class 2606 OID 85096)
-- Dependencies: 3164 2369 2360
-- Name: fk_ad_empenho1_ad_fo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empenho
    ADD CONSTRAINT fk_ad_empenho1_ad_fo FOREIGN KEY (idfornecedor) REFERENCES ad_fornecedor(idfornecedor);


--
-- TOC entry 3952 (class 2606 OID 85101)
-- Dependencies: 3349 2417 2360
-- Name: fk_ad_empenho1_ad_pr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empenho
    ADD CONSTRAINT fk_ad_empenho1_ad_pr FOREIGN KEY (numpro) REFERENCES ad_processo(numpro);


--
-- TOC entry 3953 (class 2606 OID 85106)
-- Dependencies: 3405 2439 2360
-- Name: fk_ad_empenho1_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empenho
    ADD CONSTRAINT fk_ad_empenho1_ad_uo FOREIGN KEY (iduo) REFERENCES ad_uo(iduo);


--
-- TOC entry 3954 (class 2606 OID 85111)
-- Dependencies: 3132 2360 2360
-- Name: fk_ad_empenho2_ad_em; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_empenho
    ADD CONSTRAINT fk_ad_empenho2_ad_em FOREIGN KEY (idempenhoref) REFERENCES ad_empenho(idempenho);


--
-- TOC entry 3956 (class 2606 OID 85116)
-- Dependencies: 3282 2396 2363
-- Name: fk_ad_estoque2_ad_ma; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_estoque
    ADD CONSTRAINT fk_ad_estoque2_ad_ma FOREIGN KEY (idmaterial) REFERENCES ad_material(idmaterial);


--
-- TOC entry 3957 (class 2606 OID 85121)
-- Dependencies: 3369 2424 2364
-- Name: fk_ad_executa1_ad_ru; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_executa
    ADD CONSTRAINT fk_ad_executa1_ad_ru FOREIGN KEY (idrubrica) REFERENCES ad_rubrica(idrubrica);


--
-- TOC entry 3958 (class 2606 OID 85126)
-- Dependencies: 3405 2439 2364
-- Name: fk_ad_executa1_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_executa
    ADD CONSTRAINT fk_ad_executa1_ad_uo FOREIGN KEY (iduo) REFERENCES ad_uo(iduo);


--
-- TOC entry 3959 (class 2606 OID 85131)
-- Dependencies: 3394 2435 2364
-- Name: fk_ad_executa2_ad_ti; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_executa
    ADD CONSTRAINT fk_ad_executa2_ad_ti FOREIGN KEY (idtiporeq) REFERENCES ad_tiporeq(idtiporeq);


--
-- TOC entry 3960 (class 2606 OID 85136)
-- Dependencies: 3405 2439 2366
-- Name: fk_ad_executoralmox1_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_executoralmox
    ADD CONSTRAINT fk_ad_executoralmox1_ad_uo FOREIGN KEY (iduorequisitante) REFERENCES ad_uo(iduo);


--
-- TOC entry 3961 (class 2606 OID 85141)
-- Dependencies: 3405 2439 2366
-- Name: fk_ad_executoralmox2_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_executoralmox
    ADD CONSTRAINT fk_ad_executoralmox2_ad_uo FOREIGN KEY (iduoexecutante) REFERENCES ad_uo(iduo);


--
-- TOC entry 3962 (class 2606 OID 85146)
-- Dependencies: 3397 2436 2367
-- Name: fk_ad_executorservint1_ad_ti; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_executorservint
    ADD CONSTRAINT fk_ad_executorservint1_ad_ti FOREIGN KEY (idtiposervint) REFERENCES ad_tiposervint(idtiposervint);


--
-- TOC entry 3963 (class 2606 OID 85151)
-- Dependencies: 3675 2535 2367
-- Name: fk_ad_executorservint1_cm_us; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_executorservint
    ADD CONSTRAINT fk_ad_executorservint1_cm_us FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 3964 (class 2606 OID 85156)
-- Dependencies: 3409 2440 2369
-- Name: fk_ad_fornecedor1_cm_in; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_fornecedor
    ADD CONSTRAINT fk_ad_fornecedor1_cm_in FOREIGN KEY (idinstituicao) REFERENCES cm_instituicao(idinstituicao);


--
-- TOC entry 3965 (class 2606 OID 85161)
-- Dependencies: 3645 2523 2369
-- Name: fk_ad_fornecedor2_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_fornecedor
    ADD CONSTRAINT fk_ad_fornecedor2_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 3966 (class 2606 OID 85166)
-- Dependencies: 3593 2506 2506 2369 2369
-- Name: fk_ad_fornecedor3_cm_ag; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_fornecedor
    ADD CONSTRAINT fk_ad_fornecedor3_cm_ag FOREIGN KEY (idbanco, idagenc) REFERENCES cm_agencia(idbanco, idagenc);


--
-- TOC entry 3967 (class 2606 OID 85171)
-- Dependencies: 3164 2369 2370
-- Name: fk_ad_fpotencial1_ad_fo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_fpotencial
    ADD CONSTRAINT fk_ad_fpotencial1_ad_fo FOREIGN KEY (idfornecedor) REFERENCES ad_fornecedor(idfornecedor);


--
-- TOC entry 3968 (class 2606 OID 85176)
-- Dependencies: 3282 2396 2370
-- Name: fk_ad_fpotencial2_ad_ma; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_fpotencial
    ADD CONSTRAINT fk_ad_fpotencial2_ad_ma FOREIGN KEY (idmaterial) REFERENCES ad_material(idmaterial);


--
-- TOC entry 3969 (class 2606 OID 85181)
-- Dependencies: 3411 2441 2371
-- Name: fk_ad_funcionarioresp0_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_funcionarioresp
    ADD CONSTRAINT fk_ad_funcionarioresp0_cm_se FOREIGN KEY (idsetor) REFERENCES cm_setor(idsetor);


--
-- TOC entry 3971 (class 2606 OID 85186)
-- Dependencies: 3266 2391 2374
-- Name: fk_ad_itemlicitacao1_ad_li; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemlicitacao
    ADD CONSTRAINT fk_ad_itemlicitacao1_ad_li FOREIGN KEY (idlicitacao) REFERENCES ad_licitacao(idlicitacao);


--
-- TOC entry 3972 (class 2606 OID 85191)
-- Dependencies: 3123 2357 2375
-- Name: fk_ad_itemnota1_ad_em; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemnota
    ADD CONSTRAINT fk_ad_itemnota1_ad_em FOREIGN KEY (idempenhado) REFERENCES ad_empenhado(idempenhado);


--
-- TOC entry 3973 (class 2606 OID 85196)
-- Dependencies: 3305 2402 2375
-- Name: fk_ad_itemnota2_ad_no; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemnota
    ADD CONSTRAINT fk_ad_itemnota2_ad_no FOREIGN KEY (idnotafiscal) REFERENCES ad_notafiscal(idnotafiscal);


--
-- TOC entry 3974 (class 2606 OID 85201)
-- Dependencies: 3282 2396 2376
-- Name: fk_ad_itempatrimo1_ad_ma; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itempatrimo
    ADD CONSTRAINT fk_ad_itempatrimo1_ad_ma FOREIGN KEY (idmaterial) REFERENCES ad_material(idmaterial);


--
-- TOC entry 3970 (class 2606 OID 85206)
-- Dependencies: 3411 2441 2371
-- Name: fk_ad_itempatrimo2_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_funcionarioresp
    ADD CONSTRAINT fk_ad_itempatrimo2_cm_se FOREIGN KEY (idsetor) REFERENCES cm_setor(idsetor);


--
-- TOC entry 3975 (class 2606 OID 85211)
-- Dependencies: 3115 2354 2377
-- Name: fk_ad_itempatrimonio1_ad_de; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itempatrimonio
    ADD CONSTRAINT fk_ad_itempatrimonio1_ad_de FOREIGN KEY (iddependencia) REFERENCES ad_dependencia(iddependencia);


--
-- TOC entry 3976 (class 2606 OID 85216)
-- Dependencies: 3282 2396 2377
-- Name: fk_ad_itempatrimonio1_ad_ma; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itempatrimonio
    ADD CONSTRAINT fk_ad_itempatrimonio1_ad_ma FOREIGN KEY (idmaterial) REFERENCES ad_material(idmaterial);


--
-- TOC entry 3977 (class 2606 OID 85221)
-- Dependencies: 3411 2441 2377
-- Name: fk_ad_itempatrimonio1_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itempatrimonio
    ADD CONSTRAINT fk_ad_itempatrimonio1_cm_se FOREIGN KEY (idsetor) REFERENCES cm_setor(idsetor);


--
-- TOC entry 3978 (class 2606 OID 85226)
-- Dependencies: 3123 2357 2377
-- Name: fk_ad_itempatrimonio3_ad_em; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itempatrimonio
    ADD CONSTRAINT fk_ad_itempatrimonio3_ad_em FOREIGN KEY (idempenhado) REFERENCES ad_empenhado(idempenhado);


--
-- TOC entry 3979 (class 2606 OID 85231)
-- Dependencies: 3108 2350 2377
-- Name: fk_ad_itempatrimonio4_ad_cl; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itempatrimonio
    ADD CONSTRAINT fk_ad_itempatrimonio4_ad_cl FOREIGN KEY (idclassificador) REFERENCES ad_classificador(idclassificador);


--
-- TOC entry 3980 (class 2606 OID 85236)
-- Dependencies: 3349 2417 2377
-- Name: fk_ad_itempatrimonio5_proce; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itempatrimonio
    ADD CONSTRAINT fk_ad_itempatrimonio5_proce FOREIGN KEY (numpro) REFERENCES ad_processo(numpro);


--
-- TOC entry 3981 (class 2606 OID 85241)
-- Dependencies: 3282 2396 2378
-- Name: fk_ad_itemreq1_ad_ma; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreq
    ADD CONSTRAINT fk_ad_itemreq1_ad_ma FOREIGN KEY (idmaterial) REFERENCES ad_material(idmaterial);


--
-- TOC entry 3982 (class 2606 OID 85246)
-- Dependencies: 3358 2420 2378
-- Name: fk_ad_itemreq2_ad_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreq
    ADD CONSTRAINT fk_ad_itemreq2_ad_re FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 3983 (class 2606 OID 85251)
-- Dependencies: 3181 2374 2374 2378 2378
-- Name: fk_ad_itemreq4_ad_it; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreq
    ADD CONSTRAINT fk_ad_itemreq4_ad_it FOREIGN KEY (idlicitacao, item) REFERENCES ad_itemlicitacao(idlicitacao, item);


--
-- TOC entry 3984 (class 2606 OID 85256)
-- Dependencies: 3282 2396 2379
-- Name: fk_ad_itemreqbib1_ad_ma; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqbib
    ADD CONSTRAINT fk_ad_itemreqbib1_ad_ma FOREIGN KEY (idmaterial) REFERENCES ad_material(idmaterial);


--
-- TOC entry 3985 (class 2606 OID 85261)
-- Dependencies: 3358 2420 2379
-- Name: fk_ad_itemreqbib2_ad_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqbib
    ADD CONSTRAINT fk_ad_itemreqbib2_ad_re FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 3986 (class 2606 OID 85266)
-- Dependencies: 3181 2374 2374 2379 2379
-- Name: fk_ad_itemreqbib4_ad_it; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqbib
    ADD CONSTRAINT fk_ad_itemreqbib4_ad_it FOREIGN KEY (idlicitacao, item) REFERENCES ad_itemlicitacao(idlicitacao, item);


--
-- TOC entry 3987 (class 2606 OID 85271)
-- Dependencies: 3358 2420 2380
-- Name: fk_ad_itemreqdiaria2_ad_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqdiaria
    ADD CONSTRAINT fk_ad_itemreqdiaria2_ad_re FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 3988 (class 2606 OID 85276)
-- Dependencies: 3349 2417 2380
-- Name: fk_ad_itemreqdiaria5_ad_pr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqdiaria
    ADD CONSTRAINT fk_ad_itemreqdiaria5_ad_pr FOREIGN KEY (numpro) REFERENCES ad_processo(numpro);


--
-- TOC entry 3989 (class 2606 OID 85281)
-- Dependencies: 3645 2523 2381
-- Name: fk_ad_itemreqhotel1_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqhotel
    ADD CONSTRAINT fk_ad_itemreqhotel1_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 3990 (class 2606 OID 85286)
-- Dependencies: 3358 2420 2381
-- Name: fk_ad_itemreqhotel2_ad_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqhotel
    ADD CONSTRAINT fk_ad_itemreqhotel2_ad_re FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 3991 (class 2606 OID 85291)
-- Dependencies: 3132 2360 2381
-- Name: fk_ad_itemreqhotel3_ad_em; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqhotel
    ADD CONSTRAINT fk_ad_itemreqhotel3_ad_em FOREIGN KEY (idempenho) REFERENCES ad_empenho(idempenho);


--
-- TOC entry 3992 (class 2606 OID 85296)
-- Dependencies: 3178 2373 2381
-- Name: fk_ad_itemreqhotel4_ad_ho; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqhotel
    ADD CONSTRAINT fk_ad_itemreqhotel4_ad_ho FOREIGN KEY (idhotelpref) REFERENCES ad_hotel(idhotel);


--
-- TOC entry 3993 (class 2606 OID 85301)
-- Dependencies: 3645 2523 2382
-- Name: fk_ad_itemreqpassagem1_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqpassagem
    ADD CONSTRAINT fk_ad_itemreqpassagem1_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 3994 (class 2606 OID 85306)
-- Dependencies: 3358 2420 2382
-- Name: fk_ad_itemreqpassagem2_ad_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqpassagem
    ADD CONSTRAINT fk_ad_itemreqpassagem2_ad_re FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 3995 (class 2606 OID 85311)
-- Dependencies: 3132 2360 2382
-- Name: fk_ad_itemreqpassagem3_ad_em; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqpassagem
    ADD CONSTRAINT fk_ad_itemreqpassagem3_ad_em FOREIGN KEY (idempenho) REFERENCES ad_empenho(idempenho);


--
-- TOC entry 3996 (class 2606 OID 85316)
-- Dependencies: 3626 2519 2382
-- Name: fk_ad_itemreqpassagem4_cm_mu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqpassagem
    ADD CONSTRAINT fk_ad_itemreqpassagem4_cm_mu FOREIGN KEY (idmunicipioorigem) REFERENCES cm_municipio(idmunicipio);


--
-- TOC entry 3997 (class 2606 OID 85321)
-- Dependencies: 3626 2519 2382
-- Name: fk_ad_itemreqpassagem5_cm_mu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqpassagem
    ADD CONSTRAINT fk_ad_itemreqpassagem5_cm_mu FOREIGN KEY (idmunicipiodestino) REFERENCES cm_municipio(idmunicipio);


--
-- TOC entry 3998 (class 2606 OID 85326)
-- Dependencies: 3645 2523 2383
-- Name: fk_ad_itemreqrestaurante1_cm_p; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqrestaurante
    ADD CONSTRAINT fk_ad_itemreqrestaurante1_cm_p FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 3999 (class 2606 OID 85331)
-- Dependencies: 3358 2420 2383
-- Name: fk_ad_itemreqrestaurante2_ad_r; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqrestaurante
    ADD CONSTRAINT fk_ad_itemreqrestaurante2_ad_r FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 4000 (class 2606 OID 85336)
-- Dependencies: 3132 2360 2383
-- Name: fk_ad_itemreqrestaurante3_ad_e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqrestaurante
    ADD CONSTRAINT fk_ad_itemreqrestaurante3_ad_e FOREIGN KEY (idempenho) REFERENCES ad_empenho(idempenho);


--
-- TOC entry 4001 (class 2606 OID 85341)
-- Dependencies: 3645 2523 2383
-- Name: fk_ad_itemreqrestaurante4_cm_p; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqrestaurante
    ADD CONSTRAINT fk_ad_itemreqrestaurante4_cm_p FOREIGN KEY (idpessoaacompanhante) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4002 (class 2606 OID 85346)
-- Dependencies: 3365 2422 2383
-- Name: fk_ad_itemreqrestaurante5_ad_r; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqrestaurante
    ADD CONSTRAINT fk_ad_itemreqrestaurante5_ad_r FOREIGN KEY (idrestaurantepref) REFERENCES ad_restaurante(idrestaurante);


--
-- TOC entry 4003 (class 2606 OID 85351)
-- Dependencies: 3358 2420 2384
-- Name: fk_ad_itemreqservext1_ad_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqservext
    ADD CONSTRAINT fk_ad_itemreqservext1_ad_re FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 4004 (class 2606 OID 85356)
-- Dependencies: 3376 2426 2384
-- Name: fk_ad_itemreqservext1_ad_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqservext
    ADD CONSTRAINT fk_ad_itemreqservext1_ad_se FOREIGN KEY (idservico) REFERENCES ad_servico(idservico);


--
-- TOC entry 4005 (class 2606 OID 85361)
-- Dependencies: 3181 2374 2374 2384 2384
-- Name: fk_ad_itemreqservext3_ad_it; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqservext
    ADD CONSTRAINT fk_ad_itemreqservext3_ad_it FOREIGN KEY (idlicitacao, item) REFERENCES ad_itemlicitacao(idlicitacao, item);


--
-- TOC entry 4006 (class 2606 OID 85366)
-- Dependencies: 3397 2436 2385
-- Name: fk_ad_itemreqservint1_ad_ti; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqservint
    ADD CONSTRAINT fk_ad_itemreqservint1_ad_ti FOREIGN KEY (idtiposervint) REFERENCES ad_tiposervint(idtiposervint);


--
-- TOC entry 4007 (class 2606 OID 85371)
-- Dependencies: 3358 2420 2385
-- Name: fk_ad_itemreqservint2_ad_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqservint
    ADD CONSTRAINT fk_ad_itemreqservint2_ad_re FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 4008 (class 2606 OID 85376)
-- Dependencies: 3645 2523 2386
-- Name: fk_ad_itemreqservpf1_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqservpf
    ADD CONSTRAINT fk_ad_itemreqservpf1_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4009 (class 2606 OID 85381)
-- Dependencies: 3358 2420 2386
-- Name: fk_ad_itemreqservpf2_ad_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqservpf
    ADD CONSTRAINT fk_ad_itemreqservpf2_ad_re FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 4010 (class 2606 OID 85386)
-- Dependencies: 3132 2360 2386
-- Name: fk_ad_itemreqservpf3_ad_em; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqservpf
    ADD CONSTRAINT fk_ad_itemreqservpf3_ad_em FOREIGN KEY (idempenho) REFERENCES ad_empenho(idempenho);


--
-- TOC entry 4011 (class 2606 OID 85391)
-- Dependencies: 3645 2523 2387
-- Name: fk_ad_itemreqveiculo1_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqveiculo
    ADD CONSTRAINT fk_ad_itemreqveiculo1_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4012 (class 2606 OID 85396)
-- Dependencies: 3358 2420 2387
-- Name: fk_ad_itemreqveiculo2_ad_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqveiculo
    ADD CONSTRAINT fk_ad_itemreqveiculo2_ad_re FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 4013 (class 2606 OID 85401)
-- Dependencies: 3420 2445 2387
-- Name: fk_ad_itemreqveiculo3_ad_ve; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqveiculo
    ADD CONSTRAINT fk_ad_itemreqveiculo3_ad_ve FOREIGN KEY (placa) REFERENCES ad_veiculo(placa);


--
-- TOC entry 4014 (class 2606 OID 85406)
-- Dependencies: 3287 2398 2387
-- Name: fk_ad_itemreqveiculo4_ad_mo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqveiculo
    ADD CONSTRAINT fk_ad_itemreqveiculo4_ad_mo FOREIGN KEY (idmotorista) REFERENCES ad_motorista(idmotorista);


--
-- TOC entry 4015 (class 2606 OID 85411)
-- Dependencies: 3626 2519 2387
-- Name: fk_ad_itemreqveiculo5_cm_mu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqveiculo
    ADD CONSTRAINT fk_ad_itemreqveiculo5_cm_mu FOREIGN KEY (idmunicipiodestino) REFERENCES cm_municipio(idmunicipio);


--
-- TOC entry 4016 (class 2606 OID 85416)
-- Dependencies: 3626 2519 2387
-- Name: fk_ad_itemreqveiculo6_cm_mu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqveiculo
    ADD CONSTRAINT fk_ad_itemreqveiculo6_cm_mu FOREIGN KEY (idmunicipioorigem) REFERENCES cm_municipio(idmunicipio);


--
-- TOC entry 4017 (class 2606 OID 85421)
-- Dependencies: 3399 2437 2387
-- Name: fk_ad_itemreqveiculo7_ad_ti; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqveiculo
    ADD CONSTRAINT fk_ad_itemreqveiculo7_ad_ti FOREIGN KEY (tipoveiculo) REFERENCES ad_tipoveiculo(tipoveiculo);


--
-- TOC entry 4019 (class 2606 OID 85426)
-- Dependencies: 3405 2439 2389
-- Name: fk_ad_lancamentoint1_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_lancamentoint
    ADD CONSTRAINT fk_ad_lancamentoint1_ad_uo FOREIGN KEY (iduoreq) REFERENCES ad_uo(iduo);


--
-- TOC entry 4020 (class 2606 OID 85431)
-- Dependencies: 3675 2535 2389
-- Name: fk_ad_lancamentoint1_cm_us; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_lancamentoint
    ADD CONSTRAINT fk_ad_lancamentoint1_cm_us FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 4021 (class 2606 OID 85436)
-- Dependencies: 3405 2439 2389
-- Name: fk_ad_lancamentoint2_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_lancamentoint
    ADD CONSTRAINT fk_ad_lancamentoint2_ad_uo FOREIGN KEY (iduoexec) REFERENCES ad_uo(iduo);


--
-- TOC entry 4022 (class 2606 OID 85441)
-- Dependencies: 3369 2424 2389
-- Name: fk_ad_lancamentoint3_ad_ru; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_lancamentoint
    ADD CONSTRAINT fk_ad_lancamentoint3_ad_ru FOREIGN KEY (idrubrica) REFERENCES ad_rubrica(idrubrica);


--
-- TOC entry 4023 (class 2606 OID 85446)
-- Dependencies: 3181 2374 2374 2389 2389
-- Name: fk_ad_lancamentoint4_ad_it; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_lancamentoint
    ADD CONSTRAINT fk_ad_lancamentoint4_ad_it FOREIGN KEY (idlicitacao, item) REFERENCES ad_itemlicitacao(idlicitacao, item);


--
-- TOC entry 4024 (class 2606 OID 85451)
-- Dependencies: 3358 2420 2389
-- Name: fk_ad_lancamentoint4_ad_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_lancamentoint
    ADD CONSTRAINT fk_ad_lancamentoint4_ad_re FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 4025 (class 2606 OID 85456)
-- Dependencies: 3284 2397 2391
-- Name: fk_ad_licitacao1_ad_mo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_licitacao
    ADD CONSTRAINT fk_ad_licitacao1_ad_mo FOREIGN KEY (idmodalidadelicitacao) REFERENCES ad_modalidadelicitacao(idmodalidadelicitacao);


--
-- TOC entry 4026 (class 2606 OID 85461)
-- Dependencies: 3349 2417 2391
-- Name: fk_ad_licitacao1_ad_pr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_licitacao
    ADD CONSTRAINT fk_ad_licitacao1_ad_pr FOREIGN KEY (numpro) REFERENCES ad_processo(numpro);


--
-- TOC entry 4027 (class 2606 OID 85466)
-- Dependencies: 3626 2519 2393
-- Name: fk_ad_localidadediaria1_cm_mu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_localidadediaria
    ADD CONSTRAINT fk_ad_localidadediaria1_cm_mu FOREIGN KEY (idmunicipio) REFERENCES cm_municipio(idmunicipio);


--
-- TOC entry 4028 (class 2606 OID 85471)
-- Dependencies: 3211 2380 2380 2393 2393
-- Name: fk_ad_localidadediaria2_ad_it; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_localidadediaria
    ADD CONSTRAINT fk_ad_localidadediaria2_ad_it FOREIGN KEY (idrequisicao, idvinculo) REFERENCES ad_itemreqdiaria(idrequisicao, idvinculo);


--
-- TOC entry 4031 (class 2606 OID 85476)
-- Dependencies: 3164 2369 2395
-- Name: fk_ad_mapalicitacao1_ad_fo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_mapalicitacao
    ADD CONSTRAINT fk_ad_mapalicitacao1_ad_fo FOREIGN KEY (idfornecedor) REFERENCES ad_fornecedor(idfornecedor);


--
-- TOC entry 4032 (class 2606 OID 85481)
-- Dependencies: 3181 2374 2374 2395 2395
-- Name: fk_ad_mapalicitacao2_ad_it; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_mapalicitacao
    ADD CONSTRAINT fk_ad_mapalicitacao2_ad_it FOREIGN KEY (idlicitacao, item) REFERENCES ad_itemlicitacao(idlicitacao, item);


--
-- TOC entry 4033 (class 2606 OID 85486)
-- Dependencies: 3383 2430 2430 2396 2396
-- Name: fk_ad_material2_ad_su; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_material
    ADD CONSTRAINT fk_ad_material2_ad_su FOREIGN KEY (idelemento, idsubelemento) REFERENCES ad_subelemento(idelemento, idsubelemento);


--
-- TOC entry 4034 (class 2606 OID 85491)
-- Dependencies: 3645 2523 2398
-- Name: fk_ad_motorista1_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_motorista
    ADD CONSTRAINT fk_ad_motorista1_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4035 (class 2606 OID 85496)
-- Dependencies: 3185 2375 2399
-- Name: fk_ad_movimento1_ad_mo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_movimento
    ADD CONSTRAINT fk_ad_movimento1_ad_mo FOREIGN KEY (iditemnota) REFERENCES ad_itemnota(iditemnota);


--
-- TOC entry 4036 (class 2606 OID 85501)
-- Dependencies: 3338 2412 2399
-- Name: fk_ad_movimento1_ad_or; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_movimento
    ADD CONSTRAINT fk_ad_movimento1_ad_or FOREIGN KEY (idordement) REFERENCES ad_ordentrega(idordement);


--
-- TOC entry 4037 (class 2606 OID 85506)
-- Dependencies: 3202 2378 2378 2399 2399
-- Name: fk_ad_movimento2_ad_it; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_movimento
    ADD CONSTRAINT fk_ad_movimento2_ad_it FOREIGN KEY (idrequisicao, idmaterial) REFERENCES ad_itemreq(idrequisicao, idmaterial);


--
-- TOC entry 4038 (class 2606 OID 85511)
-- Dependencies: 3292 2399 2399
-- Name: fk_ad_movimento2_ad_mo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_movimento
    ADD CONSTRAINT fk_ad_movimento2_ad_mo FOREIGN KEY (idmovimentoref) REFERENCES ad_movimento(idmovimento);


--
-- TOC entry 4039 (class 2606 OID 85516)
-- Dependencies: 3115 2354 2400
-- Name: fk_ad_movimentopat1_ad_de; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_movimentopat
    ADD CONSTRAINT fk_ad_movimentopat1_ad_de FOREIGN KEY (iddependenciaorigem) REFERENCES ad_dependencia(iddependencia);


--
-- TOC entry 4040 (class 2606 OID 85521)
-- Dependencies: 3115 2354 2400
-- Name: fk_ad_movimentopat2_ad_de; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_movimentopat
    ADD CONSTRAINT fk_ad_movimentopat2_ad_de FOREIGN KEY (iddependenciadestino) REFERENCES ad_dependencia(iddependencia);


--
-- TOC entry 4041 (class 2606 OID 85526)
-- Dependencies: 3411 2441 2400
-- Name: fk_ad_movimentopat2_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_movimentopat
    ADD CONSTRAINT fk_ad_movimentopat2_cm_se FOREIGN KEY (idsetororigem) REFERENCES cm_setor(idsetor);


--
-- TOC entry 4042 (class 2606 OID 85531)
-- Dependencies: 3411 2441 2400
-- Name: fk_ad_movimentopat3_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_movimentopat
    ADD CONSTRAINT fk_ad_movimentopat3_cm_se FOREIGN KEY (idsetordestino) REFERENCES cm_setor(idsetor);


--
-- TOC entry 4043 (class 2606 OID 85536)
-- Dependencies: 3185 2375 2401
-- Name: fk_ad_movimentoserv_itemnota; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_movimentoserv
    ADD CONSTRAINT fk_ad_movimentoserv_itemnota FOREIGN KEY (iditemnota) REFERENCES ad_itemnota(iditemnota);


--
-- TOC entry 4044 (class 2606 OID 85541)
-- Dependencies: 3268 2392 2402
-- Name: fk_ad_notafiscal1_ad_li; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_notafiscal
    ADD CONSTRAINT fk_ad_notafiscal1_ad_li FOREIGN KEY (idliquidacao) REFERENCES ad_liquidacao(idliquidacao);


--
-- TOC entry 4045 (class 2606 OID 85546)
-- Dependencies: 3132 2360 2402
-- Name: fk_ad_notafiscal2_ad_em; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_notafiscal
    ADD CONSTRAINT fk_ad_notafiscal2_ad_em FOREIGN KEY (idempenho) REFERENCES ad_empenho(idempenho);


--
-- TOC entry 4049 (class 2606 OID 85551)
-- Dependencies: 3405 2439 2404
-- Name: fk_ad_novomaterial2_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_novomaterial
    ADD CONSTRAINT fk_ad_novomaterial2_ad_uo FOREIGN KEY (iduoreq) REFERENCES ad_uo(iduo);


--
-- TOC entry 4050 (class 2606 OID 85556)
-- Dependencies: 3675 2535 2404
-- Name: fk_ad_novomaterial3_cm_us; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_novomaterial
    ADD CONSTRAINT fk_ad_novomaterial3_cm_us FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 4051 (class 2606 OID 85561)
-- Dependencies: 3351 2418 2405
-- Name: fk_ad_orcamento1_ad_pt; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_orcamento
    ADD CONSTRAINT fk_ad_orcamento1_ad_pt FOREIGN KEY (idptr) REFERENCES ad_ptr(idptr);


--
-- TOC entry 4052 (class 2606 OID 85566)
-- Dependencies: 3159 2368 2405
-- Name: fk_ad_orcamento2_ad_fo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_orcamento
    ADD CONSTRAINT fk_ad_orcamento2_ad_fo FOREIGN KEY (idfonte) REFERENCES ad_fonte(idfonte);


--
-- TOC entry 4053 (class 2606 OID 85571)
-- Dependencies: 3369 2424 2405
-- Name: fk_ad_orcamento3_ad_ru; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_orcamento
    ADD CONSTRAINT fk_ad_orcamento3_ad_ru FOREIGN KEY (idrubrica) REFERENCES ad_rubrica(idrubrica);


--
-- TOC entry 4054 (class 2606 OID 85576)
-- Dependencies: 3316 2405 2406
-- Name: fk_ad_orcamentohist1_ad_or; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_orcamentohist
    ADD CONSTRAINT fk_ad_orcamentohist1_ad_or FOREIGN KEY (idorcamento) REFERENCES ad_orcamento(idorcamento);


--
-- TOC entry 4055 (class 2606 OID 85581)
-- Dependencies: 3369 2424 2407
-- Name: fk_ad_orcamentointerno0_ad_ru; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_orcamentointerno
    ADD CONSTRAINT fk_ad_orcamentointerno0_ad_ru FOREIGN KEY (idrubrica) REFERENCES ad_rubrica(idrubrica);


--
-- TOC entry 4056 (class 2606 OID 85586)
-- Dependencies: 3405 2439 2407
-- Name: fk_ad_orcamentointerno1_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_orcamentointerno
    ADD CONSTRAINT fk_ad_orcamentointerno1_ad_uo FOREIGN KEY (iduo) REFERENCES ad_uo(iduo);


--
-- TOC entry 4057 (class 2606 OID 85591)
-- Dependencies: 3268 2392 2411
-- Name: fk_ad_ordembancaria1_ad_li; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_ordembancaria
    ADD CONSTRAINT fk_ad_ordembancaria1_ad_li FOREIGN KEY (idliquidacao) REFERENCES ad_liquidacao(idliquidacao);


--
-- TOC entry 4058 (class 2606 OID 85596)
-- Dependencies: 3104 2348 2413
-- Name: fk_ad_pagbolsa1_ad_bo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_pagbolsa
    ADD CONSTRAINT fk_ad_pagbolsa1_ad_bo FOREIGN KEY (idbolsista) REFERENCES ad_bolsista(idbolsista);


--
-- TOC entry 4059 (class 2606 OID 85601)
-- Dependencies: 3132 2360 2414
-- Name: fk_ad_paiempenho0_ad_em; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_paiempenho
    ADD CONSTRAINT fk_ad_paiempenho0_ad_em FOREIGN KEY (idempenhopai) REFERENCES ad_empenho(idempenho);


--
-- TOC entry 4060 (class 2606 OID 85606)
-- Dependencies: 3132 2360 2414
-- Name: fk_ad_paiempenho1_ad_em; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_paiempenho
    ADD CONSTRAINT fk_ad_paiempenho1_ad_em FOREIGN KEY (idempenho) REFERENCES ad_empenho(idempenho);


--
-- TOC entry 4062 (class 2606 OID 85611)
-- Dependencies: 3164 2369 2415
-- Name: fk_ad_participante_fornecedorid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_participante
    ADD CONSTRAINT fk_ad_participante_fornecedorid FOREIGN KEY (idfornecedor) REFERENCES ad_fornecedor(idfornecedor);


--
-- TOC entry 4061 (class 2606 OID 85616)
-- Dependencies: 3266 2391 2415
-- Name: fk_ad_participante_licitacaoid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_participante
    ADD CONSTRAINT fk_ad_participante_licitacaoid FOREIGN KEY (idlicitacao) REFERENCES ad_licitacao(idlicitacao);


--
-- TOC entry 4066 (class 2606 OID 85621)
-- Dependencies: 3405 2439 2420
-- Name: fk_ad_requisicao2_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_requisicao
    ADD CONSTRAINT fk_ad_requisicao2_ad_uo FOREIGN KEY (iduoreq) REFERENCES ad_uo(iduo);


--
-- TOC entry 4067 (class 2606 OID 85626)
-- Dependencies: 3405 2439 2420
-- Name: fk_ad_requisicao3_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_requisicao
    ADD CONSTRAINT fk_ad_requisicao3_ad_uo FOREIGN KEY (iduoexec) REFERENCES ad_uo(iduo);


--
-- TOC entry 4068 (class 2606 OID 85631)
-- Dependencies: 3675 2535 2420
-- Name: fk_ad_requisicao4_cm_us; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_requisicao
    ADD CONSTRAINT fk_ad_requisicao4_cm_us FOREIGN KEY (idusuarioreq) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 4069 (class 2606 OID 85636)
-- Dependencies: 3675 2535 2420
-- Name: fk_ad_requisicao5_cm_us; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_requisicao
    ADD CONSTRAINT fk_ad_requisicao5_cm_us FOREIGN KEY (idusuariogestor) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 4070 (class 2606 OID 85641)
-- Dependencies: 3405 2439 2421
-- Name: fk_ad_requisita1_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_requisita
    ADD CONSTRAINT fk_ad_requisita1_ad_uo FOREIGN KEY (iduo) REFERENCES ad_uo(iduo);


--
-- TOC entry 4071 (class 2606 OID 85646)
-- Dependencies: 3394 2435 2421
-- Name: fk_ad_requisita2_ad_ti; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_requisita
    ADD CONSTRAINT fk_ad_requisita2_ad_ti FOREIGN KEY (idtiporeq) REFERENCES ad_tiporeq(idtiporeq);


--
-- TOC entry 4072 (class 2606 OID 85651)
-- Dependencies: 3369 2424 2421
-- Name: fk_ad_requisita3_ad_ru; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_requisita
    ADD CONSTRAINT fk_ad_requisita3_ad_ru FOREIGN KEY (idrubrica) REFERENCES ad_rubrica(idrubrica);


--
-- TOC entry 4073 (class 2606 OID 85656)
-- Dependencies: 3349 2417 2423
-- Name: fk_ad_retencao1_ad_pr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_retencao
    ADD CONSTRAINT fk_ad_retencao1_ad_pr FOREIGN KEY (numpro) REFERENCES ad_processo(numpro) ON DELETE CASCADE;


--
-- TOC entry 4074 (class 2606 OID 85661)
-- Dependencies: 3282 2396 2425
-- Name: fk_ad_saldolic2_ad_ma; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_saldolic
    ADD CONSTRAINT fk_ad_saldolic2_ad_ma FOREIGN KEY (idmaterial) REFERENCES ad_material(idmaterial);


--
-- TOC entry 4075 (class 2606 OID 85666)
-- Dependencies: 3164 2369 2425
-- Name: fk_ad_saldolic3_ad_fo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_saldolic
    ADD CONSTRAINT fk_ad_saldolic3_ad_fo FOREIGN KEY (idfornecedor) REFERENCES ad_fornecedor(idfornecedor);


--
-- TOC entry 4076 (class 2606 OID 85671)
-- Dependencies: 3376 2426 2425
-- Name: fk_ad_saldolic3_adse; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_saldolic
    ADD CONSTRAINT fk_ad_saldolic3_adse FOREIGN KEY (idservico) REFERENCES ad_servico(idservico);


--
-- TOC entry 4077 (class 2606 OID 85676)
-- Dependencies: 3405 2439 2425
-- Name: fk_ad_saldolic4_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_saldolic
    ADD CONSTRAINT fk_ad_saldolic4_ad_uo FOREIGN KEY (iduoreq) REFERENCES ad_uo(iduo);


--
-- TOC entry 4078 (class 2606 OID 85681)
-- Dependencies: 3383 2430 2430 2426 2426
-- Name: fk_ad_servico1_ad_su; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_servico
    ADD CONSTRAINT fk_ad_servico1_ad_su FOREIGN KEY (idelemento, idsubelemento) REFERENCES ad_subelemento(idelemento, idsubelemento);


--
-- TOC entry 4079 (class 2606 OID 85686)
-- Dependencies: 3181 2374 2374 2428 2428
-- Name: fk_ad_solicitacao1_ad_it; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_solicitacao
    ADD CONSTRAINT fk_ad_solicitacao1_ad_it FOREIGN KEY (idlicitacao, item) REFERENCES ad_itemlicitacao(idlicitacao, item);


--
-- TOC entry 4080 (class 2606 OID 85691)
-- Dependencies: 3119 2356 2430
-- Name: fk_ad_subelemento1_ad_el; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_subelemento
    ADD CONSTRAINT fk_ad_subelemento1_ad_el FOREIGN KEY (idelemento) REFERENCES ad_elemento(idelemento);


--
-- TOC entry 4083 (class 2606 OID 85696)
-- Dependencies: 3369 2424 2435
-- Name: fk_ad_tiporeq1_ad_ru; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_tiporeq
    ADD CONSTRAINT fk_ad_tiporeq1_ad_ru FOREIGN KEY (idrubrica) REFERENCES ad_rubrica(idrubrica);


--
-- TOC entry 4084 (class 2606 OID 85701)
-- Dependencies: 3369 2424 2436
-- Name: fk_ad_tiposervint1_ad_ru; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_tiposervint
    ADD CONSTRAINT fk_ad_tiposervint1_ad_ru FOREIGN KEY (idrubrica) REFERENCES ad_rubrica(idrubrica);


--
-- TOC entry 4085 (class 2606 OID 85706)
-- Dependencies: 3225 2382 2382 2438 2438
-- Name: fk_ad_trecho1_ad_it; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_trecho
    ADD CONSTRAINT fk_ad_trecho1_ad_it FOREIGN KEY (idrequisicao, idpessoa) REFERENCES ad_itemreqpassagem(idrequisicao, idpessoa);


--
-- TOC entry 4086 (class 2606 OID 85711)
-- Dependencies: 3411 2441 2439
-- Name: fk_ad_uo2_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_uo
    ADD CONSTRAINT fk_ad_uo2_cm_se FOREIGN KEY (idsetor) REFERENCES cm_setor(idsetor);


--
-- TOC entry 4091 (class 2606 OID 85716)
-- Dependencies: 3405 2439 2443
-- Name: fk_ad_uoalmox1_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_uoalmox
    ADD CONSTRAINT fk_ad_uoalmox1_ad_uo FOREIGN KEY (iduoalmox) REFERENCES ad_uo(iduo) ON DELETE CASCADE;


--
-- TOC entry 4092 (class 2606 OID 85721)
-- Dependencies: 3405 2439 2443
-- Name: fk_ad_uoalmox2_ad_uo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_uoalmox
    ADD CONSTRAINT fk_ad_uoalmox2_ad_uo FOREIGN KEY (iduoreq) REFERENCES ad_uo(iduo) ON DELETE CASCADE;


--
-- TOC entry 4093 (class 2606 OID 85726)
-- Dependencies: 3399 2437 2445
-- Name: fk_ad_veiculo1_ad_ti; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_veiculo
    ADD CONSTRAINT fk_ad_veiculo1_ad_ti FOREIGN KEY (tipoveiculo) REFERENCES ad_tipoveiculo(tipoveiculo);


--
-- TOC entry 4095 (class 2606 OID 85731)
-- Dependencies: 3468 2463 2448
-- Name: fk_bt_assunto_etiqueta; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_assunto
    ADD CONSTRAINT fk_bt_assunto_etiqueta FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta);


--
-- TOC entry 4096 (class 2606 OID 85736)
-- Dependencies: 3468 2463 2450
-- Name: fk_bt_autor_etiqueta; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_autor
    ADD CONSTRAINT fk_bt_autor_etiqueta FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta);

--
-- TOC entry 4099 (class 2606 OID 85751)
-- Dependencies: 3529 2485 2452
-- Name: fk_bt_camposfixos1_bt_ob; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_camposfixos
    ADD CONSTRAINT fk_bt_camposfixos1_bt_ob FOREIGN KEY (idobra) REFERENCES bt_obra(idobra) ON DELETE CASCADE;


--
-- TOC entry 4100 (class 2606 OID 85756)
-- Dependencies: 3468 2463 2452
-- Name: fk_bt_camposfixos2_bt_et; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_camposfixos
    ADD CONSTRAINT fk_bt_camposfixos2_bt_et FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta) ON DELETE CASCADE;


--
-- TOC entry 4102 (class 2606 OID 85761)
-- Dependencies: 3568 2498 2498 2454 2454
-- Name: fk_bt_camposubficha1_bt_su; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_camposubficha
    ADD CONSTRAINT fk_bt_camposubficha1_bt_su FOREIGN KEY (idetiqueta, subcampo) REFERENCES bt_subcampo(idetiqueta, subcampo) ON DELETE CASCADE;


--
-- TOC entry 4103 (class 2606 OID 85766)
-- Dependencies: 3571 2499 2499 2454 2454
-- Name: fk_bt_camposubficha2_bt_su; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_camposubficha
    ADD CONSTRAINT fk_bt_camposubficha2_bt_su FOREIGN KEY (idficha, idsubficha) REFERENCES bt_subficha(idficha, idsubficha) ON DELETE CASCADE;


--
-- TOC entry 4104 (class 2606 OID 85771)
-- Dependencies: 3568 2498 2498 2458 2458
-- Name: fk_bt_consultacampo1_bt_su; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_consultacampo
    ADD CONSTRAINT fk_bt_consultacampo1_bt_su FOREIGN KEY (idetiqueta, subcampo) REFERENCES bt_subcampo(idetiqueta, subcampo) ON DELETE CASCADE;


--
-- TOC entry 4105 (class 2606 OID 85776)
-- Dependencies: 3446 2457 2458
-- Name: fk_bt_consultacampo2_bt_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_consultacampo
    ADD CONSTRAINT fk_bt_consultacampo2_bt_co FOREIGN KEY (idconsulta) REFERENCES bt_consulta(idconsulta) ON DELETE CASCADE;


--
-- TOC entry 4106 (class 2606 OID 85781)
-- Dependencies: 3487 2471 2459
-- Name: fk_bt_direito1_bt_gr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_direito
    ADD CONSTRAINT fk_bt_direito1_bt_gr FOREIGN KEY (idgrupo) REFERENCES bt_grupo(idgrupo) ON DELETE CASCADE;


--
-- TOC entry 4107 (class 2606 OID 85786)
-- Dependencies: 3539 2489 2459
-- Name: fk_bt_direito2_bt_op; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_direito
    ADD CONSTRAINT fk_bt_direito2_bt_op FOREIGN KEY (idoperacao) REFERENCES bt_operacao(idoperacao) ON DELETE CASCADE;


--
-- TOC entry 4108 (class 2606 OID 85791)
-- Dependencies: 3557 2495 2459
-- Name: fk_bt_direito3_bt_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_direito
    ADD CONSTRAINT fk_bt_direito3_bt_re FOREIGN KEY (idregracirculacao) REFERENCES bt_regracirculacao(idregracirculacao) ON DELETE CASCADE;


--
-- TOC entry 4110 (class 2606 OID 85796)
-- Dependencies: 3478 2465 2461
-- Name: fk_bt_emprestimo2_bt_ex; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_emprestimo
    ADD CONSTRAINT fk_bt_emprestimo2_bt_ex FOREIGN KEY (idexemplar) REFERENCES bt_exemplar(idexemplar);


--
-- TOC entry 4111 (class 2606 OID 85801)
-- Dependencies: 3466 2462 2465
-- Name: fk_bt_exemplar1_bt_es; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_exemplar
    ADD CONSTRAINT fk_bt_exemplar1_bt_es FOREIGN KEY (idestado) REFERENCES bt_estado(idestado);


--
-- TOC entry 4112 (class 2606 OID 85806)
-- Dependencies: 3557 2495 2465
-- Name: fk_bt_exemplar2_bt_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_exemplar
    ADD CONSTRAINT fk_bt_exemplar2_bt_re FOREIGN KEY (idregracirculacao) REFERENCES bt_regracirculacao(idregracirculacao);


--
-- TOC entry 4113 (class 2606 OID 85811)
-- Dependencies: 3576 2501 2465
-- Name: fk_bt_exemplar3_bt_un; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_exemplar
    ADD CONSTRAINT fk_bt_exemplar3_bt_un FOREIGN KEY (idunidade) REFERENCES bt_unidade(idunidade);


--
-- TOC entry 4114 (class 2606 OID 85816)
-- Dependencies: 3444 2456 2465
-- Name: fk_bt_exemplar4_bt_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_exemplar
    ADD CONSTRAINT fk_bt_exemplar4_bt_co FOREIGN KEY (idcolecao) REFERENCES bt_colecao(idcolecao);


--
-- TOC entry 4115 (class 2606 OID 85821)
-- Dependencies: 3529 2485 2465
-- Name: fk_bt_exemplar5_bt_ob; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_exemplar
    ADD CONSTRAINT fk_bt_exemplar5_bt_ob FOREIGN KEY (idobra) REFERENCES bt_obra(idobra);


--
-- TOC entry 4121 (class 2606 OID 85826)
-- Dependencies: 3482 2469 2470
-- Name: fk_bt_genero1_bt_fi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_genero
    ADD CONSTRAINT fk_bt_genero1_bt_fi FOREIGN KEY (idficha) REFERENCES bt_ficha(idficha);


--
-- TOC entry 4122 (class 2606 OID 85831)
-- Dependencies: 3529 2485 2472
-- Name: fk_bt_indicadores1_bt_ob; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_indicadores
    ADD CONSTRAINT fk_bt_indicadores1_bt_ob FOREIGN KEY (idobra) REFERENCES bt_obra(idobra) ON DELETE CASCADE;


--
-- TOC entry 4123 (class 2606 OID 85836)
-- Dependencies: 3468 2463 2472
-- Name: fk_bt_indicadores2_bt_et; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_indicadores
    ADD CONSTRAINT fk_bt_indicadores2_bt_et FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta) ON DELETE CASCADE;


--
-- TOC entry 4127 (class 2606 OID 85841)
-- Dependencies: 3539 2489 2475
-- Name: fk_bt_logoperacao2_bt_op; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_logoperacao
    ADD CONSTRAINT fk_bt_logoperacao2_bt_op FOREIGN KEY (idoperacao) REFERENCES bt_operacao(idoperacao);


--
-- TOC entry 4128 (class 2606 OID 85846)
-- Dependencies: 3502 2475 2476
-- Name: fk_bt_logoperacaodetalhe1_bt_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_logoperacaodetalhe
    ADD CONSTRAINT fk_bt_logoperacaodetalhe1_bt_l FOREIGN KEY (idlogoperacao) REFERENCES bt_logoperacao(idlogoperacao) ON DELETE CASCADE;


--
-- TOC entry 4129 (class 2606 OID 85851)
-- Dependencies: 3568 2498 2498 2477 2477
-- Name: fk_bt_material1_bt_su; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_material
    ADD CONSTRAINT fk_bt_material1_bt_su FOREIGN KEY (idetiqueta, subcampo) REFERENCES bt_subcampo(idetiqueta, subcampo) ON DELETE CASCADE;


--
-- TOC entry 4130 (class 2606 OID 85856)
-- Dependencies: 3529 2485 2477
-- Name: fk_bt_material2_bt_ob; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_material
    ADD CONSTRAINT fk_bt_material2_bt_ob FOREIGN KEY (idobra) REFERENCES bt_obra(idobra);


--
-- TOC entry 4140 (class 2606 OID 85861)
-- Dependencies: 3464 2461 2483
-- Name: fk_bt_multa1_bt_em; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_multa
    ADD CONSTRAINT fk_bt_multa1_bt_em FOREIGN KEY (idemprestimo) REFERENCES bt_emprestimo(idemprestimo);


--
-- TOC entry 4141 (class 2606 OID 85866)
-- Dependencies: 3497 2474 2484
-- Name: fk_bt_notainfracao2_bt_in; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_notainfracao
    ADD CONSTRAINT fk_bt_notainfracao2_bt_in FOREIGN KEY (idinfracao) REFERENCES bt_infracao(idinfracao) ON DELETE CASCADE;


--
-- TOC entry 4142 (class 2606 OID 85871)
-- Dependencies: 3485 2470 2485
-- Name: fk_bt_obra1_bt_ge; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_obra
    ADD CONSTRAINT fk_bt_obra1_bt_ge FOREIGN KEY (idgenero) REFERENCES bt_genero(idgenero);


--
-- TOC entry 4143 (class 2606 OID 85876)
-- Dependencies: 3457 2460 2485
-- Name: fk_bt_obra2_bt_ed; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_obra
    ADD CONSTRAINT fk_bt_obra2_bt_ed FOREIGN KEY (ideditora) REFERENCES bt_editora(ideditora);


--
-- TOC entry 4144 (class 2606 OID 85886)
-- Dependencies: 3534 2487 2488
-- Name: fk_bt_opcaolista1_bt_op; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_opcaolista
    ADD CONSTRAINT fk_bt_opcaolista1_bt_op FOREIGN KEY (idopcao) REFERENCES bt_opcao(idopcao) ON DELETE CASCADE;


--
-- TOC entry 4146 (class 2606 OID 85891)
-- Dependencies: 3557 2495 2492
-- Name: fk_bt_politica2_bt_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_politica
    ADD CONSTRAINT fk_bt_politica2_bt_re FOREIGN KEY (idregracirculacao) REFERENCES bt_regracirculacao(idregracirculacao) ON DELETE CASCADE;


--
-- TOC entry 4147 (class 2606 OID 85896)
-- Dependencies: 3487 2471 2492
-- Name: fk_bt_politica3_bt_gr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_politica
    ADD CONSTRAINT fk_bt_politica3_bt_gr FOREIGN KEY (idgrupo) REFERENCES bt_grupo(idgrupo) ON DELETE CASCADE;


--
-- TOC entry 4148 (class 2606 OID 85901)
-- Dependencies: 3468 2463 2493
-- Name: fk_bt_posicao1_bt_et; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_posicao
    ADD CONSTRAINT fk_bt_posicao1_bt_et FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta) ON DELETE CASCADE;


--
-- TOC entry 4149 (class 2606 OID 85906)
-- Dependencies: 3534 2487 2493
-- Name: fk_bt_posicao2_bt_op; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_posicao
    ADD CONSTRAINT fk_bt_posicao2_bt_op FOREIGN KEY (idopcao) REFERENCES bt_opcao(idopcao);


--
-- TOC entry 4150 (class 2606 OID 85911)
-- Dependencies: 3571 2499 2499 2494 2494
-- Name: fk_bt_posicaosubficha1_bt_su; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_posicaosubficha
    ADD CONSTRAINT fk_bt_posicaosubficha1_bt_su FOREIGN KEY (idficha, idsubficha) REFERENCES bt_subficha(idficha, idsubficha) ON DELETE CASCADE;


--
-- TOC entry 4151 (class 2606 OID 85916)
-- Dependencies: 3551 2493 2493 2494 2494
-- Name: fk_bt_posicaosubficha2_bt_po; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_posicaosubficha
    ADD CONSTRAINT fk_bt_posicaosubficha2_bt_po FOREIGN KEY (idetiqueta, posicao) REFERENCES bt_posicao(idetiqueta, posicao) ON DELETE CASCADE;


--
-- TOC entry 4152 (class 2606 OID 85921)
-- Dependencies: 3564 2497 2496
-- Name: fk_bt_reserva1_bt_si; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_reserva
    ADD CONSTRAINT fk_bt_reserva1_bt_si FOREIGN KEY (idsituacao) REFERENCES bt_situacao(idsituacao);


--
-- TOC entry 4153 (class 2606 OID 85926)
-- Dependencies: 3478 2465 2496
-- Name: fk_bt_reserva3_bt_ex; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_reserva
    ADD CONSTRAINT fk_bt_reserva3_bt_ex FOREIGN KEY (idexemplar) REFERENCES bt_exemplar(idexemplar);


--
-- TOC entry 4154 (class 2606 OID 85931)
-- Dependencies: 3468 2463 2498
-- Name: fk_bt_subcampo1_bt_et; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_subcampo
    ADD CONSTRAINT fk_bt_subcampo1_bt_et FOREIGN KEY (idetiqueta) REFERENCES bt_etiqueta(idetiqueta) ON DELETE CASCADE;


--
-- TOC entry 4155 (class 2606 OID 85936)
-- Dependencies: 3534 2487 2498
-- Name: fk_bt_subcampo2_bt_op; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_subcampo
    ADD CONSTRAINT fk_bt_subcampo2_bt_op FOREIGN KEY (idopcao) REFERENCES bt_opcao(idopcao);


--
-- TOC entry 4156 (class 2606 OID 85941)
-- Dependencies: 3482 2469 2499
-- Name: fk_bt_subficha1_bt_fi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_subficha
    ADD CONSTRAINT fk_bt_subficha1_bt_fi FOREIGN KEY (idficha) REFERENCES bt_ficha(idficha) ON DELETE CASCADE;


--
-- TOC entry 4157 (class 2606 OID 85946)
-- Dependencies: 3466 2462 2500
-- Name: fk_bt_transicao1_bt_es; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_transicao
    ADD CONSTRAINT fk_bt_transicao1_bt_es FOREIGN KEY (idestadopresente) REFERENCES bt_estado(idestado);


--
-- TOC entry 4158 (class 2606 OID 85951)
-- Dependencies: 3466 2462 2500
-- Name: fk_bt_transicao2_bt_es; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_transicao
    ADD CONSTRAINT fk_bt_transicao2_bt_es FOREIGN KEY (idestadofuturo) REFERENCES bt_estado(idestado);


--
-- TOC entry 4159 (class 2606 OID 85956)
-- Dependencies: 3539 2489 2500
-- Name: fk_bt_transicao3_bt_op; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_transicao
    ADD CONSTRAINT fk_bt_transicao3_bt_op FOREIGN KEY (idoperacao) REFERENCES bt_operacao(idoperacao);


--
-- TOC entry 4160 (class 2606 OID 85961)
-- Dependencies: 3487 2471 2504
-- Name: fk_bt_vinculo2_bt_gr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bt_vinculo
    ADD CONSTRAINT fk_bt_vinculo2_bt_gr FOREIGN KEY (idgrupo) REFERENCES bt_grupo(idgrupo);


--
-- TOC entry 4161 (class 2606 OID 85966)
-- Dependencies: 3669 2533 2505
-- Name: fk_cm_acesso1_cm_tr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_acesso
    ADD CONSTRAINT fk_cm_acesso1_cm_tr FOREIGN KEY (idtrans) REFERENCES cm_transacao(idtrans);


--
-- TOC entry 4162 (class 2606 OID 85971)
-- Dependencies: 3607 2512 2505
-- Name: fk_cm_acesso2_cm_gr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_acesso
    ADD CONSTRAINT fk_cm_acesso2_cm_gr FOREIGN KEY (idgrupo) REFERENCES cm_grupoacesso(idgrupo);


--
-- TOC entry 4163 (class 2606 OID 85976)
-- Dependencies: 3597 2508 2506
-- Name: fk_cm_agencia1_cm_ba; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_agencia
    ADD CONSTRAINT fk_cm_agencia1_cm_ba FOREIGN KEY (idbanco) REFERENCES cm_banco(idbanco) ON DELETE CASCADE;


--
-- TOC entry 4164 (class 2606 OID 85981)
-- Dependencies: 3675 2535 2511
-- Name: fk_cm_grpusuario1_cm_us; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_grpusuario
    ADD CONSTRAINT fk_cm_grpusuario1_cm_us FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 4165 (class 2606 OID 85986)
-- Dependencies: 3607 2512 2511
-- Name: fk_cm_grpusuario2_cm_gr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_grpusuario
    ADD CONSTRAINT fk_cm_grpusuario2_cm_gr FOREIGN KEY (idgrupo) REFERENCES cm_grupoacesso(idgrupo);


--
-- TOC entry 4166 (class 2606 OID 85991)
-- Dependencies: 3609 2513 2514
-- Name: fk_cm_indicemensal1_cm_in; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_indicemensal
    ADD CONSTRAINT fk_cm_indicemensal1_cm_in FOREIGN KEY (sigla) REFERENCES cm_indice(sigla);


--
-- TOC entry 4087 (class 2606 OID 85996)
-- Dependencies: 3636 2522 2440
-- Name: fk_cm_instituicao1_cm_pa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_instituicao
    ADD CONSTRAINT fk_cm_instituicao1_cm_pa FOREIGN KEY (idpais) REFERENCES cm_pais(idpais);


--
-- TOC entry 4088 (class 2606 OID 86001)
-- Dependencies: 3626 2519 2440
-- Name: fk_cm_instituicao2_cm_mu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_instituicao
    ADD CONSTRAINT fk_cm_instituicao2_cm_mu FOREIGN KEY (idmunicipio) REFERENCES cm_municipio(idmunicipio);


--
-- TOC entry 4167 (class 2606 OID 86006)
-- Dependencies: 3675 2535 2517
-- Name: fk_cm_log1_cm_us; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_log
    ADD CONSTRAINT fk_cm_log1_cm_us FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 4168 (class 2606 OID 86011)
-- Dependencies: 3675 2535 2518
-- Name: fk_cm_logant1_cm_us; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_logant
    ADD CONSTRAINT fk_cm_logant1_cm_us FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 4169 (class 2606 OID 86016)
-- Dependencies: 3671 2534 2519
-- Name: fk_cm_municipio1_cm_uf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_municipio
    ADD CONSTRAINT fk_cm_municipio1_cm_uf FOREIGN KEY (iduf) REFERENCES cm_uf(iduf);


--
-- TOC entry 4170 (class 2606 OID 86021)
-- Dependencies: 3636 2522 2519
-- Name: fk_cm_municipio2_cm_pa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_municipio
    ADD CONSTRAINT fk_cm_municipio2_cm_pa FOREIGN KEY (idpais) REFERENCES cm_pais(idpais);


--
-- TOC entry 4171 (class 2606 OID 86026)
-- Dependencies: 3660 2529 2520
-- Name: fk_cm_noticia1_cm_si; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_noticia
    ADD CONSTRAINT fk_cm_noticia1_cm_si FOREIGN KEY (idsistema) REFERENCES cm_sistema(idsistema) ON DELETE CASCADE;


--
-- TOC entry 4172 (class 2606 OID 86031)
-- Dependencies: 3666 2532 2521
-- Name: fk_cm_organograma1_cm_ti; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_organograma
    ADD CONSTRAINT fk_cm_organograma1_cm_ti FOREIGN KEY (idtipoorganograma) REFERENCES cm_tipoorganograma(idtipoorganograma) ON DELETE CASCADE;


--
-- TOC entry 4173 (class 2606 OID 86036)
-- Dependencies: 3411 2441 2521
-- Name: fk_cm_organograma2_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_organograma
    ADD CONSTRAINT fk_cm_organograma2_cm_se FOREIGN KEY (idsetor) REFERENCES cm_setor(idsetor) ON DELETE CASCADE;


--
-- TOC entry 4174 (class 2606 OID 86041)
-- Dependencies: 3411 2441 2521
-- Name: fk_cm_organograma3_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_organograma
    ADD CONSTRAINT fk_cm_organograma3_cm_se FOREIGN KEY (idsetorpai) REFERENCES cm_setor(idsetor) ON DELETE CASCADE;


--
-- TOC entry 4175 (class 2606 OID 86046)
-- Dependencies: 3636 2522 2523
-- Name: fk_cm_pessoa2_cm_pa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_pessoa
    ADD CONSTRAINT fk_cm_pessoa2_cm_pa FOREIGN KEY (idpais) REFERENCES cm_pais(idpais);


--
-- TOC entry 4176 (class 2606 OID 86051)
-- Dependencies: 3626 2519 2523
-- Name: fk_cm_pessoa3_cm_mu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_pessoa
    ADD CONSTRAINT fk_cm_pessoa3_cm_mu FOREIGN KEY (idmunicipio) REFERENCES cm_municipio(idmunicipio);


--
-- TOC entry 4177 (class 2606 OID 86056)
-- Dependencies: 3626 2519 2523
-- Name: fk_cm_pessoa4_cm_mu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_pessoa
    ADD CONSTRAINT fk_cm_pessoa4_cm_mu FOREIGN KEY (idmunicipionascimento) REFERENCES cm_municipio(idmunicipio);


--
-- TOC entry 4178 (class 2606 OID 86061)
-- Dependencies: 3636 2522 2523
-- Name: fk_cm_pessoa5_cm_pa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_pessoa
    ADD CONSTRAINT fk_cm_pessoa5_cm_pa FOREIGN KEY (idpaisnascimento) REFERENCES cm_pais(idpais);


--
-- TOC entry 4179 (class 2606 OID 86066)
-- Dependencies: 3599 2509 2523
-- Name: fk_cm_pessoa6_cm_es; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_pessoa
    ADD CONSTRAINT fk_cm_pessoa6_cm_es FOREIGN KEY (idestadocivil) REFERENCES cm_estadocivil(idestadocivil);


--
-- TOC entry 4180 (class 2606 OID 86071)
-- Dependencies: 3636 2522 2523
-- Name: fk_cm_pessoa6_cm_pa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_pessoa
    ADD CONSTRAINT fk_cm_pessoa6_cm_pa FOREIGN KEY (idpaisnacionalidade) REFERENCES cm_pais(idpais);


--
-- TOC entry 4181 (class 2606 OID 86076)
-- Dependencies: 3593 2506 2506 2523 2523
-- Name: fk_cm_pessoa7_cm_ag; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_pessoa
    ADD CONSTRAINT fk_cm_pessoa7_cm_ag FOREIGN KEY (idbanco, idagenc) REFERENCES cm_agencia(idbanco, idagenc);


--
-- TOC entry 4089 (class 2606 OID 86081)
-- Dependencies: 3409 2440 2441
-- Name: fk_cm_setor_cm_instituicao; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_setor
    ADD CONSTRAINT fk_cm_setor_cm_instituicao FOREIGN KEY (idinstituicao) REFERENCES cm_instituicao(idinstituicao);


--
-- TOC entry 4090 (class 2606 OID 86086)
-- Dependencies: 3645 2523 2441
-- Name: fk_cm_setor_cm_pessoa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_setor
    ADD CONSTRAINT fk_cm_setor_cm_pessoa FOREIGN KEY (idresponsavel) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4182 (class 2606 OID 86091)
-- Dependencies: 3411 2441 2526
-- Name: fk_cm_setoracesso01; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_setoracesso
    ADD CONSTRAINT fk_cm_setoracesso01 FOREIGN KEY (idsetor) REFERENCES cm_setor(idsetor);


--
-- TOC entry 4183 (class 2606 OID 86096)
-- Dependencies: 3411 2441 2526
-- Name: fk_cm_setoracesso02; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_setoracesso
    ADD CONSTRAINT fk_cm_setoracesso02 FOREIGN KEY (idsetoracesso) REFERENCES cm_setor(idsetor);


--
-- TOC entry 4184 (class 2606 OID 86101)
-- Dependencies: 3411 2441 2527
-- Name: fk_cm_setorequivalente1_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_setorequivalente
    ADD CONSTRAINT fk_cm_setorequivalente1_cm_se FOREIGN KEY (idsetor) REFERENCES cm_setor(idsetor) ON DELETE CASCADE;


--
-- TOC entry 4185 (class 2606 OID 86106)
-- Dependencies: 3411 2441 2527
-- Name: fk_cm_setorequivalente2_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_setorequivalente
    ADD CONSTRAINT fk_cm_setorequivalente2_cm_se FOREIGN KEY (idsetorequivalente) REFERENCES cm_setor(idsetor) ON DELETE CASCADE;


--
-- TOC entry 4186 (class 2606 OID 86111)
-- Dependencies: 3660 2529 2533
-- Name: fk_cm_transacao1_cm_si; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_transacao
    ADD CONSTRAINT fk_cm_transacao1_cm_si FOREIGN KEY (idsistema) REFERENCES cm_sistema(idsistema);


--
-- TOC entry 4187 (class 2606 OID 86116)
-- Dependencies: 3645 2523 2535
-- Name: fk_cm_usuario1_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_usuario
    ADD CONSTRAINT fk_cm_usuario1_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4188 (class 2606 OID 86121)
-- Dependencies: 3411 2441 2535
-- Name: fk_cm_usuario2_cm_se; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cm_usuario
    ADD CONSTRAINT fk_cm_usuario2_cm_se FOREIGN KEY (idsetor) REFERENCES cm_setor(idsetor);


--
-- TOC entry 4189 (class 2606 OID 86126)
-- Dependencies: 3680 2537 2536
-- Name: fk_ga_aluno3_ga_si; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ga_aluno
    ADD CONSTRAINT fk_ga_aluno3_ga_si FOREIGN KEY (idsituacao) REFERENCES ga_situacao(idsituacao);


--
-- TOC entry 4190 (class 2606 OID 86131)
-- Dependencies: 3409 2440 2536
-- Name: fk_ga_aluno4_cm_in; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ga_aluno
    ADD CONSTRAINT fk_ga_aluno4_cm_in FOREIGN KEY (idinstituicao) REFERENCES cm_instituicao(idinstituicao);


--
-- TOC entry 4191 (class 2606 OID 86136)
-- Dependencies: 3645 2523 2536
-- Name: fk_ga_aluno5_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ga_aluno
    ADD CONSTRAINT fk_ga_aluno5_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4267 (class 2606 OID 86141)
-- Dependencies: 3411 2441 2617
-- Name: fk_iddsetor; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provimento
    ADD CONSTRAINT fk_iddsetor FOREIGN KEY (idsetor) REFERENCES cm_setor(idsetor);


--
-- TOC entry 4018 (class 2606 OID 86146)
-- Dependencies: 3358 2420 2388
-- Name: fk_itemreqxerox_requisicaoid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_itemreqxerox
    ADD CONSTRAINT fk_itemreqxerox_requisicaoid FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 4193 (class 2606 OID 86151)
-- Dependencies: 3675 2535 2538
-- Name: fk_rh_acessoproades_cm_usuario; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_acessoproades
    ADD CONSTRAINT fk_rh_acessoproades_cm_usuario FOREIGN KEY (idusuario) REFERENCES cm_usuario(idusuario);


--
-- TOC entry 4192 (class 2606 OID 86156)
-- Dependencies: 3861 2612 2538
-- Name: fk_rh_acessoproades_rh_proades; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_acessoproades
    ADD CONSTRAINT fk_rh_acessoproades_rh_proades FOREIGN KEY (idproades) REFERENCES rh_proades(idproades);


--
-- TOC entry 4194 (class 2606 OID 86161)
-- Dependencies: 3928 2641 2539
-- Name: fk_rh_adicional1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_adicional
    ADD CONSTRAINT fk_rh_adicional1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo) ON DELETE CASCADE;


--
-- TOC entry 4195 (class 2606 OID 86166)
-- Dependencies: 3893 2625 2541
-- Name: fk_rh_assunto_rh_reuniao; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_assunto
    ADD CONSTRAINT fk_rh_assunto_rh_reuniao FOREIGN KEY (idreuniao) REFERENCES rh_reuniao(idreuniao);


--
-- TOC entry 4196 (class 2606 OID 86171)
-- Dependencies: 3928 2641 2542
-- Name: fk_rh_atividade1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_atividade
    ADD CONSTRAINT fk_rh_atividade1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4197 (class 2606 OID 86176)
-- Dependencies: 3893 2625 2544
-- Name: fk_rh_ausente_rh_reuniao; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_ausente
    ADD CONSTRAINT fk_rh_ausente_rh_reuniao FOREIGN KEY (idreuniao) REFERENCES rh_reuniao(idreuniao);


--
-- TOC entry 4198 (class 2606 OID 86181)
-- Dependencies: 3928 2641 2544
-- Name: fk_rh_ausente_rh_vinculo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_ausente
    ADD CONSTRAINT fk_rh_ausente_rh_vinculo FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4199 (class 2606 OID 86186)
-- Dependencies: 3928 2641 2545
-- Name: fk_rh_averbacao1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_averbacao
    ADD CONSTRAINT fk_rh_averbacao1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4200 (class 2606 OID 86191)
-- Dependencies: 3695 2545 2546
-- Name: fk_rh_averbfinalidade1_rh_av; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_averbfinalidade
    ADD CONSTRAINT fk_rh_averbfinalidade1_rh_av FOREIGN KEY (idaverbacao) REFERENCES rh_averbacao(idaverbacao) ON DELETE CASCADE;


--
-- TOC entry 4201 (class 2606 OID 86196)
-- Dependencies: 3928 2641 2547
-- Name: fk_rh_baseaposentadoria1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_baseaposentadoria
    ADD CONSTRAINT fk_rh_baseaposentadoria1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo) ON DELETE CASCADE;


--
-- TOC entry 4202 (class 2606 OID 86201)
-- Dependencies: 3709 2554 2548
-- Name: fk_rh_capacitacaocoinc_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_capacitacaocoinc
    ADD CONSTRAINT fk_rh_capacitacaocoinc_1 FOREIGN KEY (idmodulo1) REFERENCES rh_capacitacaomodulo(idmodulo);


--
-- TOC entry 4203 (class 2606 OID 86206)
-- Dependencies: 3709 2554 2548
-- Name: fk_rh_capacitacaocoinc_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_capacitacaocoinc
    ADD CONSTRAINT fk_rh_capacitacaocoinc_2 FOREIGN KEY (idmodulo2) REFERENCES rh_capacitacaomodulo(idmodulo);


--
-- TOC entry 4204 (class 2606 OID 86211)
-- Dependencies: 3709 2554 2552
-- Name: fk_rh_capacitacaoinsc_modulo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_capacitacaoinsc
    ADD CONSTRAINT fk_rh_capacitacaoinsc_modulo FOREIGN KEY (idmodulo) REFERENCES rh_capacitacaomodulo(idmodulo);


--
-- TOC entry 4205 (class 2606 OID 86216)
-- Dependencies: 3928 2641 2552
-- Name: fk_rh_capacitacaoinsc_vinculo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_capacitacaoinsc
    ADD CONSTRAINT fk_rh_capacitacaoinsc_vinculo FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4206 (class 2606 OID 86221)
-- Dependencies: 3788 2585 2555
-- Name: fk_rh_cargo1_rh_gr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_cargo
    ADD CONSTRAINT fk_rh_cargo1_rh_gr FOREIGN KEY (idgrupocargo) REFERENCES rh_grupocargo(idgrupocargo) ON DELETE CASCADE;


--
-- TOC entry 4207 (class 2606 OID 86226)
-- Dependencies: 3928 2641 2557
-- Name: fk_rh_cessao1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_cessao
    ADD CONSTRAINT fk_rh_cessao1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo) ON DELETE CASCADE;


--
-- TOC entry 4208 (class 2606 OID 86231)
-- Dependencies: 3834 2603 2603 2557 2557
-- Name: fk_rh_cessao2_rh_oc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_cessao
    ADD CONSTRAINT fk_rh_cessao2_rh_oc FOREIGN KEY (idgrupoocorrencia, idocorrencia) REFERENCES rh_ocorrencia(idgrupoocorrencia, idocorrencia);


--
-- TOC entry 4209 (class 2606 OID 86236)
-- Dependencies: 3409 2440 2557
-- Name: fk_rh_cessao3_cm_in; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_cessao
    ADD CONSTRAINT fk_rh_cessao3_cm_in FOREIGN KEY (idinstituicao) REFERENCES cm_instituicao(idinstituicao);


--
-- TOC entry 4210 (class 2606 OID 86241)
-- Dependencies: 3881 2620 2557
-- Name: fk_rh_cessao4_rh_pu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_cessao
    ADD CONSTRAINT fk_rh_cessao4_rh_pu FOREIGN KEY (idpublicacao) REFERENCES rh_publicacao(idpublicacao);


--
-- TOC entry 4211 (class 2606 OID 86246)
-- Dependencies: 3723 2558 2559
-- Name: fk_rh_cidsubcategoria1_rh_ci; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_cidsubcategoria
    ADD CONSTRAINT fk_rh_cidsubcategoria1_rh_ci FOREIGN KEY (idcidcategoria) REFERENCES rh_cidcategoria(idcidcategoria) ON DELETE CASCADE;


--
-- TOC entry 4212 (class 2606 OID 86251)
-- Dependencies: 3730 2561 2562
-- Name: fk_rh_classegrupocargo1_rh_cl; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_classegrupocargo
    ADD CONSTRAINT fk_rh_classegrupocargo1_rh_cl FOREIGN KEY (idclasse) REFERENCES rh_classe(idclasse);


--
-- TOC entry 4213 (class 2606 OID 86256)
-- Dependencies: 3788 2585 2562
-- Name: fk_rh_classegrupocargo2_rh_gr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_classegrupocargo
    ADD CONSTRAINT fk_rh_classegrupocargo2_rh_gr FOREIGN KEY (idgrupocargo) REFERENCES rh_grupocargo(idgrupocargo);


--
-- TOC entry 4215 (class 2606 OID 86261)
-- Dependencies: 3110 2351 2565
-- Name: fk_rh_conprovter_ad_contrato; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_contratoprovterceirizado
    ADD CONSTRAINT fk_rh_conprovter_ad_contrato FOREIGN KEY (idcontrato) REFERENCES ad_contrato(idcontrato);


--
-- TOC entry 4216 (class 2606 OID 86266)
-- Dependencies: 3878 2619 2619 2565 2565
-- Name: fk_rh_conprovter_rh_proter; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_contratoprovterceirizado
    ADD CONSTRAINT fk_rh_conprovter_rh_proter FOREIGN KEY (idterceirizado, datainicio) REFERENCES rh_provterceirizado(idterceirizado, datainicio);


--
-- TOC entry 4214 (class 2606 OID 86271)
-- Dependencies: 3409 2440 2564
-- Name: fk_rh_contrato0_cm_in; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_contrato
    ADD CONSTRAINT fk_rh_contrato0_cm_in FOREIGN KEY (idinstituicao) REFERENCES cm_instituicao(idinstituicao);


--
-- TOC entry 4217 (class 2606 OID 86276)
-- Dependencies: 3893 2625 2566
-- Name: fk_rh_decisao_rh_reuniao; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_decisao
    ADD CONSTRAINT fk_rh_decisao_rh_reuniao FOREIGN KEY (idreuniao) REFERENCES rh_reuniao(idreuniao);


--
-- TOC entry 4218 (class 2606 OID 86281)
-- Dependencies: 3749 2568 2567
-- Name: fk_rh_dependencia1_rh_de; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_dependencia
    ADD CONSTRAINT fk_rh_dependencia1_rh_de FOREIGN KEY (iddependente) REFERENCES rh_dependente(iddependente) ON DELETE CASCADE;


--
-- TOC entry 4219 (class 2606 OID 86286)
-- Dependencies: 3645 2523 2568
-- Name: fk_rh_dependente1_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_dependente
    ADD CONSTRAINT fk_rh_dependente1_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4220 (class 2606 OID 86291)
-- Dependencies: 3786 2584 2568
-- Name: fk_rh_dependente2_rh_fu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_dependente
    ADD CONSTRAINT fk_rh_dependente2_rh_fu FOREIGN KEY (idfuncionario) REFERENCES rh_funcionario(idfuncionario);


--
-- TOC entry 4221 (class 2606 OID 86296)
-- Dependencies: 3695 2545 2569
-- Name: fk_rh_desaverbacao1_rh_av; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_desaverbacao
    ADD CONSTRAINT fk_rh_desaverbacao1_rh_av FOREIGN KEY (idaverbacao) REFERENCES rh_averbacao(idaverbacao);


--
-- TOC entry 4222 (class 2606 OID 86301)
-- Dependencies: 3861 2612 2574
-- Name: fk_rh_equipe_rh_proades; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_equipe
    ADD CONSTRAINT fk_rh_equipe_rh_proades FOREIGN KEY (idproades) REFERENCES rh_proades(idproades);


--
-- TOC entry 4223 (class 2606 OID 86306)
-- Dependencies: 3857 2610 2610 2577 2577
-- Name: fk_rh_ferias1_rh_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_ferias
    ADD CONSTRAINT fk_rh_ferias1_rh_pe FOREIGN KEY (idvinculoperaq, datainicioperaq) REFERENCES rh_periodoaquisitivo(idvinculo, datainicio);


--
-- TOC entry 4224 (class 2606 OID 86311)
-- Dependencies: 3928 2641 2578
-- Name: fk_rh_fichaclinica1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_fichaclinica
    ADD CONSTRAINT fk_rh_fichaclinica1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4225 (class 2606 OID 86316)
-- Dependencies: 3881 2620 2581
-- Name: fk_rh_funcao1_rh_pu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_funcao
    ADD CONSTRAINT fk_rh_funcao1_rh_pu FOREIGN KEY (idpublicacaoinicio) REFERENCES rh_publicacao(idpublicacao);


--
-- TOC entry 4226 (class 2606 OID 86321)
-- Dependencies: 3881 2620 2581
-- Name: fk_rh_funcao2_rh_pu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_funcao
    ADD CONSTRAINT fk_rh_funcao2_rh_pu FOREIGN KEY (idpublicacaofim) REFERENCES rh_publicacao(idpublicacao);


--
-- TOC entry 4227 (class 2606 OID 86326)
-- Dependencies: 3831 2602 2581
-- Name: fk_rh_funcao4_rh_ni; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_funcao
    ADD CONSTRAINT fk_rh_funcao4_rh_ni FOREIGN KEY (idnivel) REFERENCES rh_nivelfuncao(idnivel);


--
-- TOC entry 4228 (class 2606 OID 86331)
-- Dependencies: 3715 2556 2581
-- Name: fk_rh_funcao5_rh_ca; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_funcao
    ADD CONSTRAINT fk_rh_funcao5_rh_ca FOREIGN KEY (idcargoconfianca) REFERENCES rh_cargoconfianca(idcargoconfianca);


--
-- TOC entry 4229 (class 2606 OID 86336)
-- Dependencies: 3928 2641 2582
-- Name: fk_rh_funcaoatual1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_funcaoatual
    ADD CONSTRAINT fk_rh_funcaoatual1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4230 (class 2606 OID 86341)
-- Dependencies: 3645 2523 2584
-- Name: fk_rh_funcionario1_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_funcionario
    ADD CONSTRAINT fk_rh_funcionario1_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4231 (class 2606 OID 86346)
-- Dependencies: 3834 2603 2603 2586 2586
-- Name: fk_rh_grupolicafast1_rh_oc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_grupolicafast
    ADD CONSTRAINT fk_rh_grupolicafast1_rh_oc FOREIGN KEY (idgrupoocorrencia, idocorrencia) REFERENCES rh_ocorrencia(idgrupoocorrencia, idocorrencia);


--
-- TOC entry 4232 (class 2606 OID 86351)
-- Dependencies: 3916 2637 2586
-- Name: fk_rh_grupolicafast2_rh_ti; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_grupolicafast
    ADD CONSTRAINT fk_rh_grupolicafast2_rh_ti FOREIGN KEY (idtipolicafast) REFERENCES rh_tipolicafast(idtipolicafast) ON DELETE CASCADE;


--
-- TOC entry 4233 (class 2606 OID 86356)
-- Dependencies: 3773 2580 2589
-- Name: fk_rh_histformacao1_rh_fo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_histformacao
    ADD CONSTRAINT fk_rh_histformacao1_rh_fo FOREIGN KEY (idformacao) REFERENCES rh_formacao(idformacao) ON DELETE CASCADE;


--
-- TOC entry 4234 (class 2606 OID 86361)
-- Dependencies: 3786 2584 2589
-- Name: fk_rh_histformacao2_rh_fu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_histformacao
    ADD CONSTRAINT fk_rh_histformacao2_rh_fu FOREIGN KEY (idfuncionario) REFERENCES rh_funcionario(idfuncionario) ON DELETE CASCADE;


--
-- TOC entry 4236 (class 2606 OID 86366)
-- Dependencies: 3800 2589 2590
-- Name: fk_rh_histincentivo_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_histincentivo
    ADD CONSTRAINT fk_rh_histincentivo_1 FOREIGN KEY (idhistformacao) REFERENCES rh_histformacao(idhistformacao);


--
-- TOC entry 4237 (class 2606 OID 86371)
-- Dependencies: 3809 2593 2590
-- Name: fk_rh_histincentivo_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_histincentivo
    ADD CONSTRAINT fk_rh_histincentivo_2 FOREIGN KEY (idhisttitulacao) REFERENCES rh_histtitulacao(idhisttitulacao);


--
-- TOC entry 4238 (class 2606 OID 86376)
-- Dependencies: 3854 2609 2590
-- Name: fk_rh_histincentivo_3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_histincentivo
    ADD CONSTRAINT fk_rh_histincentivo_3 FOREIGN KEY (idpercqualificacao) REFERENCES rh_percqualificacao(idpercqualificacao);


--
-- TOC entry 4239 (class 2606 OID 86381)
-- Dependencies: 3928 2641 2590
-- Name: fk_rh_histincentivo_4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_histincentivo
    ADD CONSTRAINT fk_rh_histincentivo_4 FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4240 (class 2606 OID 86386)
-- Dependencies: 3928 2641 2591
-- Name: fk_rh_historico_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_historico
    ADD CONSTRAINT fk_rh_historico_1 FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4241 (class 2606 OID 86391)
-- Dependencies: 3786 2584 2593
-- Name: fk_rh_histtitulacao1_rh_fu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_histtitulacao
    ADD CONSTRAINT fk_rh_histtitulacao1_rh_fu FOREIGN KEY (idfuncionario) REFERENCES rh_funcionario(idfuncionario);


--
-- TOC entry 4242 (class 2606 OID 86396)
-- Dependencies: 3928 2641 2594
-- Name: fk_rh_histvantagem1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_histvantagem
    ADD CONSTRAINT fk_rh_histvantagem1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo) ON DELETE CASCADE;


--
-- TOC entry 4243 (class 2606 OID 86401)
-- Dependencies: 3923 2640 2594
-- Name: fk_rh_histvantagem2_rh_va; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_histvantagem
    ADD CONSTRAINT fk_rh_histvantagem2_rh_va FOREIGN KEY (idvantagem) REFERENCES rh_vantagem(idvantagem) ON DELETE CASCADE;


--
-- TOC entry 4244 (class 2606 OID 86406)
-- Dependencies: 3928 2641 2597
-- Name: fk_rh_licafast1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_licafast
    ADD CONSTRAINT fk_rh_licafast1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo) ON DELETE CASCADE;


--
-- TOC entry 4245 (class 2606 OID 86411)
-- Dependencies: 3834 2603 2603 2597 2597
-- Name: fk_rh_licafast2_rh_oc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_licafast
    ADD CONSTRAINT fk_rh_licafast2_rh_oc FOREIGN KEY (idgrupoocorrencia, idocorrencia) REFERENCES rh_ocorrencia(idgrupoocorrencia, idocorrencia);


--
-- TOC entry 4246 (class 2606 OID 86416)
-- Dependencies: 3726 2559 2559 2597 2597
-- Name: fk_rh_licafast3_rh_ci; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_licafast
    ADD CONSTRAINT fk_rh_licafast3_rh_ci FOREIGN KEY (idcidcategoria, idcidsubcategoria) REFERENCES rh_cidsubcategoria(idcidcategoria, idcidsubcategoria);


--
-- TOC entry 4247 (class 2606 OID 86421)
-- Dependencies: 3881 2620 2597
-- Name: fk_rh_licafast4_rh_pu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_licafast
    ADD CONSTRAINT fk_rh_licafast4_rh_pu FOREIGN KEY (idpublicacao) REFERENCES rh_publicacao(idpublicacao);


--
-- TOC entry 4248 (class 2606 OID 86426)
-- Dependencies: 3762 2574 2599
-- Name: fk_rh_membro_rh_equipe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_membro
    ADD CONSTRAINT fk_rh_membro_rh_equipe FOREIGN KEY (idequipe) REFERENCES rh_equipe(idequipe);


--
-- TOC entry 4249 (class 2606 OID 86431)
-- Dependencies: 3928 2641 2599
-- Name: fk_rh_membro_rh_vinculo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_membro
    ADD CONSTRAINT fk_rh_membro_rh_vinculo FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4250 (class 2606 OID 86436)
-- Dependencies: 3861 2612 2600
-- Name: fk_rh_meta_rh_proades; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_meta
    ADD CONSTRAINT fk_rh_meta_rh_proades FOREIGN KEY (idproades) REFERENCES rh_proades(idproades);


--
-- TOC entry 4251 (class 2606 OID 86441)
-- Dependencies: 3861 2612 2601
-- Name: fk_rh_naohabilitado_rh_proades; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_naohabilitado
    ADD CONSTRAINT fk_rh_naohabilitado_rh_proades FOREIGN KEY (idproades) REFERENCES rh_proades(idproades);


--
-- TOC entry 4252 (class 2606 OID 86446)
-- Dependencies: 3928 2641 2601
-- Name: fk_rh_naohabilitado_rh_vinculo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_naohabilitado
    ADD CONSTRAINT fk_rh_naohabilitado_rh_vinculo FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4253 (class 2606 OID 86451)
-- Dependencies: 3794 2587 2603
-- Name: fk_rh_ocorrencia1_rh_gr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_ocorrencia
    ADD CONSTRAINT fk_rh_ocorrencia1_rh_gr FOREIGN KEY (idgrupoocorrencia) REFERENCES rh_grupoocorrencia(idgrupoocorrencia) ON DELETE CASCADE;


--
-- TOC entry 4254 (class 2606 OID 86456)
-- Dependencies: 3779 2581 2605
-- Name: fk_rh_ocupacaofuncao1_rh_fu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_ocupacaofuncao
    ADD CONSTRAINT fk_rh_ocupacaofuncao1_rh_fu FOREIGN KEY (idfuncao) REFERENCES rh_funcao(idfuncao);


--
-- TOC entry 4255 (class 2606 OID 86461)
-- Dependencies: 3928 2641 2605
-- Name: fk_rh_ocupacaofuncao2_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_ocupacaofuncao
    ADD CONSTRAINT fk_rh_ocupacaofuncao2_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4256 (class 2606 OID 86466)
-- Dependencies: 3881 2620 2605
-- Name: fk_rh_ocupacaofuncao3_rh_pu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_ocupacaofuncao
    ADD CONSTRAINT fk_rh_ocupacaofuncao3_rh_pu FOREIGN KEY (idpublicacaoinicio) REFERENCES rh_publicacao(idpublicacao);


--
-- TOC entry 4257 (class 2606 OID 86471)
-- Dependencies: 3881 2620 2605
-- Name: fk_rh_ocupacaofuncao4_rh_pu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_ocupacaofuncao
    ADD CONSTRAINT fk_rh_ocupacaofuncao4_rh_pu FOREIGN KEY (idpublicacaofim) REFERENCES rh_publicacao(idpublicacao);


--
-- TOC entry 4258 (class 2606 OID 86476)
-- Dependencies: 3921 2639 2606
-- Name: fk_rh_ocupacaovaga1_rh_va; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_ocupacaovaga
    ADD CONSTRAINT fk_rh_ocupacaovaga1_rh_va FOREIGN KEY (numerovaga) REFERENCES rh_vaga(numerovaga) ON DELETE CASCADE;


--
-- TOC entry 4259 (class 2606 OID 86481)
-- Dependencies: 3928 2641 2606
-- Name: fk_rh_ocupacaovaga2_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_ocupacaovaga
    ADD CONSTRAINT fk_rh_ocupacaovaga2_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo) ON DELETE CASCADE;


--
-- TOC entry 4260 (class 2606 OID 86486)
-- Dependencies: 3645 2523 2608
-- Name: fk_rh_pensionista1_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_pensionista
    ADD CONSTRAINT fk_rh_pensionista1_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4261 (class 2606 OID 86491)
-- Dependencies: 3928 2641 2608
-- Name: fk_rh_pensionista2_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_pensionista
    ADD CONSTRAINT fk_rh_pensionista2_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4262 (class 2606 OID 86496)
-- Dependencies: 3766 2576 2609
-- Name: fk_rh_percqualificacao_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_percqualificacao
    ADD CONSTRAINT fk_rh_percqualificacao_1 FOREIGN KEY (idescolaridadepcctae) REFERENCES rh_escolaridadepcctae(idescolaridadepcctae);


--
-- TOC entry 4263 (class 2606 OID 86501)
-- Dependencies: 3928 2641 2610
-- Name: fk_rh_periodoaquisitivo1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_periodoaquisitivo
    ADD CONSTRAINT fk_rh_periodoaquisitivo1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo) ON DELETE CASCADE;


--
-- TOC entry 4265 (class 2606 OID 86506)
-- Dependencies: 3893 2625 2611
-- Name: fk_rh_presente_rh_reuniao; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_presente
    ADD CONSTRAINT fk_rh_presente_rh_reuniao FOREIGN KEY (idreuniao) REFERENCES rh_reuniao(idreuniao);


--
-- TOC entry 4264 (class 2606 OID 86511)
-- Dependencies: 3928 2641 2611
-- Name: fk_rh_presente_rh_vinculo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_presente
    ADD CONSTRAINT fk_rh_presente_rh_vinculo FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4266 (class 2606 OID 86516)
-- Dependencies: 3928 2641 2615
-- Name: fk_rh_prorrogacao1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_prorrogacao
    ADD CONSTRAINT fk_rh_prorrogacao1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo) ON DELETE CASCADE;


--
-- TOC entry 4268 (class 2606 OID 86521)
-- Dependencies: 3685 2540 2617
-- Name: fk_rh_provimento1_rh_am; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provimento
    ADD CONSTRAINT fk_rh_provimento1_rh_am FOREIGN KEY (idambiente) REFERENCES rh_ambiente(idambiente);


--
-- TOC entry 4269 (class 2606 OID 86526)
-- Dependencies: 3928 2641 2617
-- Name: fk_rh_provimento1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provimento
    ADD CONSTRAINT fk_rh_provimento1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4270 (class 2606 OID 86531)
-- Dependencies: 3899 2628 2617
-- Name: fk_rh_provimento2_rh_si; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provimento
    ADD CONSTRAINT fk_rh_provimento2_rh_si FOREIGN KEY (idsituacao) REFERENCES rh_situacaofuncional(idsituacao);


--
-- TOC entry 4271 (class 2606 OID 86536)
-- Dependencies: 3713 2555 2555 2617 2617
-- Name: fk_rh_provimento3_rh_ca; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provimento
    ADD CONSTRAINT fk_rh_provimento3_rh_ca FOREIGN KEY (idgrupocargo, idcargo) REFERENCES rh_cargo(idgrupocargo, idcargo);


--
-- TOC entry 4272 (class 2606 OID 86541)
-- Dependencies: 3885 2621 2621 2617 2617
-- Name: fk_rh_provimento5_rh_re; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provimento
    ADD CONSTRAINT fk_rh_provimento5_rh_re FOREIGN KEY (idclasse, idreferencia) REFERENCES rh_referencia(idclasse, idreferencia);


--
-- TOC entry 4273 (class 2606 OID 86546)
-- Dependencies: 3815 2596 2617
-- Name: fk_rh_provimento6_rh_jo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provimento
    ADD CONSTRAINT fk_rh_provimento6_rh_jo FOREIGN KEY (idjornada) REFERENCES rh_jornada(idjornada);


--
-- TOC entry 4274 (class 2606 OID 86551)
-- Dependencies: 3881 2620 2617
-- Name: fk_rh_provimento7_rh_pu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provimento
    ADD CONSTRAINT fk_rh_provimento7_rh_pu FOREIGN KEY (idpublicacao) REFERENCES rh_publicacao(idpublicacao);


--
-- TOC entry 4275 (class 2606 OID 86556)
-- Dependencies: 3834 2603 2603 2617 2617
-- Name: fk_rh_provimento8_rh_oc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provimento
    ADD CONSTRAINT fk_rh_provimento8_rh_oc FOREIGN KEY (idgrupoocorrencia, idocorrencia) REFERENCES rh_ocorrencia(idgrupoocorrencia, idocorrencia);


--
-- TOC entry 4276 (class 2606 OID 86561)
-- Dependencies: 3409 2440 2619
-- Name: fk_rh_provterceirizado1_cm_in; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provterceirizado
    ADD CONSTRAINT fk_rh_provterceirizado1_cm_in FOREIGN KEY (idinstituicao) REFERENCES cm_instituicao(idinstituicao);


--
-- TOC entry 4277 (class 2606 OID 86566)
-- Dependencies: 3823 2598 2619
-- Name: fk_rh_provterceirizado1_rh_lo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provterceirizado
    ADD CONSTRAINT fk_rh_provterceirizado1_rh_lo FOREIGN KEY (idlocalterceirizado) REFERENCES rh_localterceirizado(idlocalterceirizado);


--
-- TOC entry 4278 (class 2606 OID 86571)
-- Dependencies: 3836 2604 2619
-- Name: fk_rh_provterceirizado1_rh_oc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provterceirizado
    ADD CONSTRAINT fk_rh_provterceirizado1_rh_oc FOREIGN KEY (idocorrenciaterceirizado) REFERENCES rh_ocorrenciaterceirizado(idocorrenciaterceirizado);


--
-- TOC entry 4279 (class 2606 OID 86576)
-- Dependencies: 3907 2631 2619
-- Name: fk_rh_provterceirizado1_rh_te; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provterceirizado
    ADD CONSTRAINT fk_rh_provterceirizado1_rh_te FOREIGN KEY (idterceirizado) REFERENCES rh_terceirizado(idterceirizado);


--
-- TOC entry 4280 (class 2606 OID 86581)
-- Dependencies: 3783 2583 2619
-- Name: fk_rh_provterceirizado2_rh_fu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provterceirizado
    ADD CONSTRAINT fk_rh_provterceirizado2_rh_fu FOREIGN KEY (idfuncaoterceirizado) REFERENCES rh_funcaoterceirizado(idfuncaoterceirizado);


--
-- TOC entry 4281 (class 2606 OID 86586)
-- Dependencies: 3815 2596 2619
-- Name: fk_rh_provterceirizado4_rh_jo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provterceirizado
    ADD CONSTRAINT fk_rh_provterceirizado4_rh_jo FOREIGN KEY (idjornada) REFERENCES rh_jornada(idjornada);


--
-- TOC entry 4284 (class 2606 OID 86591)
-- Dependencies: 3756 2571 2620
-- Name: fk_rh_publicacao1_rh_di; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_publicacao
    ADD CONSTRAINT fk_rh_publicacao1_rh_di FOREIGN KEY (iddiplomalegal) REFERENCES rh_diplomalegal(iddiplomalegal);


--
-- TOC entry 4286 (class 2606 OID 86596)
-- Dependencies: 3734 2562 2621
-- Name: fk_rh_referencia1_rh_cg; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_referencia
    ADD CONSTRAINT fk_rh_referencia1_rh_cg FOREIGN KEY (idclassegrupocargo) REFERENCES rh_classegrupocargo(idclassegrupocargo);


--
-- TOC entry 4285 (class 2606 OID 86601)
-- Dependencies: 3730 2561 2621
-- Name: fk_rh_referencia1_rh_cl; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_referencia
    ADD CONSTRAINT fk_rh_referencia1_rh_cl FOREIGN KEY (idclasse) REFERENCES rh_classe(idclasse) ON DELETE CASCADE;


--
-- TOC entry 4287 (class 2606 OID 86606)
-- Dependencies: 3645 2523 2623
-- Name: fk_rh_reppensao1_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_representacaopensao
    ADD CONSTRAINT fk_rh_reppensao1_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4288 (class 2606 OID 86611)
-- Dependencies: 3928 2641 2623
-- Name: fk_rh_reppensao2_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_representacaopensao
    ADD CONSTRAINT fk_rh_reppensao2_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4289 (class 2606 OID 86616)
-- Dependencies: 3852 2608 2623
-- Name: fk_rh_reppensao3_rh_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_representacaopensao
    ADD CONSTRAINT fk_rh_reppensao3_rh_pe FOREIGN KEY (idpensionista) REFERENCES rh_pensionista(idpensionista);


--
-- TOC entry 4291 (class 2606 OID 86621)
-- Dependencies: 3827 2600 2624
-- Name: fk_rh_resultadoreuniao_rh_meta; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_resultadoreuniao
    ADD CONSTRAINT fk_rh_resultadoreuniao_rh_meta FOREIGN KEY (idmeta) REFERENCES rh_meta(idmeta);


--
-- TOC entry 4290 (class 2606 OID 86626)
-- Dependencies: 3893 2625 2624
-- Name: fk_rh_resultreuniao_rh_reuniao; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_resultadoreuniao
    ADD CONSTRAINT fk_rh_resultreuniao_rh_reuniao FOREIGN KEY (idreuniao) REFERENCES rh_reuniao(idreuniao);


--
-- TOC entry 4292 (class 2606 OID 86631)
-- Dependencies: 3893 2625 2626
-- Name: fk_rh_reuniaoanexo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_reuniaoanexo
    ADD CONSTRAINT fk_rh_reuniaoanexo FOREIGN KEY (idreuniao) REFERENCES rh_reuniao(idreuniao);


--
-- TOC entry 4294 (class 2606 OID 86636)
-- Dependencies: 3827 2600 2627
-- Name: fk_rh_reuniaofator_rh_meta; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_reuniaofator
    ADD CONSTRAINT fk_rh_reuniaofator_rh_meta FOREIGN KEY (idmeta) REFERENCES rh_meta(idmeta);


--
-- TOC entry 4293 (class 2606 OID 86641)
-- Dependencies: 3893 2625 2627
-- Name: fk_rh_reuniaofator_rh_reuniao; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_reuniaofator
    ADD CONSTRAINT fk_rh_reuniaofator_rh_reuniao FOREIGN KEY (idreuniao) REFERENCES rh_reuniao(idreuniao);


--
-- TOC entry 4296 (class 2606 OID 86646)
-- Dependencies: 3834 2603 2603 2629 2629
-- Name: fk_rh_situacaoocorrencia1_rh_o; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_situacaoocorrencia
    ADD CONSTRAINT fk_rh_situacaoocorrencia1_rh_o FOREIGN KEY (idgrupoocorrencia, idocorrencia) REFERENCES rh_ocorrencia(idgrupoocorrencia, idocorrencia) ON DELETE CASCADE;


--
-- TOC entry 4295 (class 2606 OID 86651)
-- Dependencies: 3899 2628 2629
-- Name: fk_rh_situacaoocorrencia2_rh_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_situacaoocorrencia
    ADD CONSTRAINT fk_rh_situacaoocorrencia2_rh_s FOREIGN KEY (idsituacao) REFERENCES rh_situacaofuncional(idsituacao);


--
-- TOC entry 4297 (class 2606 OID 86656)
-- Dependencies: 3645 2523 2631
-- Name: fk_rh_terceirizado1_cm_pe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_terceirizado
    ADD CONSTRAINT fk_rh_terceirizado1_cm_pe FOREIGN KEY (idpessoa) REFERENCES cm_pessoa(idpessoa);


--
-- TOC entry 4298 (class 2606 OID 86661)
-- Dependencies: 3713 2555 2555 2639 2639
-- Name: fk_rh_vaga1_rh_ca; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_vaga
    ADD CONSTRAINT fk_rh_vaga1_rh_ca FOREIGN KEY (idgrupocargo, idcargo) REFERENCES rh_cargo(idgrupocargo, idcargo);


--
-- TOC entry 4299 (class 2606 OID 86666)
-- Dependencies: 3881 2620 2641
-- Name: fk_rh_vinculo2_rh_pu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_vinculo
    ADD CONSTRAINT fk_rh_vinculo2_rh_pu FOREIGN KEY (idpublicacaovacancia) REFERENCES rh_publicacao(idpublicacao);


--
-- TOC entry 4300 (class 2606 OID 86671)
-- Dependencies: 3786 2584 2641
-- Name: fk_rh_vinculo3_rh_fu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_vinculo
    ADD CONSTRAINT fk_rh_vinculo3_rh_fu FOREIGN KEY (idfuncionario) REFERENCES rh_funcionario(idfuncionario);


--
-- TOC entry 4301 (class 2606 OID 86676)
-- Dependencies: 3834 2603 2603 2641 2641
-- Name: fk_rh_vinculo4_rh_oc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_vinculo
    ADD CONSTRAINT fk_rh_vinculo4_rh_oc FOREIGN KEY (idgrupoocorrenciavacancia, idocorrenciavacancia) REFERENCES rh_ocorrencia(idgrupoocorrencia, idocorrencia);


--
-- TOC entry 4303 (class 2606 OID 86681)
-- Dependencies: 3928 2641 2642
-- Name: fk_rh_vinculocid1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_vinculocid
    ADD CONSTRAINT fk_rh_vinculocid1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4302 (class 2606 OID 86686)
-- Dependencies: 3723 2558 2642
-- Name: fk_rh_vinculocid2_rh_ci; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_vinculocid
    ADD CONSTRAINT fk_rh_vinculocid2_rh_ci FOREIGN KEY (cid) REFERENCES rh_cidcategoria(idcidcategoria);


--
-- TOC entry 4305 (class 2606 OID 86691)
-- Dependencies: 3928 2641 2643
-- Name: fk_rh_vinculosih1_rh_vi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_vinculosih
    ADD CONSTRAINT fk_rh_vinculosih1_rh_vi FOREIGN KEY (idvinculo) REFERENCES rh_vinculo(idvinculo);


--
-- TOC entry 4304 (class 2606 OID 86696)
-- Dependencies: 3728 2560 2643
-- Name: fk_rh_vinculosih2_rh_ci; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_vinculosih
    ADD CONSTRAINT fk_rh_vinculosih2_rh_ci FOREIGN KEY (idcirurgia) REFERENCES rh_cirurgia(codigo);


--
-- TOC entry 4081 (class 2606 OID 86701)
-- Dependencies: 3266 2391 2431
-- Name: fk_suplementacaoitem_licitacaoid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_suplementacaoitem
    ADD CONSTRAINT fk_suplementacaoitem_licitacaoid FOREIGN KEY (idlicitacao) REFERENCES ad_licitacao(idlicitacao);


--
-- TOC entry 4082 (class 2606 OID 86706)
-- Dependencies: 3358 2420 2431
-- Name: fk_suplementacaoitem_requisicaoid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ad_suplementacaoitem
    ADD CONSTRAINT fk_suplementacaoitem_requisicaoid FOREIGN KEY (idrequisicao) REFERENCES ad_requisicao(idrequisicao);


--
-- TOC entry 4282 (class 2606 OID 86711)
-- Dependencies: 3764 2575 2619
-- Name: sys_c009268; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provterceirizado
    ADD CONSTRAINT sys_c009268 FOREIGN KEY (idescala) REFERENCES rh_escala(idescala);


--
-- TOC entry 4283 (class 2606 OID 86716)
-- Dependencies: 3738 2564 2619
-- Name: sys_c009783; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_provterceirizado
    ADD CONSTRAINT sys_c009783 FOREIGN KEY (idcontrato) REFERENCES rh_contrato(idcontrato);


--
-- TOC entry 4235 (class 2606 OID 86721)
-- Dependencies: 3766 2576 2589
-- Name: sys_c009962; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rh_histformacao
    ADD CONSTRAINT sys_c009962 FOREIGN KEY (idescolaridadepcctae) REFERENCES rh_escolaridadepcctae(idescolaridadepcctae);


--
-- TOC entry 4314 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: -
--


ALTER TABLE ONLY bt_autorobra
    ADD CONSTRAINT fk_bt_autor_obra FOREIGN KEY (idautor, idetiqueta, subcampo) REFERENCES bt_autor(idautor, idetiqueta, subcampo);

ALTER TABLE ONLY bt_autorobra
    ADD CONSTRAINT fk_bt_autor_obra_mat FOREIGN KEY (idmaterial) REFERENCES bt_material(idmaterial);

ALTER TABLE ONLY bt_autorobra
    ADD CONSTRAINT fk_bt_obra_autor FOREIGN KEY (idobra) REFERENCES bt_obra(idobra);


REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


------------------------------------------------------------------------------------------------------------------------
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
