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

CREATE TABLE emissao
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	data_emissao DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE cliente
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
    id_endereco INT NOT NULL,
    id_telefone INT NOT NULL,
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

CREATE TABLE itens
(
	id INT AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE produtos
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL UNIQUE,
    descricao TEXT
    
);