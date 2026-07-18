-- Criar banco
CREATE DATABASE LojaDeMateriais;

USE LojaDeMateriais;

-- Criar tabela categoria
CREATE TABLE IF NOT EXISTS categoria (
  categoria_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NULL,
  descricao VARCHAR(255) NULL,
  PRIMARY KEY (categoria_id)
);

-- Criar tabela fornecedor
CREATE TABLE IF NOT EXISTS fornecedor (
  fornecedor_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(255) NOT NULL,
  telefone VARCHAR(15) NOT NULL,
  logradouro VARCHAR(20) NULL,
  bairro VARCHAR(20) NULL,
  cidade VARCHAR(20) NULL,
  estado CHAR(2) NULL,
  PRIMARY KEY (fornecedor_id)
);

-- Criar tabela produto
CREATE TABLE IF NOT EXISTS produto (
  produto_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  descricao VARCHAR(255) NULL,
  valor_unidade FLOAT NOT NULL,
  quantidade_disponivel INT NOT NULL,
  categoria_id INT UNSIGNED NOT NULL,
  fornecedor_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (produto_id),
  CONSTRAINT fk_produto_categoria
    FOREIGN KEY (categoria_id)
    REFERENCES categoria (categoria_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT fk_produto_fornecedor
    FOREIGN KEY (fornecedor_id)
    REFERENCES fornecedor (fornecedor_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

-- Criar tabela movimentacao
CREATE TABLE IF NOT EXISTS movimentacao (
  movimentacao_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  data_hora DATETIME NULL,
  tipo_fluxo VARCHAR(45) NOT NULL,
  motivo VARCHAR(100) NULL,
  quantidade INT NOT NULL,
  valor_total FLOAT NULL,
  produto_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (movimentacao_id),
  CONSTRAINT fk_movimentacao_produto
    FOREIGN KEY (produto_id)
    REFERENCES produto (produto_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

