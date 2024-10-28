select * from cliente;

select nome as "Nome", data_nascimento as "Data de Nascimento" from cliente;

select cpf, rg from cliente;

select 'CPF: ' || cpf || ' | RG: ' || rg  as "CPF e RG" from cliente; -- Concatenação

select * from cliente limit 3;