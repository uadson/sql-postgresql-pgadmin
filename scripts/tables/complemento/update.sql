-- COMPLEMENTO

alter table cliente drop complemento;
alter table cliente add idcomplemento integer;
alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento (idcomplemento);

-- idcomplemento | nome
-- 1             | Casa
-- 2             | Apartamento

-- Backup col complemento
-- Nome           | Ids
-- Casa           | 1, 4, 9, 13
-- Apartamento    | 17, 2, 3, 7
-- Null           | 12, 15, 10, 6, 11, 14, 5, 8

update cliente set idcomplemento = 1 where idcliente in (1, 4, 9, 13);
update cliente set idcomplemento = 2 where idcliente in (17, 2, 3, 7);