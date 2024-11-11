-- MUNICIPIO

-- Backup col municipio
-- Nome                     | Ids
-- Porto União              | 2, 10, 11, 1
-- Canoinhas                | 3, 12
-- União da Vitória         | 14, 15
-- General Carneiro         | 4, 5
-- São Paulo                | 6, 13
-- Rio de Janeiro           | 7
-- Curitiba                 | 17
-- Porta Alegre             | 8, 9

-- idmunicipio           | nome
-- 1                     | Porto União
-- 2                     | Canoinhas
-- 3                     | União da Vitória
-- 4                     | General Carneiro
-- 5                     | São Paulo
-- 6                     | Rio de Janeiro
-- 7                     | Uberlândia
-- 8                     | Porto Alegre
-- 9                     | Curitiba

alter table cliente drop uf;
alter table cliente drop municipio;
alter table cliente add idmunicipio integer;
alter table cliente add constraint fk_cln_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio);

update cliente set idmunicipio = 1 where idcliente in (2, 10, 11, 1);
update cliente set idmunicipio = 2 where idcliente in (3, 12);
update cliente set idmunicipio = 3 where idcliente in (14, 15);
update cliente set idmunicipio = 4 where idcliente in (4, 5);
update cliente set idmunicipio = 5 where idcliente in (6, 13);
update cliente set idmunicipio = 6 where idcliente = 7;
update cliente set idmunicipio = 8 where idcliente in (8, 9);
update cliente set idmunicipio = 9 where idcliente = 17;