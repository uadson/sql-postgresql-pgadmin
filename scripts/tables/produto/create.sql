create table produto (
    idproduto integer not null,
    idfornecedor integer not null,
    nome varchar(50) not null,
    valor numeric(10, 2) not null,

    constraint pk_prd_idproduto primary key (idproduto),
    constraint fk_prd_idfornecedor foreign key (idfornecedor) references fornecedor (idfornecedor)
);