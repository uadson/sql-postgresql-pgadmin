-- Cria tabela cliente
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

-- Insere dados a tabela cliente
insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (1,'Manoel', '88828383821','32323','2001-01-30','M','Estudante', 'Brasileira', 'Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (2,'Geraldo', '12343299929','56565','1987-01-04','M','Engenheiro', 'Brasileira', 'Rua das Limas','200','Ap','Centro','Poro Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (3,'Carlos','87732323227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apart.','Cto.','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (5,'Amanda','99982838828','28382','1991-03-04','F','Jorn.','Italiana','Av. Central','100',null, 'São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (6, 'Ângelo', '99982828181','12323','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300',null, 'Ctr.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (7,'Anderson',null,null,null,'M','Prof.','Italiano', 'Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (8,'Camila','9998282828',null,'2001-10-10','F','Professora','Norte-Americana','Rua Central','4333',null,'Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (10, 'Fabricio','8828282828','32323',null,'M','Estudante','Brasileiro',null,null,null,null, 'PU','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto União','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (12,'Gilmar','88881818181','888','2000-02-10','M','Estud.',null,'Rua das Laranjeiras','200',null,'C. Nova','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (13,'Diego','1010191919','111939',null,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileiro',null,null, null,null,'União da Vitória','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (15,'Jessica',null,null,null,'F','Estudante', null, null, null, null, null, 'União da Vitória','PR');

-- Exercícios – comandos update e delete

-- 1. Insira os dados abaixo na tabela de clientes
----------------------------------------------------------------------------------------------------------------------------------------------------
-- idCliente Nome    CPF          RG    Data_Nascimento Genero Profissao    Nacionalidade Logradouro    Numero Complemento Bairro  Municipio     UF

-- 16        Maicon  12349596421  1234  10/10/1965      F      Empresario                                                          Florianópolis PR
-- 17        Getúlio              4631                  F      Estudante    Brasileira    Rua Central   343    Apartamento Centro  Curitiba      SC
-- 18        Sandra                                     M      Professor    Italiana                    12     Bloco A
----------------------------------------------------------------------------------------------------------------------------------------------------
insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, municipio, uf) 
values (16, 'Maicon', '12349596421', '1234', '1965-10-10', 'F', 'Empresario', 'Florianopolis', 'PR');

insert into cliente (idcliente, nome, rg, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (17, 'Getúlio', '4631', 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC');

insert into cliente (idcliente, nome, genero, profissao, nacionalidade, numero, complemento )
values (18, 'Sandra', 'M', 'Professor', 'Italiana', '12', 'Bloco A');

-- 2. Altere os dados do cliente Maicon

-- a. O CPF para 45390569432
-- b. O gênero para M
-- c. A nacionalidade para Brasileira
-- d. O UF para SC
update cliente set 
    cpf = '45390569432', 
    genero = 'M', 
    nacionalidade = 'Brasileira', 
    uf = 'SC'
    where idcliente = 16;

-- 3. Altere os dados do cliente Getúlio

-- a. A data de nascimento para 01/04/1978
-- b. O gênero para M
update cliente set
    data_nascimento = '1978-04-01',
    genero = 'M'
    where idcliente = 17;

-- 4. Altere os dados da cliente Sandra

-- a. O gênero para F
-- b. A profissão para Professora
-- c. O número para 123
update cliente set
    genero = 'F',
    profissao = 'Professora',
    numero = '123'
    where idcliente = 18;
    
-- 5. Apague o cliente Maicon
delete from cliente where idcliente = 16;

-- 6. Apague a cliente Sandra
delete from cliente where idcliente = 18;

-- Cria a tabela bairro
create table bairro (
	idbairro integer not null,
	nome varchar (30) not null,

	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);

-- Insere dados na tabela bairro
insert into bairro (idbairro, nome) values (1, 'Cidade Nova');
insert into bairro (idbairro, nome) values (2, 'Centro');
insert into bairro (idbairro, nome) values (3, 'São Pedro');
insert into bairro (idbairro, nome) values (4, 'Santa Rosa');

-- BAIRRO

-- Backup col bairro
-- Nome                | Ids
-- Cidade Nova         | 12, 1, 13,  
-- Centro              | 6, 8, 9, 17, 2, 3
-- São Pedro           | 5, 4
-- Santa Rosa          | 7

-- idbairro             | nome
-- 1                    | Cidade Nova
-- 2                    | Centro
-- 3                    | São Pedro
-- 4                    | Santa Rosa

alter table cliente drop bairro;
alter table cliente add idbairro integer;
alter table cliente add constraint fk_cln_idbairro foreign key (idbairro) references bairro (idbairro);

update cliente set idbairro = 1 where idcliente in (12, 1, 13);
update cliente set idbairro = 2 where idcliente in (6, 8, 9, 17, 2, 3);
update cliente set idbairro = 3 where idcliente in (5, 4);
update cliente set idbairro = 4 where idcliente = 7;

-- Cria a tabela Complemento
create table complemento (
	idcomplemento integer not null,
	nome varchar (30),

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique(nome)
);

-- Insere dados na tabela complemento
insert into complemento (idcomplemento, nome) values (1, 'Casa');
insert into complemento (idcomplemento, nome) values (2, 'Apartamento');

-- COMPLEMENTO

alter table cliente drop complemento;
alter table cliente add idcomplemento integer;
alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento (idcomplemento);

-- idcomplemento | nome
-- 1             | Casa
-- 2             | Apartamento

-- Backup col complemento
-- Nome           | Ids
-- Casa           | 1, 4, 9, 13
-- Apartamento    | 17, 2, 3, 7
-- Null           | 12, 15, 10, 6, 11, 14, 5, 8

update cliente set idcomplemento = 1 where idcliente in (1, 4, 9, 13);
update cliente set idcomplemento = 2 where idcliente in (17, 2, 3, 7);

-- Cria tabela uf
create table uf (
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,

	constraint pk_ufd_idunidade_federacao primary key (iduf),
	constraint un_ufd_nome unique (nome),
	constraint un_ufd_sigla unique (sigla)
);

-- Insere dados em Uf
insert into uf (iduf, nome, sigla) values (1, 'Santa Catarina', 'SC');
insert into uf (iduf, nome, sigla) values (2, 'Paraná', 'PR');
insert into uf (iduf, nome, sigla) values (3, 'São Paulo', 'SP');
insert into uf (iduf, nome, sigla) values (4, 'Minas Gerais', 'MG');
insert into uf (iduf, nome, sigla) values (5, 'Rio Grande do Sul', 'RS');
insert into uf (iduf, nome, sigla) values (6, 'Rio de Janeiro', 'RJ');

-- Cria tabela municipio
create table municipio (
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,

	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
);

-- Insere dados na tabela municipio
insert into municipio (idmunicipio, nome, iduf) values (1, 'Porto União', 1);
insert into municipio (idmunicipio, nome, iduf) values (2, 'Canoinhas', 1);
insert into municipio (idmunicipio, nome, iduf) values (3, 'União da Vitória', 2);
insert into municipio (idmunicipio, nome, iduf) values (4, 'General Carneiro', 2);
insert into municipio (idmunicipio, nome, iduf) values (5, 'São Paulo', 3);
insert into municipio (idmunicipio, nome, iduf) values (6, 'Rio de Janeiro', 6);
insert into municipio (idmunicipio, nome, iduf) values (7, 'Uberlândia', 4);
insert into municipio (idmunicipio, nome, iduf) values (8, 'Porto Alegre', 5);
insert into municipio (idmunicipio, nome, iduf) values (9, 'Curitiba', 2);

-- Cria tabela nacionalidade
create table nacionalidade (
	idnacionalidade integer not null,
	nome varchar (30) not null,

	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);

-- Insere dados na tabela nacionalidade
insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Norte-americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');

-- NACIONALIDADE

-- idnacionalidade | nome
-- 1               | Brasileira
-- 2               | Italiana
-- 3               | Norte-Americana
-- 4               | Alemã

-- Backup col nacionalidade
-- Nome            | Ids
-- Null            | 12, 15
-- Alemã           | 9, 13
-- Brasileira      | 1, 10, 17, 2, 3, 4, 6, 11, 14
-- Italiana        | 5, 7
-- Norte-Americana | 8
alter table cliente drop nacionalidade;
alter table cliente add idnacionalidade integer;
alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade);

update cliente set idnacionalidade = 1 where idcliente in (1, 10, 17, 2, 3, 4, 6, 11, 14);
update cliente set idnacionalidade = 2 where idcliente in (5, 7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9, 13);

-- Cria tabela profissao
create table profissao (
	idprofissao integer not null,
	nome varchar (30) not null,

	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

-- Insere dados na tabela profissao
insert into profissao (idprofissao, nome) values (1,'Estudante');
insert into profissao (idprofissao, nome) values (2,'Engenheiro');
insert into profissao (idprofissao, nome) values (3,'Pedreiro');
insert into profissao (idprofissao, nome) values (4,'Jornalista');
insert into profissao (idprofissao, nome) values (5,'Professor');

-- PROFISSÃO

-- Estudante -> 1, 9, 10, 12, 15, 17
-- Engenheiro -> 2
-- Pedreiro -> 3
-- Jornalista -> 4, 5
-- Professor -> 6, 7, 8, 13
-- Null -> 11, 14

-- idprofissao | nome
-- 1           | Estudante
-- 2           | Engenheiro
-- 3           | Pedreiro
-- 4           | Jornalista
-- 5           | Professor

alter table cliente drop profissao;
alter table cliente add idprofissao integer;
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);

update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);
update cliente set idprofissao = 2 where idcliente in (2);
update cliente set idprofissao = 3 where idcliente in (3);
update cliente set idprofissao = 4 where idcliente in (4, 5);
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13);
update cliente set idprofissao = null where idcliente in (11, 14);

-- Cria tabela fornecedor
create table fornecedor (
    idfornecedor integer not null,
    nome varchar(50) not null,
    constraint pk_frn_idfornecedor primary key (idfornecedor),
    constraint un_frn_nome unique (nome)
);

-- insere dados em fornecedor
insert into fornecedor (idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor (idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3, 'BB. Máquinas');

-- Cria tabela transportadora
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

-- Insere dados em transportadora
insert into transportadora (
    idtransportadora, 
    idmunicipio, 
    nome, 
    logradouro, 
    numero
) values (
    1,
    3,
    'BS. Transportes',
    'Rua das Limas',
    '1'
);

insert into transportadora (
    idtransportadora, 
    idmunicipio, 
    nome
) values (
    2,
    5,
    'União Transportes'
);


-- Cria tabela produto
create table produto (
    idproduto integer not null,
    idfornecedor integer not null,
    nome varchar(50) not null,
    valor numeric(10, 2) not null,

    constraint pk_prd_idproduto primary key (idproduto),
    constraint fk_prd_idfornecedor foreign key (idfornecedor) references fornecedor (idfornecedor)
);

-- Insere dados em produto
insert into produto (
    idproduto, idfornecedor, nome, valor
) values (
    1, 1, 'Microcomputador', '800'
);

insert into produto (
    idproduto, idfornecedor, nome, valor
) values (
    2, 1, 'Monitor', '500'
);

insert into produto (
    idproduto, idfornecedor, nome, valor
) values (
    3, 2, 'Placa Mãe', '200'
);

insert into produto (
    idproduto, idfornecedor, nome, valor
) values (
    4, 2, 'HD', '150'
);

insert into produto (
    idproduto, idfornecedor, nome, valor
) values (
    5, 2, 'Placa de Vídeo', '200'
);

insert into produto (
    idproduto, idfornecedor, nome, valor
) values (
    6, 3, 'Memória RAM', '100'
);

insert into produto (
    idproduto, idfornecedor, nome, valor
) values (
    7, 1, 'Gabinete', '35'
);

-- Cria tabela vendedor
create table vendedor (
    idvendedor integer not null,
    nome varchar(50) not null,

    constraint pk_vdr_idvendedor primary key (idvendedor),
    constraint un_vdr_nome unique (nome)
);

-- Insere dados em vendedor
insert into vendedor (idvendedor, nome) values (1, 'André');
insert into vendedor (idvendedor, nome) values (2, 'Alisson');
insert into vendedor (idvendedor, nome) values (3, 'José');
insert into vendedor (idvendedor, nome) values (4, 'Ailton');
insert into vendedor (idvendedor, nome) values (5, 'Maria');
insert into vendedor (idvendedor, nome) values (6, 'Suelem');
insert into vendedor (idvendedor, nome) values (7, 'Aline');
insert into vendedor (idvendedor, nome) values (8, 'Silvana');

-- Cria tabela pedido
create table pedido (
    idpedido integer not null,
    idcliente integer not null,
    idtransportadora integer,
    idvendedor integer not null,
    data_pedido date not null,
    valor float not null,

    constraint pk_pdd_idpedido primary key (idpedido),
    constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
    constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora (idtransportadora),
    constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)
);

-- Insere dados na tabela pedido
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    1, '2008-04-01', 1300, 1, 1, 1
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    2, '2008-04-01', 500, 1, 1, 1
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    3, '2008-04-02', 300, 11, 2, 5
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    4, '2008-04-05', 1000, 11, 1, 7
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    5, '2008-04-06', 200, 9, 2, 6
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    6, '2008-04-06', 1985, 10, 1, 6
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    7, '2008-04-06', 800, 3, 1, 7
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idvendedor) values (
    8, '2008-04-06', 175, 3, 7
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idvendedor) values (
    9, '2008-04-07', 1300, 12, 8
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    10, '2008-04-10', 200, 6, 1, 8
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    11, '2008-04-15', 300, 15, 2, 1
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    12, '2008-04-20', 500, 15, 2, 5
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    13, '2008-04-20', 350, 9, 1, 7
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (
    14, '2008-04-23', 300, 2, 1, 5
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idvendedor) values (
    15, '2008-04-25', 200, 11, 5
);


-- Cria tabela pedido_produto
create table pedido_produto (
    idpedido integer not null,
    idproduto integer not null,
    quantidade integer not null,
    valor_unitario float not null,

    constraint id_pdp_idpedidoproduto primary key (idpedido, idproduto),
    constraint id_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
    constraint id_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);

-- Insere dados em pedido_produto
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    1, 1, 1, 800
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    1, 2, 1, 500
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    2, 2, 1, 500
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    3, 4, 2, 150
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    4, 1, 1, 800
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    4, 3, 1, 200
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    5, 3, 1, 200
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    6, 1, 2, 800
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    6, 7, 1, 35
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    6, 5, 1, 200
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    6, 4, 1, 150
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    7, 1, 1, 800
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    8, 7, 5, 35
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    9, 1, 1, 800
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    9, 2, 1, 500
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    10, 5, 1, 200
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    11, 5, 1, 200
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    12, 2, 1, 500
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    13, 3, 1, 200
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    13, 4, 1, 150
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    14, 6, 3, 100
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (
    15, 3, 1, 200
);
