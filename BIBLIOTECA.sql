CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE autores
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(100)
);

CREATE TABLE categorias
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE livros
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    id_autor INT,
    id_categoria INT,
	ano_publicacao INT,
    FOREIGN KEY (id_autor) REFERENCES autores(id),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

-- Criar tabela de usuários
CREATE TABLE usuarios 
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    endereco TEXT
);

-- Criar tabela de empréstimos
CREATE TABLE emprestimos
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_livro INT,
    data_retirada DATE,
    data_devolucao DATE,
    status ENUM('Em andamento', 'Concluido') NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
	FOREIGN KEY (id_livro) REFERENCES livros(id)
);



