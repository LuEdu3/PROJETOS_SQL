INSERT INTO categorias (nome) VALUES 
('Eletrônicos'),
('Alimentos'),
('Roupas'),
('Móveis'),
('Brinquedos');

INSERT INTO produtos (id_categorias, nome, preco, estoque) VALUES 
(1, 'Smartphone X', 1500.00, 50),
(2, 'Arroz 5kg', 25.90, 200),
(3, 'Camiseta Branca', 39.90, 120),
(4, 'Mesa de Jantar', 799.99, 15),
(5, 'Carrinho de Controle', 199.90, 30);

INSERT INTO fornecedores (nome, telefone) VALUES 
('Fornecedor Tech', '11999998888'),
('Distribuidora Alimentos', '11888887777'),
('Fábrica de Roupas', '11777776666'),
('Móveis Planejados', '11666665555'),
('Brinquedos S.A.', '11555554444');

INSERT INTO funcionarios (nome, cargo) VALUES 
('João Silva', 'Estoquista'),
('Maria Souza', 'Gerente'),
('Carlos Lima', 'Auxiliar'),
('Ana Pereira', 'Supervisor'),
('Lucas Mendes', 'Vendedor');

INSERT INTO entradas (id, id_produto, quantidade, data_entrada, id_funcionarios) VALUES 
(1, 1, 10, '2025-04-01', 1),
(2, 2, 100, '2025-04-02', 2),
(3, 3, 50, '2025-04-03', 3),
(4, 4, 5, '2025-04-04', 4),
(5, 5, 20, '2025-04-05', 5);

INSERT INTO saidas (id_funcionario, id_produtos, quantidade, data_saida) VALUES 
(1, 1, 2, '2025-04-06'),
(2, 2, 10, '2025-04-07'),
(3, 3, 5, '2025-04-08'),
(4, 4, 1, '2025-04-09'),
(5, 5, 3, '2025-04-10');

INSERT INTO produto_fornecedor (id_produtoss, id_fornecedor) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
