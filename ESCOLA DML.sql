INSERT INTO telefone (telefone) VALUES 
('11987654321'), ('11987654322'), ('11987654323'), ('11987654324'), ('11987654325'),
('11987654326'), ('11987654327'), ('11987654328'), ('11987654329'), ('11987654330');

INSERT INTO endereco (endereco) VALUES 
('Rua das Flores, 123'), ('Av. Paulista, 456'), ('Rua do Mercado, 789'), 
('Praça Central, 101'), ('Av. Rio Branco, 202');

INSERT INTO alunos (id_endereco, id_telefone, nome, cpf) VALUES
(1, 1, 'João Silva', '12345678901'),
(2, 2, 'Maria Souza', '12345678902'),
(3, 3, 'Carlos Oliveira', '12345678903'),
(4, 4, 'Ana Pereira', '12345678904'),
(5, 5, 'Marcos Mendes', '12345678905');

INSERT INTO professores (id_endereco, id_telefone, nome, cpf) VALUES
(1, 6, 'Dr. Ricardo Almeida', '98765432101'),
(2, 7, 'Prof. Fernanda Costa', '98765432102'),
(3, 8, 'Dr. Eduardo Lima', '98765432103');

INSERT INTO disciplina (nome) VALUES
('Matemática'), ('História'), ('Física'), ('Química'), ('Biologia');

INSERT INTO sala (nome, tipo, bloco) VALUES
('Sala 101', 'Teórica', 'A'),
('Sala 102', 'Laboratório', 'B'),
('Sala 103', 'Teórica', 'C');

INSERT INTO materia (id_professores, id_disciplina, id_sala) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

INSERT INTO matricula (id_alunos, id_materia) VALUES
(1, 1), (2, 1), (3, 2), (4, 2), (5, 3);

INSERT INTO chamada (id_alunos, data_chamada, presenca) VALUES
(1, '2025-04-01', TRUE),
(2, '2025-04-01', FALSE),
(3, '2025-04-01', TRUE),
(4, '2025-04-01', TRUE),
(5, '2025-04-01', FALSE);

SELECT * FROM chamada;
DELETE FROM alunos WHERE id>0;