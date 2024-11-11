-- 1. Somente o nome de todos os vendedores em ordem alfabética.
select nome from vendedor order by nome asc;
-- 2. Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.
select * from produto where valor > 200 order by valor;
-- 3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
select nome, valor, valor * 0.9 as valor_reajustado from produto order by nome;
-- 4. Os municípios do Rio Grande do Sul.
select * from municipio where iduf = 5;
-- 5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.
select * from pedido where data_pedido between '2008-04-01' and '2008-04-25' order by valor;
-- 6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.
select * from pedido where valor between 1000 and 1500;
-- 7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.
select * from pedido where valor not between 100 and 500;
-- 8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.
select * from pedido where idvendedor = 1 order by valor desc;
-- 9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
select * from pedido where idcliente = 1 order by valor asc;
-- 10. Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.
select * from pedido where idcliente = 15 and idvendedor = 1;
-- 11. Os pedidos que foram transportados pela transportadora União Transportes.
select * from pedido where idtransportadora = 2;
-- 12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
select * from pedido where idvendedor = 5 or idvendedor = 7;
-- 13. Os clientes que moram em União da Vitória ou Porto União.
select nome, idmunicipio from cliente where idmunicipio = 1 or idmunicipio = 3;
-- 14. Os clientes que não moram em União da Vitória e nem em Porto União.
select nome, idmunicipio from cliente where not idmunicipio = 1 or idmunicipio = 3;
-- 15. Os clientes que não informaram o logradouro.

-- 16. Os clientes que moram em avenidas.

-- 17. Os vendedores que o nome começa com a letra S.

-- 18. Os vendedores que o nome termina com a letra A.

-- 19. Os vendedores que o nome não começa com a letra A.

-- 20. Os municípios que começam com a letra P e são de Santa Catarina.

-- 21. As transportadoras que informaram o endereço.

-- 22. Os itens do pedido 01.

-- 23. Os itens do pedido 06 ou do pedido 10.