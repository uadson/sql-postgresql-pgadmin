create table complemento (
	idcomplemento integer not null,
	nome varchar (30),

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique(nome)
);