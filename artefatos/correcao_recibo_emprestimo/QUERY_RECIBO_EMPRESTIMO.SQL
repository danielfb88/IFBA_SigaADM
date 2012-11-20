SELECT 
p.nome,
v.codigoacesso,
obr.titulo,
a.conteudo as autor,
exemp.volume,
exemp.numerodotombo,
exemp.numinventario,
empr.datahoradoemprestimo,
empr.datahoraprevisaodevolucao

FROM cm_pessoa p
JOIN cm_usuario u ON (p.idpessoa = u.idpessoa)
JOIN bt_validacao v ON (u.idusuario = v.idusuario)
JOIN bt_emprestimo empr ON (u.idusuario = empr.idusuario)
JOIN bt_obra obr ON (empr.idobra = obr.idobra)
JOIN bt_autor a ON (obr.idautor = a.idautor)
JOIN bt_exemplar exemp ON (exemp.idexemplar = empr.idexemplar)

WHERE 
v.codigoacesso = 'd' AND
empr.datahoradadevolucao IS NULL AND
a.idetiqueta = 53 AND
a.subcampo = 'a'