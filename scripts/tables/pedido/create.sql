create table pedido (
    idpedido integer not null,
    idcliente integer not null,
    idtransportadora integer,
    idvendedor integer not null,
    data_pedido date not null,
    valor float not null,

    constraint pk_pdd_idpedido primary key (idpedido),
    constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
    constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora (idtransportadora),
    constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)
);