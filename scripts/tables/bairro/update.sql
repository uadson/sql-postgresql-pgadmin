-- BAIRRO

-- Backup col bairro
-- Nome                | Ids
-- Cidade Nova         | 12, 1, 13,  
-- Centro              | 6, 8, 9, 17, 2, 3
-- São Pedro           | 5, 4
-- Santa Rosa          | 7

-- idbairro             | nome
-- 1                    | Cidade Nova
-- 2                    | Centro
-- 3                    | São Pedro
-- 4                    | Santa Rosa

alter table cliente drop bairro;
alter table cliente add idbairro integer;
alter table cliente add constraint fk_cln_idbairro foreign key (idbairro) references bairro (idbairro);

update cliente set idbairro = 1 where idcliente in (12, 1, 13);
update cliente set idbairro = 2 where idcliente in (6, 8, 9, 17, 2, 3);
update cliente set idbairro = 3 where idcliente in (5, 4);
update cliente set idbairro = 4 where idcliente = 7;