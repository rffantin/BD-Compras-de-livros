-- Criação do banco de dados "compras_de_livros"
CREATE DATABASE compras_de_livros;

-- Usa o banco de dados "compras_de_livros"
USE compras_de_livros;

-- Criação da tabela "enderecos" para armazenar informações de endereços
CREATE TABLE `enderecos` (
  `id_endereco` INT PRIMARY KEY AUTO_INCREMENT, -- Coluna para a chave primária do endereço
  `cep` INT, -- Código de Endereçamento Postal (CEP)
  `rua` VARCHAR(50), -- Nome da rua
  `numero` INT, -- Número do endereço
  `complemento` VARCHAR(20), -- Complemento do endereço
  `bairro` VARCHAR(20), -- Bairro
  `estado` VARCHAR(2), -- Estado (sigla)
  `cidade` VARCHAR(60), -- Cidade
  `pais` VARCHAR(20) -- País
);

-- Criação da tabela "editoras" para armazenar informações de editoras
CREATE TABLE `editoras` (
  `id_editora` INT PRIMARY KEY AUTO_INCREMENT, -- Coluna para a chave primária da editora
  `razao_social` VARCHAR(50), -- Razão social da editora
  `cnpj` VARCHAR(14), -- CNPJ da editora
  `id_endereco_fk` INT, -- Coluna que será utilizada para estabelecer a chave estrangeira para endereços
  FOREIGN KEY (id_endereco_fk) REFERENCES enderecos (id_endereco) -- Chave estrangeira referenciando a tabela "enderecos"
);

-- Criação da tabela "autores" para armazenar informações de autores
CREATE TABLE `autores` (
  `id_autor` INT PRIMARY KEY AUTO_INCREMENT, -- Coluna para a chave primária do autor
  `nome` VARCHAR(50), -- Nome do autor
  `cpf` VARCHAR(11), -- CPF do autor
  `id_endereco_fk` INT, -- Coluna que será utilizada para estabelecer a chave estrangeira para endereços
  FOREIGN KEY (id_endereco_fk) REFERENCES enderecos (id_endereco), -- Chave estrangeira referenciando a tabela "enderecos"
  `id_editora_fk` INT, -- Coluna que será utilizada para estabelecer a chave estrangeira para editoras
  FOREIGN KEY (id_editora_fk) REFERENCES editoras (id_editora) -- Chave estrangeira referenciando a tabela "editoras"
);

-- Criação da tabela "livros" para armazenar informações de livros
CREATE TABLE `livros` (
  `id_livro` INT PRIMARY KEY AUTO_INCREMENT, -- Coluna para a chave primária do livro
  `titulo` VARCHAR(100), -- Título do livro
  `genero` VARCHAR(15), -- Gênero do livro
  `quantidade_paginas` INT, -- Quantidade de páginas do livro
  `idioma` VARCHAR(10), -- Idioma do livro
  `ISBN` BIGINT, -- Código ISBN do livro
  `valor_unitario` DOUBLE, -- Valor unitário do livro
  `id_autor_fk` INT, -- Coluna que será utilizada para estabelecer a chave estrangeira para autores
  FOREIGN KEY (id_autor_fk) REFERENCES autores (id_autor) -- Chave estrangeira referenciando a tabela "autores"
);

-- Criação da tabela "compras" para armazenar informações de compras
CREATE TABLE `compras` (
  `id_compra` INT PRIMARY KEY AUTO_INCREMENT, -- Coluna para a chave primária da compra
  `quantidade_livros` INT, -- Quantidade de livros comprados
  `id_livro_fk` INT, -- Coluna que será utilizada para estabelecer a chave estrangeira para livros
  FOREIGN KEY (id_livro_fk) REFERENCES livros (id_livro) -- Chave estrangeira referenciando a tabela "livros"
);
