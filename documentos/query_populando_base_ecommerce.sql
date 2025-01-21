USE ecommerce;

-- Inserindo Fornecedores
INSERT INTO Fornecedor (Nome, CNPJ) VALUES 
('Fornecedor A', '12.345.678/0001-90'),
('Fornecedor B', '23.456.789/0001-01'),
('Fornecedor C', '34.567.890/0001-12');

-- Inserindo Clientes
INSERT INTO Cliente (Nome, Tipo_Cliente, CPF, CNPJ, Endereco) VALUES 
('João Silva', 'PF', '123.456.789-00', NULL, 'Rua das Flores, 123'),
('Empresa XYZ', 'PJ', NULL, '98.765.432/0001-01', 'Av. das Empresas, 456'),
('Maria Oliveira', 'PF', '987.654.321-00', NULL, 'Rua do Sol, 789');

-- Inserindo Produtos
INSERT INTO Produto (Nome, Descricao, Preco, Quantidade_em_estoque, ID_Fornecedor) VALUES 
('Produto 1', 'Descrição do Produto 1', 50.00, 100, 1),
('Produto 2', 'Descrição do Produto 2', 150.00, 50, 2),
('Produto 3', 'Descrição do Produto 3', 300.00, 30, 3);

-- Inserindo Estoque
INSERT INTO Estoque (Quantidade, ID_Produto) VALUES 
(100, 1),
(50, 2),
(30, 3);

-- Inserindo Pagamentos
INSERT INTO Pagamento (ID_Cliente, Tipo_Pagamento, Detalhes) VALUES 
(1, 'Cartão de Crédito', 'Visa - Final 1234'),
(2, 'Boleto', 'Vencimento 20/01/2025'),
(3, 'Pix', 'Chave: maria.oliveira@example.com'),
(3, 'Transferência', 'Banco XYZ - Agência 123 - Conta 4567-8');

-- Inserindo Pedidos
INSERT INTO Pedido (Data, Endereco_entrega, Status, ID_Cliente, Status_Entrega, Codigo_Rastreio) VALUES 
('2025-01-01', 'Rua das Flores, 123', 'Em Processamento', 1, 'Pendente', 'AB123456789BR'),
('2025-01-02', 'Av. das Empresas, 456', 'Enviado', 2, 'Em Transporte', 'CD987654321BR'),
('2025-01-03', 'Rua do Sol, 789', 'Cancelado', 3, 'Cancelado', NULL);

-- Inserindo Vendas
INSERT INTO Vendas (Valor_total, Data_venda, ID_Pedido) VALUES 
(500.00, '2025-01-04', 1),
(450.00, '2025-01-05', 2);

-- Inserindo Pedido_Produto
INSERT INTO Pedido_Produto (ID_Pedido, ID_Produto) VALUES 
(1, 1),
(1, 2),
(2, 3);

-- Inserindo Venda_Produto
INSERT INTO Venda_Produto (ID_Venda, ID_Produto) VALUES 
(1, 1),
(1, 2),
(2, 3);
