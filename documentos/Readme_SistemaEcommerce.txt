# Sistema de E-commerce

Este projeto descreve o modelo conceitual e físico de um sistema de banco de dados para o desafio e-commerce da DIO, abordando a gestão de produtos, clientes, pedidos, vendas e formas de pagamento. A seguir, estão os detalhes sobre as entidades e seus relacionamentos.

## Objetivo

O objetivo deste projeto é fornecer um modelo de banco de dados para um e-commerce, permitindo o gerenciamento de:

- Produtos e estoque
- Clientes, incluindo Pessoa Física (PF) e Pessoa Jurídica (PJ)
- Pedidos e status de entrega
- Formas de pagamento dos clientes
- Vendas e associadas a pedidos

## Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas principais:

- **Produto**: Contém informações sobre os produtos disponíveis na loja.
- **Estoque**: Controla a quantidade de cada produto em estoque.
- **Cliente**: Contém informações dos clientes, com suporte para tanto PF quanto PJ.
- **Pedido**: Relaciona os pedidos feitos pelos clientes, com informações sobre o status de entrega e código de rastreio.
- **Pagamento**: Armazena informações sobre as formas de pagamento utilizadas pelos clientes.
- **Fornecedor**: Registra os fornecedores de produtos.
- **Vendas**: Registra as vendas realizadas, associando cada venda a um pedido.

## Principais Alterações no Modelo

- **Cliente PF e PJ**: Agora, um cliente pode ser de tipo **Pessoa Física (PF)** ou **Pessoa Jurídica (PJ)**, com campos separados para CPF e CNPJ, mas um cliente pode ter apenas um desses valores.
- **Pagamento**: O cliente pode cadastrar várias formas de pagamento (cartão de crédito, boleto, transferência, etc.).
- **Entrega**: A tabela de pedidos agora inclui informações sobre o **status de entrega** e o **código de rastreio**.

## Como Executar

1. Clone este repositório para sua máquina local.
2. Execute o script SQL no MySQL Workbench ou outra ferramenta de banco de dados.
3. O banco de dados será criado com as tabelas e relacionamentos necessários.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).
