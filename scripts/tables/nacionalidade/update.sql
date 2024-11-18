-- NACIONALIDADE

-- idnacionalidade | nome
-- 1               | Brasileira
-- 2               | Italiana
-- 3               | Norte-Americana
-- 4               | Alemã

-- Backup col nacionalidade
-- Nome            | Ids
-- Null            | 12, 15
-- Alemã           | 9, 13
-- Brasileira      | 1, 10, 17, 2, 3, 4, 6, 11, 14
-- Italiana        | 5, 7
-- Norte-Americana | 8
alter table cliente drop nacionalidade;
alter table cliente add idnacionalidade integer;
alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade);

update cliente set idnacionalidade = 1 where idcliente in (1, 10, 17, 2, 3, 4, 6, 11, 14);
update cliente set idnacionalidade = 2 where idcliente in (5, 7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9, 13);