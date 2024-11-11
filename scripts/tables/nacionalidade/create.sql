create table nacionalidade (
	idnacionalidade integer not null,
	nome varchar (30) not null,

	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);