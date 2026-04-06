-- Criando o banco
CREATE DATABASE EcommerceDW;
GO
USE EcommerceDW;
GO

-- Dimensão Cliente
CREATE TABLE dim_cliente (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(150),
    cidade VARCHAR(100),
    estado VARCHAR(2)
);

-- Dimensão Categoria
CREATE TABLE dim_categoria (
    id_categoria INT IDENTITY(1,1) PRIMARY KEY,
    nome_categoria VARCHAR(100)
);

-- Dimensão Produto
CREATE TABLE dim_produto (
    id_produto INT IDENTITY(1,1) PRIMARY KEY,
    nome_produto VARCHAR(150),
    preco DECIMAL(10,2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES dim_categoria(id_categoria)
);

-- Dimensão Tempo
CREATE TABLE dim_tempo (
    id_tempo INT IDENTITY(1,1) PRIMARY KEY,
    data DATE,
    ano INT,
    mes INT,
    dia INT
);

-- Tabela Fato Vendas
CREATE TABLE fato_vendas (
    id_venda INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    id_tempo INT,
    quantidade INT,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES dim_cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES dim_produto(id_produto),
    FOREIGN KEY (id_tempo) REFERENCES dim_tempo(id_tempo)
);
