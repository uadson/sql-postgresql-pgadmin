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