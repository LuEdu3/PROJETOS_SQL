CREATE DATABASE Escola;
USE Escola;

CREATE TABLE alunos
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereço TEXT,
    telefone VARCHAR(20),
    cpf VARCHAR(11)
);
ALTER TABLE alunos
ADD COLUMN idade VARCHAR(2);
ALTER TABLE alunos
RENAME COLUMN endereço TO endereco;
ALTER TABLE alunos
MODIFY COLUMN cpf VARCHAR(20);

CREATE TABLE professores
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco TEXT,
    telefone VARCHAR(20),
    cpf VARCHAR(11)
);
ALTER TABLE professores
MODIFY COLUMN cpf VARCHAR(20);

CREATE TABLE chamada
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_alunos INT,
    id_professores INT,
    data_chamada DATE,
    status ENUM("Presente", "Falta"),
    FOREIGN KEY (id_alunos) REFERENCES alunos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_alunos) REFERENCES alunos(id) ON DELETE CASCADE
);

CREATE TABLE materia
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_alunos INT,
    id_professores INT,
    id_chamada INT,
    materia VARCHAR(20),
    status ENUM("Em andamento", "Finalizado"),
    FOREIGN KEY (id_alunos) REFERENCES alunos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_professores) REFERENCES professores(id) ON DELETE CASCADE,
    FOREIGN KEY (id_chamada) REFERENCES chamada(id) ON DELETE CASCADE
);

SELECT * FROM alunos;
SELECT * FROM professores;
SELECT * FROM chamada;
SELECT * FROM materia;