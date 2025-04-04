INSERT INTO empresa (nome, razao, cnpj) VALUES
('Nome Fantasia', 'Razão Social', '12345678901122'),
('Pão Quente', 'Padaria Pão Quente Ltda', '12345678000190'),
('Boa Compra', 'Supermercado Boa Compra SA', '98765432000110'),
('TechMaster', 'Eletrônicos TechMaster Ltda', '56789012000145'),
('Rápida Auto Peças', 'Auto Peças Rápida Entrega Ltda', '23456789000178'),
('Sabor Caseiro', 'Restaurante Sabor Caseiro Ltda', '34567890000123');

INSERT INTO telefoneempresa (numero, id_empresa) VALUES
('6133333333', 1),
('11999990001', 2),
('11999990002', 3),
('11999990003', 4),
('11999990004', 5),
('11999990005', 6);

INSERT INTO enderecoempresa (endereco, id_empresa) VALUES
('Rua 1 Bairro Canaa 35164000', 1),
('Av Central Bairro Centro 35164010', 2),
('Rua das Flores Bairro Jardim 35164020', 3),
('Av Industrial Bairro Vila Nova 35164030', 4),
('Rua do Comercio Bairro Mercadao 35164040', 5),
('Praça da Liberdade Bairro Centro 35164050', 6);

INSERT INTO cliente (nome, cpf) VALUES
('Luiz Eduardo', '12345678901'),
('Maria Souza', '98765432100'),
('Carlos Silva', '11122233344'),
('Ana Paula', '55566677788'),
('Joao Mendes', '99988877766'),
('Patricia Lima', '44433322211');

INSERT INTO telefonecliente (numero, id_telefone_cliente) VALUES
('31912341234', 1),
('31911112222', 2),
('31922223333', 3),
('31933334444', 4),
('31944445555', 5),
('31955556666', 6);

INSERT INTO enderecocliente (endereco, id_endereco_cliente) VALUES
('Rua 2 Bairro Bethania 35164001', 1),
('Av Primavera Bairro Centro 35164002', 2),
('Rua 3 Bairro Industrial 35164003', 3),
('Rua 4 Bairro Santa Rita 35164004', 4),
('Av Afonso Pena Bairro Funcionarios 35164005', 5),
('Rua das Palmeiras Bairro Tropical 35164006', 6);

INSERT INTO nota (id_cliente, quantidade, discriminacao, preco_unitario) VALUES
(1, 3, "Porta de madeira imperial 3,00m x 70,00cm", 5400.00),
(1, 9, "Dobradiça comum imperial", 150.00),
(1, 3, "Fechadura eletrônica", 990.00),
(1, 3, "Puxador de barra", 330.00),
(1, 3, "Batente e guarnição", 1499.00),
(1, 1, "Pacote de parafusos com 100", 10.00);

-- Cliente 2 - Maria Souza
INSERT INTO nota (id_cliente, quantidade, discriminacao, preco_unitario) VALUES
(2, 2, "Notebook Dell i7 16GB RAM", 5500.00),
(2, 1, "Monitor LG Ultrawide 29'", 1700.00),
(2, 1, "Teclado Mecânico RGB", 350.00);
INSERT INTO totais (id_nota, total) VALUES (2, 7550.00);
INSERT INTO emissao (id_total, data_emissao, valor_final) VALUES (2, "2025-04-04", 7550.00);

-- Cliente 3 - Carlos Silva
INSERT INTO nota (id_cliente, quantidade, discriminacao, preco_unitario) VALUES
(3, 4, "Cadeira Gamer Reclinável", 1200.00),
(3, 1, "Mouse sem fio Logitech", 250.00),
(3, 3, "Headset HyperX Cloud II", 450.00);
INSERT INTO totais (id_nota, total) VALUES (3, 5850.00);
INSERT INTO emissao (id_total, data_emissao, valor_final) VALUES (3, "2025-04-04", 5850.00);

-- Cliente 4 - Ana Paula
INSERT INTO nota (id_cliente, quantidade, discriminacao, preco_unitario) VALUES
(4, 2, "Smartphone Samsung S23 Ultra", 6800.00),
(4, 2, "Capa protetora transparente", 80.00),
(4, 1, "Carregador turbo 65W", 250.00);
INSERT INTO totais (id_nota, total) VALUES (4, 13930.00);
INSERT INTO emissao (id_total, data_emissao, valor_final) VALUES (4, "2025-04-04", 13930.00);

-- Cliente 5 - João Mendes
INSERT INTO nota (id_cliente, quantidade, discriminacao, preco_unitario) VALUES
(5, 1, "Geladeira Brastemp Frost Free", 4200.00),
(5, 1, "Micro-ondas Electrolux 30L", 600.00),
(5, 1, "Fogão 5 bocas Brastemp", 2100.00);
INSERT INTO totais (id_nota, total) VALUES (5, 6900.00);
INSERT INTO emissao (id_total, data_emissao, valor_final) VALUES (5, "2025-04-04", 6900.00);

-- Cliente 6 - Patricia Lima
INSERT INTO nota (id_cliente, quantidade, discriminacao, preco_unitario) VALUES
(6, 3, "Pacote de viagem para Cancun (all inclusive)", 12000.00),
(6, 2, "Seguro viagem premium", 700.00),
(6, 1, "Mala Samsonite grande", 900.00);
INSERT INTO totais (id_nota, total) VALUES (6, 26000.00);
INSERT INTO emissao (id_total, data_emissao, valor_final) VALUES (6, "2025-04-04", 26000.00);

INSERT INTO totais (id_nota, total) 
VALUES (1, 21477.00);

INSERT INTO emissao (id_total, data_emissao, valor_final) VALUES
(1, "2025-04-04", 21477.00);

SELECT * FROM nota WHERE id_cliente = 3;
SELECT * FROM emissao;
SELECT * FROM totais WHERE id_nota = 2;

