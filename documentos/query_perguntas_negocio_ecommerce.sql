-- Lista de todos os clientes com seu tipo e endereço
SELECT Nome, Tipo_Cliente, Endereco 
FROM Cliente;

-- Produtos com preço acima de R$100,00
SELECT Nome, Preco 
FROM Produto 
WHERE Preco > 100.00;

-- Calcula o valor total em estoque de cada produto
SELECT 
    Nome, 
    Preco, 
    Quantidade_em_estoque, 
    Preco * Quantidade_em_estoque AS Valor_Total_Estoque
FROM Produto;

-- Lista os pedidos mais recentes primeiro
SELECT ID_Pedido, Data, Endereco_entrega 
FROM Pedido 
ORDER BY Data DESC;

-- Clientes com mais de 2 pedidos realizados
SELECT 
    ID_Cliente, 
    COUNT(*) AS Total_Pedidos 
FROM Pedido 
GROUP BY ID_Cliente 
HAVING COUNT(*) > 2;

-- Relação de produtos e seus fornecedores
SELECT 
    Produto.Nome AS Nome_Produto, 
    Fornecedor.Nome AS Nome_Fornecedor 
FROM Produto
JOIN Fornecedor ON Produto.ID_Fornecedor = Fornecedor.ID_Fornecedor;

-- Pedidos com status "Entregue" e detalhes do cliente
SELECT 
    Pedido.ID_Pedido, 
    Pedido.Status_Entrega, 
    Cliente.Nome AS Nome_Cliente, 
    Pedido.Endereco_entrega 
FROM Pedido
JOIN Cliente ON Pedido.ID_Cliente = Cliente.ID_Cliente
WHERE Pedido.Status_Entrega = 'Entregue';


-- Quantos pedidos foram feitos por cada cliente?
SELECT 
    Cliente.Nome, 
    COUNT(Pedido.ID_Pedido) AS Total_Pedidos 
FROM Cliente
LEFT JOIN Pedido ON Cliente.ID_Cliente = Pedido.ID_Cliente
GROUP BY Cliente.Nome;

-- Relação de fornecedores que também são clientes
SELECT 
    Fornecedor.Nome AS Nome_Fornecedor, 
    Cliente.Nome AS Nome_Cliente 
FROM Fornecedor
JOIN Cliente ON Fornecedor.Nome = Cliente.Nome;

-- Relação de produtos, fornecedores e quantidade em estoque
SELECT 
    Produto.Nome AS Nome_Produto, 
    Fornecedor.Nome AS Nome_Fornecedor, 
    Estoque.Quantidade 
FROM Produto
JOIN Fornecedor ON Produto.ID_Fornecedor = Fornecedor.ID_Fornecedor
JOIN Estoque ON Produto.ID_Produto = Estoque.ID_Produto;


