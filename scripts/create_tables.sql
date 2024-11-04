create table cliente (
	idcliente integer not null,
	nome varchar(50) not null,
	cpf char(11),
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,

	constraint pk_cln_idcliente primary key (idcliente)
);

create table profissao (
	idprofissao integer not null,
	nome varchar (30) not null,

	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

create table nacionalidade (
	idnacionalidade integer not null,
	nome varchar (30) not null,

	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);

create table complemento (
	idcomplemento integer not null,
	nome varchar (30),

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique(nome)
);

create table bairro (
	idbairro integer not null,
	nome varchar (30) not null,

	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);
