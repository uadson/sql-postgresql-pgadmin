create table transportadora (
    idtransportadora integer not null,
    idmunicipio integer,
    nome varchar(50) not null,
    logradouro varchar(50),
    numero varchar(10),

    constraint pk_trp_idtransportadora primary key (idtransportadora),
    constraint fk_trp_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio),
    constraint un_trp_nome unique (nome)
);