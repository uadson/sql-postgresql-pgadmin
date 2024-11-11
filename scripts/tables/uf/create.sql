create table uf (
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,

	constraint pk_ufd_idunidade_federacao primary key (iduf),
	constraint un_ufd_nome unique (nome),
	constraint un_ufd_sigla unique (sigla)
);