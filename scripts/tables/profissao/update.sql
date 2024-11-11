-- PROFISSÃO

-- Estudante -> 1, 9, 10, 12, 15, 17
-- Engenheiro -> 2
-- Pedreiro -> 3
-- Jornalista -> 4, 5
-- Professor -> 6, 7, 8, 13
-- Null -> 11, 14

-- idprofissao | nome
-- 1           | Estudante
-- 2           | Engenheiro
-- 3           | Pedreiro
-- 4           | Jornalista
-- 5           | Professor

alter table cliente drop profissao;
alter table cliente add idprofissao integer;
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);

update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);
update cliente set idprofissao = 2 where idcliente in (2);
update cliente set idprofissao = 3 where idcliente in (3);
update cliente set idprofissao = 4 where idcliente in (4, 5);
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13);
update cliente set idprofissao = null where idcliente in (11, 14);