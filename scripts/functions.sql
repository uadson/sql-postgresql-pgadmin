-- Funções Agregadas
select avg(valor) from pedido;
select count(idmunicipio) from municipio;
select count(*) from municipio;
select * from transportadora;
select count(logradouro) from transportadora;
select count(idtransportadora) from transportadora;
select * from municipio;
select count(idmunicipio) from municipio where iduf = 2;
select max(valor) from pedido;
select min(valor), max(valor) from pedido;
select sum(valor) from pedido;

-- Agrupamento ( é necessário uso de uma função de agregamento)
select idcliente, sum(valor) from pedido group by idcliente;

-- Para queries com condições em agrupamento é necessário o uso do código having
select idcliente, sum(valor) from pedido group by idcliente having sum(valor) > 500;

select idcliente, sum(valor) from pedido group by idcliente order by sum(valor) desc;