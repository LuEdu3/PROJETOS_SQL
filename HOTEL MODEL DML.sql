INSERT INTO hospedes(nome, email) VALUES
("Luiz Eduardo", "luiz@email.com"),
("Maria Oliveira", "maria@email.com"),
("João Silva", "joao@email.com"),
("Ana Costa", "ana@email.com"),
("Carlos Souza", "carlos@email.com"),
("Fernanda Pereira", "fernanda@email.com"),
("Ricardo Lima", "ricardo@email.com");

INSERT INTO quartos(numero, tipo, preco_diaria) VALUES
(101, "Solteiro", "109.90"),
(102, "Solteiro", "119.90"),
(103, "Casal", "159.90"),
(104, "Casal", "169.90"),
(105, "Duplo", "139.90"),
(106, "Duplo", "149.90"),
(107, "Luxo", "199.90");


INSERT INTO reservas(id_hospede, data_checkin, data_checkout) VALUES
(1, '2025-04-01', '2025-04-08'),
(2, '2025-04-05', '2025-04-12'),
(3, '2025-04-06', '2025-04-13'),
(4, '2025-04-07', '2025-04-14'),
(5, '2025-04-10', '2025-04-17'),
(6, '2025-04-11', '2025-04-18'),
(7, '2025-04-15', '2025-04-22');

INSERT INTO quartos_reservados(id_reserva, id_quarto) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

INSERT INTO pagamentos(id_reserva, valor, metodo_pagamento) VALUES
(1, '879.20', 'Cartao Crédito'),
(2, '839.00', 'Boleto'),
(3, '959.50', 'Transferência'),
(4, '1120.00', 'Cartao Crédito'),
(5, '980.00', 'Dinheiro'),
(6, '1099.90', 'Boleto'),
(7, '1340.30', 'Transferência');

INSERT INTO telefone(id_hospede, telefone) VALUES
(1, "31912341234"),
(2, "31987654321"),
(3, "31911223344"),
(4, "31922334455"),
(5, "31933445566"),
(6, "31944556677"),
(7, "31955667788");