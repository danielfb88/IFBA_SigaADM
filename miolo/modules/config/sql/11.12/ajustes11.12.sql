create table ad_processoemail(
    idusuario int not null,
    numpro varchar(12) not null,
    constraint ad_pkeyproemail primary key (idusuario, numpro),
    constraint ad_fkeyusu FOREIGN KEY (idusuario) references cm_usuario (idusuario)
    MATCH SIMPLE ON UPDATE cascade ON DELETE cascade,
    constraint ad_fkeypro FOREIGN KEY (numpro) references ad_processo (numpro)
    MATCH SIMPLE ON UPDATE cascade ON DELETE cascade
);

INSERT INTO cm_transacao VALUES (nextval('seq_cm_transacao'),'ADM_PATRIMONIOADMIN',2);

INSERT INTO cm_grupoacesso VALUES (nextval('seq_cm_grupoacesso'),'ADM_PATRIMONIOADMIN');

INSERT INTO cm_acesso (idgrupo, idtrans, direito) 
VALUES ((SELECT  MAX(idgrupo) FROM cm_grupoacesso WHERE grupo = 'ADM_PATRIMONIOADMIN'),
    (SELECT  MAX(idtrans) FROM cm_transacao WHERE TRIM(transacao)='ADM_PATRIMONIOADMIN'),
    15);

