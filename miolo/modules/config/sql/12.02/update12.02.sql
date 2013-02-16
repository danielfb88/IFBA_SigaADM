CREATE OR REPLACE FUNCTION gatilho_rh_provterceirizado() RETURNS trigger AS $BODY$
BEGIN 
IF NEW.datafim = '0001-01-01 BC' THEN
NEW.datafim := null;
END IF;
RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql VOLATILE COST 100;

CREATE TRIGGER  "u_rh_provterceirizado" BEFORE INSERT 
ON rh_provterceirizado FOR EACH ROW 
    EXECUTE PROCEDURE  gatilho_rh_provterceirizado();

update ad_vidautil 
set anosvidautil = null, 
valorresidual = null 
where idvidautil in ( 142120200 , 142122000 , 142121600, 142124400 );

INSERT INTO rh_ocorrencia VALUES ('3','248','OUTROS');
INSERT INTO rh_situacaofuncional VALUES ('52','OUTROS','OTR');
INSERT INTO rh_ocorrencia values ('1','502','OUTROS');
INSERT INTO rh_situacaofuncional VALUES ('54','OUTROS','OTR');
INSERT INTO rh_cargo VALUES ('60','4','OUTROS');
INSERT INTO rh_ocorrencia values ('1','504','OUTROS');

