--
-- File generated with SQLiteStudio v3.2.1 on dom mar 29 21:56:43 2020
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Aluguel_Produto
CREATE TABLE Aluguel_Produto (id_produto NOT NULL REFERENCES Produto (id_produto) PRIMARY KEY, desconto_aluguel_produto NUMERIC, preco_alguel_produto NUMERIC NOT NULL);

-- Table: Cliente
CREATE TABLE Cliente (Matricula_Cliente NUMERIC (5) PRIMARY KEY NOT NULL, CPF NUMERIC (12) NOT NULL, nome_cliente TEXT (100) NOT NULL, "e-mail_cliente" TEXT (50) NOT NULL, telefone_cliente NUMERIC (15) NOT NULL, endereco_cliente TEXT (200) NOT NULL);

-- Table: Estoque
CREATE TABLE Estoque (id_movimento_estoque NUMERIC PRIMARY KEY NOT NULL, qtd_movimento_estoque NUMERIC NOT NULL, quantidade NUMERIC NOT NULL);

-- Table: Funcionario
CREATE TABLE Funcionario (Matricula INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, CPF_funcionario NUMERIC (12) NOT NULL, nome_funcionario TEXT (100) NOT NULL, cargo_funcionairo TEXT (50) NOT NULL, hora_trabalho_funcionario DATETIME, "e-mail_funcionario" TEXT (50) NOT NULL, salario_funcionario NUMERIC (6) NOT NULL, telefone_funcionario NUMERIC (15) NOT NULL, endereco_funcionario TEXT (200) NOT NULL, meta_funcionario NUMERIC (7), comissao_funcionario NUMERIC (7), vendas_funcionario NUMERIC (5));
INSERT INTO Funcionario (Matricula, CPF_funcionario, nome_funcionario, cargo_funcionairo, hora_trabalho_funcionario, "e-mail_funcionario", salario_funcionario, telefone_funcionario, endereco_funcionario, meta_funcionario, comissao_funcionario, vendas_funcionario) VALUES (0, 47498755890, 'Vinicius Bucioli', 'Vendedor', '', 'vini123@gmail.com', 10000, 19988038368, 'rua1nuemiroasdasdfasdf', 1000, 12, 5);

-- Table: Ponto
CREATE TABLE Ponto (ID_Ponto INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, matricula_funcionario NUMERIC (8) NOT NULL REFERENCES Funcionario (Matricula), entrada_funcionario DATETIME, saida_funcionario DATETIME);

-- Table: Portifolio
CREATE TABLE Portifolio (id_portifolio INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, arquivo_portifolio BLOB NOT NULL, nome_portifolio TEXT (100) NOT NULL);

-- Table: Produto
CREATE TABLE Produto (id_produto NUMERIC PRIMARY KEY NOT NULL, nome_produto TEXT (100) NOT NULL, categoria_produto TEXT (50) NOT NULL, preco_custo_produto NUMERIC NOT NULL, descricao_produto TEXT (200) NOT NULL);

-- Table: Servico
CREATE TABLE Servico (id_servico NUMERIC PRIMARY KEY NOT NULL, categoria_servico TEXT (50) NOT NULL, preco_servico NUMERIC NOT NULL, descricao_servico TEXT (200) NOT NULL, nome_servico TEXT (100) NOT NULL);

-- Table: Venda
CREATE TABLE Venda (id_venda NUMERIC PRIMARY KEY NOT NULL, data_venda DATE NOT NULL, preco_venda NUMERIC NOT NULL, desconto_venda NUMERIC, preco_total_venda NUMERIC NOT NULL);

-- Table: Venda_Produto
CREATE TABLE Venda_Produto (id_produto NUMERIC REFERENCES Produto (id_produto) NOT NULL PRIMARY KEY, desconto_venda_produto NUMERIC, preco_venda_produto NUMERIC NOT NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
