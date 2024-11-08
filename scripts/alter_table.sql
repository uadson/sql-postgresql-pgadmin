alter table cliente rename column profissao to idprofissao;

select * from cliente;

alter table cliente alter column idprofissao type integer;

-- ERROR:  column "idprofissao" cannot be cast automatically to type integer
-- HINT:  You might need to specify "USING idprofissao::integer".

-- Será necessário excluír a coluna idprofissao e recriá-la pois, como existem dados persistidos à mesma
-- não é possível alterá-la.

-- Porém é necessário realizar o backup dos dados que estão nesta coluna antes de excluí-la.

-- Estudante -> 1, 9, 10, 12, 15, 17
-- Engenheiro -> 2
-- Pedreiro -> 3
-- Jornalista -> 4, 5
-- Professor -> 6, 7, 8, 13
-- Null -> 11, 14

-- excluíndo coluna
alter table cliente drop idprofissao;

-- adicionando nova coluna
alter table cliente add idprofissao integer;

-- adicionando uma constraint à coluna
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);

-- idprofissao | nome
-- 1           | Estudante
-- 2           | Engenheiro
-- 3           | Pedreiro
-- 4           | Jornalista
-- 5           | Professor

update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);
update cliente set idprofissao = 2 where idcliente in (2);
update cliente set idprofissao = 3 where idcliente in (3);
update cliente set idprofissao = 4 where idcliente in (4, 5);
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13);
update cliente set idprofissao = null where idcliente in (11, 14);