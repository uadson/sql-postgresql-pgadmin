create table vendedor (
    idvendedor integer not null,
    nome varchar(50) not null,

    constraint pk_vdr_idvendedor primary key (idvendedor),
    constraint un_vdr_nome unique (nome)
);