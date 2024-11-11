create table fornecedor (
    idfornecedor integer not null,
    nome varchar(50) not null,
    constraint pk_frn_idfornecedor primary key (idfornecedor),
    constraint un_frn_nome unique (nome)
);