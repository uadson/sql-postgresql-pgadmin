-- Exercícios – funções agregadas

-- 1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.
select 
	idvendedor as "Código do Vendedor", 
	avg(valor) as "Média de Vendas"
	from pedido
	where valor > 200
	group by idvendedor
	order by avg(valor) desc;

-- 2. Os vendedores que venderam mais que R$ 1500,00.
select 
	idvendedor as "Código do Vendedor", 
	valor as "Valor de vendas"
	from pedido
	where valor > 1500;

-- 3. O somatório das vendas de cada vendedor.
select idvendedor as "Código do Vendedor", 
	sum(valor) as "Total Vendido"
	from pedido
	group by idvendedor
	order by sum(valor) desc;
    
-- 4. A quantidade de municípios.

-- 5. A quantidade de municípios que são do Paraná ou de Santa Catarina.

-- 6. A quantidade de municípios por estado.

-- 7. A quantidade de clientes que informaram o logradouro.

-- 8. A quantidade de clientes por município.

-- 9. A quantidade de fornecedores.

-- 10. A quantidade de produtos por fornecedor.

-- 11. A média de preços dos produtos do fornecedor Cap. Computadores.

-- 12. O somatório dos preços de todos os produtos.

-- 13. O nome do produto e o preço somente do produto mais caro.

-- 14. O nome do produto e o preço somente do produto mais barato.

-- 15. A média de preço de todos os produtos.

-- 16. A quantidade de transportadoras.

-- 17. A média do valor de todos os pedidos.

-- 18. O somatório do valor do pedido agrupado por cliente.

-- 19. O somatório do valor do pedido agrupado por vendedor.

-- 20. O somatório do valor do pedido agrupado por transportadora.

-- 21. O somatório do valor do pedido agrupado pela data.

-- 22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.

-- 23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.

-- 24. A média do valor do pedido do vendedor André.

-- 25. A média do valor do pedido da cliente Jéssica.

-- 26. A quantidade de pedidos transportados pela transportadora BS. Transportes.

-- 27. A quantidade de pedidos agrupados por vendedor.

-- 28. A quantidade de pedidos agrupados por cliente.

-- 29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.

-- 30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.

-- 31. A quantidade de microcomputadores vendida.

-- 32. A quantidade de produtos vendida agrupado por produto.

-- 33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.

-- 34. A quantidade de produtos agrupados por pedido.

-- 35. O somatório dos valores unitários de todos os produtos.

-- 36. A média dos produtos do pedido 6.

-- 37. O valor do maior produto do pedido.

-- 38. O valor do menor produto do pedido.

-- 39. O somatório da quantidade de produtos por pedido.

-- 40. O somatório da quantidade de todos os produtos do pedido.