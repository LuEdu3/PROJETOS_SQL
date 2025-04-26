INSERT INTO alunos (nome, cpf) VALUES 
('Ana Souza', '12345678901'),
('Carlos Lima', '23456789012'),
('Beatriz Silva', '34567890123');

INSERT INTO professores (nome, cpf) VALUES 
('João Pereira', '98765432100'),
('Mariana Costa', '87654321099');

INSERT INTO telefone_alunos (telefone, id_alunos) VALUES 
('11999990001', 1),
('11999990002', 2),
('11999990003', 3);

INSERT INTO telefone_professores (telefone, id_professores) VALUES 
('11999991001', 1),
('11999991002', 2);

INSERT INTO endereco_alunos (id_alunos, endereco, rua, bairro, cep) VALUES 
(1, 'Apto 101, Bloco B', 'Rua das Flores', 'Jardim América', '01234567'),
(2, 'Casa', 'Av. Brasil', 'Centro', '12345678'),
(3, 'Apto 303', 'Rua das Palmeiras', 'Bela Vista', '23456789');

INSERT INTO endereco_professores (id_professores, rua, bairro, cep) VALUES 
(1, 'Rua do Sol', 'Vila Nova', '34567890'),
(2, 'Av. das Nações', 'Morumbi', '45678901');

INSERT INTO disciplina (nome) VALUES 
('Matemática'),
('História');

INSERT INTO materia (id_professores, id_disciplina, id_sala) VALUES 
(1, 1, 101),
(2, 2, 102);

INSERT INTO matricula (id_alunos, id_materia) VALUES 
(1, 1),
(2, 2),
(3, 1);

INSERT INTO chamada (id_alunos, data_chamada, presenca) VALUES 
(1, '2025-04-01', TRUE),
(2, '2025-04-01', FALSE),
(3, '2025-04-01', TRUE);
