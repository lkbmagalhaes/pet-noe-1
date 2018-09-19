create database pet_noe;

create table DIM_SERVICO (
	cod_servico int (6) primary key,
    tipo_servico varchar (80) not null,
    frequencia_servico varchar (2) not null
);

create table DIM_PERIODO (
	cod_periodo int (6) primary key,
    data_periodo date not null,
	fim_semana varchar(3) not null
);

create table DIM_UNIDADE (
	cod_loja int (6) primary key,
    nome_loja varchar (20) not null,
    tamanho_loja float (6, 2) not null
);

create table DIM_PET (
	cod_pet int (6) primary key,
    especie_pet varchar (10) not null,
    raca_pet varchar (20) not null,
    idade_pet int (2) not null
);

create table DIM_CLIENTE (
	cod_cliente int (6) primary key,
    nome_cliente varchar (30) not null,
    endereco_cliente varchar (90) not null,
    idade_cliente int (2) not null,
    genero_cliente varchar (1) not null
);

create table DIM_ACOMODACAO (
	cod_acomodacao int (6) primary key,
    tamanho_acomodacao varchar (20) not null,
    andar_acomodacao float (6, 2) not null
);

create table DIM_FUNCIONARIO (
	cod_funcionario int(5) primary key,
	nome_funcionario varchar(30) not null,
	tempo_funcionario int(2) not null,
    cidade_loja varchar (30) not null
);

create table FATO_RESERVA (
	cod_servico int(5) references DIM_LOJAS (cod_loja),
	cod_periodo int(5) references DIM_PERIODO (cod_periodo),
    cod_unidade int(5) references DIM_UNIDADE (cod_unidade),
    cod_pet int(5) references DIM_PET (cod_pet),
    cod_cliente int(5) references DIM_CLIENTE (cod_cliente),
    cod_acomodacao int(5) references DIM_ACOMODACAO (cod_acomodacao),
    cod_funcionario int(5) references DIM_FUNCIONARIO (cod_funcionario),
    qde_vendida int(5),
    receita float (7,2),
    CMV float (6,2),
    margem float (4,2)
);
