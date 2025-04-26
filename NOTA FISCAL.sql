CREATE DATABASE notafiscalLuiz;
USE notafiscalLuiz;

CREATE TABLE empresa
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
    razao VARCHAR(90) NOT NULL UNIQUE,
    cnpj VARCHAR(14) NOT NULL UNIQUE
);

CREATE TABLE telefoneempresa
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	numero VARCHAR(11) NOT NULL,
    id_empresa INT NOT NULL,
    FOREIGN KEY (id_empresa) REFERENCES empresa(id) ON DELETE CASCADE
);

CREATE TABLE enderecoempresa
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    endereco VARCHAR(90) NOT NULL,
    id_empresa INT NOT NULL,
    FOREIGN KEY (id_empresa) REFERENCES empresa(id) ON DELETE CASCADE
);
CREATE TABLE cliente
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	cpf VARCHAR(11) NOT NULL UNIQUE
);

CREATE TABLE telefonecliente
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	numero VARCHAR(11) NOT NULL,
    id_telefone_cliente INT NOT NULL,
    FOREIGN KEY (id_telefone_cliente) REFERENCES cliente(id) ON DELETE CASCADE
);

CREATE TABLE enderecocliente
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    endereco VARCHAR(90) NOT NULL,
    id_endereco_cliente INT NOT NULL,
    FOREIGN KEY (id_endereco_cliente) REFERENCES cliente(id) ON DELETE CASCADE
);

CREATE TABLE nota
(
	id INT AUTO_INCREMENT  PRIMARY KEY,
    id_cliente INT,
    quantidade INT NOT NULL,
    discriminacao VARCHAR(60) NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    preco_total DECIMAL(10,2) GENERATED ALWAYS AS (preco_unitario * quantidade) STORED,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE totais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_nota INT NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_nota) REFERENCES nota(id)
);

CREATE TABLE emissao
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_cliente INT NOT NULL,
	data_emissao DATE NOT NULL,
    valor_final DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);
