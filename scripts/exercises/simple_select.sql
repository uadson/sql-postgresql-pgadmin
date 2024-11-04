select * from cliente;

select nome as "Nome", data_nascimento as "Data de Nascimento" from cliente;

select cpf, rg from cliente;

select 'CPF: ' || cpf || ' | RG: ' || rg  as "CPF e RG" from cliente; -- Concatenação

select * from cliente limit 3;

select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

select nome from cliente where nome like 'C%'; -- Nome inicia com a letra C

select nome from cliente where nome like '%c%'; -- Nome inicia e termina com qualquer caracter mas possui a letra em alguma posição

select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';

select nome, rg from cliente where rg is null;

select nome from cliente order by nome asc;

select nome from cliente order by nome desc;

