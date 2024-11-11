create table bairro (
	idbairro integer not null,
	nome varchar (30) not null,

	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);