CREATE DATABASE Academia;
USE Academia;

CREATE TABLE aluno
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE planos
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco_mensal DECIMAL(8.2) NOT NULL
);

CREATE TABLE matriculas
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_aluno INT,
    id_plano INT,
    data_inicio DATE,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id),
    FOREIGN KEY (id_plano) REFERENCES planos(id)
);

CREATE TABLE aulas
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    horario TIME
);

CREATE TABLE presencas
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_aluno INT,
    id_aula INT,
	data_presenca DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id),
    FOREIGN KEY (id_aula) REFERENCES aulas(id)
);


