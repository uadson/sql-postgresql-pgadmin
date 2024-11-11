create table pedido_produto (
    idpedido integer not null,
    idproduto integer not null,
    quantidade integer not null,
    valor_unitario float not null,

    constraint id_pdp_idpedidoproduto primary key (idpedido, idproduto),
    constraint id_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
    constraint id_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);