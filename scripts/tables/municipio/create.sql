create table municipio (
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,

	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
);