CREATE DATABASE Escolaluiz;
USE Escolaluiz;

CREATE TABLE alunos
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL
);

CREATE TABLE professores
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL
);

CREATE TABLE telefone_alunos
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    telefone VARCHAR(11) UNIQUE NOT NULL,
    id_alunos INT NOT NULL,
	FOREIGN KEY (id_alunos) REFERENCES alunos(id) ON DELETE CASCADE
);

CREATE TABLE telefone_professores
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_professores INT NOT NULL,
    telefone VARCHAR(11) UNIQUE NOT NULL,
	FOREIGN KEY (id_professores) REFERENCES professores(id) ON DELETE CASCADE
);
   
CREATE TABLE endereco_alunos
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_alunos INT NOT NULL,
	endereco TEXT NOT NULL,
	rua VARCHAR(45) NOT NULL,
    bairro TEXT NOT NULL,
    cep VARCHAR(10),
    FOREIGN KEY (id_alunos) REFERENCES alunos(id) ON DELETE CASCADE
);
CREATE TABLE endereco_professores
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_professores INT NOT NULL,
	rua VARCHAR(45) NOT NULL,
    bairro TEXT NOT NULL,
    cep VARCHAR(10),
	FOREIGN KEY (id_professores) REFERENCES professores(id) ON DELETE CASCADE
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

CREATE TABLE materia
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_professores INT NOT NULL,
    id_disciplina INT NOT NULL,
    id_sala INT NOT NULL,
    FOREIGN KEY (id_professores) REFERENCES professores(id) ON DELETE CASCADE,
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id) ON DELETE CASCADE
);

CREATE TABLE matricula
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_alunos INT NOT NULL,
    id_materia INT NOT NULL,
    FOREIGN KEY (id_alunos) REFERENCES alunos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_materia) REFERENCES materia(id) ON DELETE CASCADE
);

SELECT * FROM telefone_alunos;
SELECT * FROM professores;
SELECT * FROM chamada;
SELECT * FROM materia;