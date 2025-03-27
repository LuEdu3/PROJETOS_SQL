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

-- Inserir dados na tabela autores
INSERT INTO autores (nome,nacionalidade) VALUES
('Machado de Assis', 'Brasileiro'),
('George Orwell', 'Britânica'),
('J.K. Rowling', 'Britânico');

-- Inserir dados na tabela categorias
INSERT INTO categorias (nome) VALUES
('Romance'),
('Ficção Científica'),
('Fantasia');

-- Inserir dados na tabela livros
INSERT INTO livros(titulo, id_autor, id_categoria, ano_publicacao) VALUES
('Dom Casmurro', 1, 1, 1899),
('1984', 2, 2, 1949),
('Harry Potter e a Pedra Filosofal', 3, 3, 1997);

-- Inserir dados na tabela usuários
INSERT INTO usuarios (nome, telefone, endereco) VALUES
('Carlos Silva', '11987654321', 'Rua A, 123'),
('Ana Souza', '11912345678', 'Rua B, 456');