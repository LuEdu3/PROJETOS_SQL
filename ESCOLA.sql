CREATE DATABASE Escolaluiz;
USE Escolaluiz;

CREATE TABLE telefone
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    telefone VARCHAR(11) UNIQUE NOT NULL
);

CREATE TABLE endereco
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	endereco TEXT NOT NULL
);

CREATE TABLE alunos
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_endereco INT,
    id_telefone INT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES endereco(id)  ON DELETE CASCADE,
    FOREIGN KEY (id_telefone) REFERENCES telefone(id)  ON DELETE CASCADE
);

CREATE TABLE professores
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_endereco INT,
    id_telefone INT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES endereco(id)  ON DELETE CASCADE,
    FOREIGN KEY (id_telefone) REFERENCES telefone(id)  ON DELETE CASCADE
);

CREATE TABLE chamada
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_alunos INT NOT NULL,
    data_chamada DATE NOT NULL,
    presenca BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_alunos) REFERENCES alunos(id) ON DELETE CASCADE
);

CREATE TABLE disciplina
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE sala
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    bloco VARCHAR(255) NOT NULL
);

CREATE TABLE materia
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_professores INT NOT NULL,
    id_disciplina INT NOT NULL,
    id_sala INT NOT NULL,
    FOREIGN KEY (id_professores) REFERENCES professores(id) ON DELETE CASCADE,
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id) ON DELETE CASCADE,
	FOREIGN KEY (id_sala) REFERENCES sala(id) ON DELETE CASCADE
);

CREATE TABLE matricula
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_alunos INT NOT NULL,
    id_materia INT NOT NULL,
    FOREIGN KEY (id_alunos) REFERENCES alunos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_materia) REFERENCES materia(id) ON DELETE CASCADE
);

SELECT * FROM alunos;
SELECT * FROM professores;
SELECT * FROM chamada;
SELECT * FROM materia;

DROP DATABASE Escolaluiz;