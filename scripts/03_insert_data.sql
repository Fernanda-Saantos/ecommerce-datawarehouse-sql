-- Clientes
INSERT INTO dim_cliente (nome, email, cidade, estado) VALUES
('Ana Souza', 'ana@gmail.com', 'São Paulo', 'SP'),
('Carlos Lima', 'carlos@gmail.com', 'Belo Horizonte', 'MG'),
('Fernanda Alves', 'fernanda@gmail.com', 'Curitiba', 'PR');

-- Categorias
INSERT INTO dim_categoria (nome_categoria) VALUES
('Eletrônicos'),
('Moda'),
('Casa e Cozinha');

-- Produtos
INSERT INTO dim_produto (nome_produto, preco, id_categoria) VALUES
('Smartphone X', 2500.00, 1),
('Fone Bluetooth', 300.00, 1),
('Camiseta Premium', 80.00, 2),
('Liquidificador Turbo', 200.00, 3);

-- Tempo
INSERT INTO dim_tempo (data, ano, mes, dia) VALUES
('2024-01-10', 2024, 1, 10),
('2024-01-11', 2024, 1, 11),
('2024-01-12', 2024, 1, 12);

-- Fato Vendas
INSERT INTO fato_vendas (id_cliente, id_produto, id_tempo, quantidade, valor_total) VALUES
(1, 1, 1, 1, 2500.00),
(2, 2, 2, 2, 600.00),
(3, 4, 3, 1, 200.00);
