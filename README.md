<h3># Sistema de E-commerce</h3>

Este projeto descreve o modelo conceitual e físico de um sistema de banco de dados para o desafio e-commerce da DIO, abordando a gestão de produtos, clientes, pedidos, vendas e formas de pagamento. A seguir, estão os detalhes sobre as entidades e seus relacionamentos.

<h3>## Objetivo</h3>

O objetivo deste projeto é fornecer um modelo de banco de dados para um e-commerce, permitindo o gerenciamento de:

- Produtos e estoque
- Clientes, incluindo Pessoa Física (PF) e Pessoa Jurídica (PJ)
- Pedidos e status de entrega
- Formas de pagamento dos clientes
- Vendas e associadas a pedidos

<h3>## Estrutura do Banco de Dados</h3>

O banco de dados contém as seguintes tabelas principais:

- **Produto**: Contém informações sobre os produtos disponíveis na loja.
- **Estoque**: Controla a quantidade de cada produto em estoque.
- **Cliente**: Contém informações dos clientes, com suporte para tanto PF quanto PJ.
- **Pedido**: Relaciona os pedidos feitos pelos clientes, com informações sobre o status de entrega e código de rastreio.
- **Pagamento**: Armazena informações sobre as formas de pagamento utilizadas pelos clientes.
- **Fornecedor**: Registra os fornecedores de produtos.
- **Vendas**: Registra as vendas realizadas, associando cada venda a um pedido.

<h3>## Modelos Overview </h3>

[![image](https://github.com/user-attachments/assets/15b7a1fa-d939-437a-bcf4-45c9efe8d801)](https://github.com/user-attachments/assets/62905776-d5dc-46ae-92e1-2476028f5da3)

[![image](https://github.com/user-attachments/assets/15b7a1fa-d939-437a-bcf4-45c9efe8d801)](https://github.com/user-attachments/assets/0b860b87-b3ea-4866-b6e9-df56ec6204f4)

<h3>## Principais Alterações no Modelo</h3>

- **Cliente PF e PJ**: Agora, um cliente pode ser de tipo **Pessoa Física (PF)** ou **Pessoa Jurídica (PJ)**, com campos separados para CPF e CNPJ, mas um cliente pode ter apenas um desses valores.
- **Pagamento**: O cliente pode cadastrar várias formas de pagamento (cartão de crédito, boleto, transferência, etc.).
- **Entrega**: A tabela de pedidos agora inclui informações sobre o **status de entrega** e o **código de rastreio**.
