use industria_db;

create table fornecedor(
    cnpj int primary key,
    telefone varchar(11) unique,
    cidade varchar(100) not null
);
create table categorias(
    id_categoria int primary key auto_increment,
    nome_categoria varchar(100) not null
);
create table produtos(
    codigo_produto int primary key auto_increment,
    nome varchar(100) not null unique,
    descricao varchar(100),
    preco decimal(10,2) not null,
    qtd_estoque int not null,
    id_categoria int,
    cnpj int,

    foreign key(id_categoria)
    references categorias(id_categoria),
    foreign key(cnpj)
    references fornecedor(cnpj)
);
create table ordem_producao(
    id_producao int primary key auto_increment,
    data_producao date not null,
    qtd_produzida int not null,
    status_producao varchar(100) not null,
    tempo_estimado int not null,
    tempo_real int not null,
    codigo_produto int,
    cpf int,

    foreign key(codigo_produto)
    references produtos(codigo_produto),
    foreign key(cpf)
    references funcionarios(cpf)
);
create table setor(
    id_setor int primary key auto_increment,
    nome_setor varchar(100) not null,
    localizacao_setor varchar(100)
);
create table funcionarios(
    cpf int primary key,
    nome varchar(100) not null,
    cargo varchar(100) not null,
    salario decimal(10,2) not null,
    data_admissao date,
    id_setor int,

    foreign key(id_setor)
    references setor(id_setor)
);
create table controle_qualidade(
    id_inspecao int primary key auto_increment,
    data_inspecao date,
    resultado_inspecao varchar(100) not null,
    observacoes_inspecao varchar(100) not null,
    id_producao int,

    foreign key(id_producao)
    references ordem_producao(id_producao)
);