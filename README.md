# Compras de Livros - Projeto de Banco de Dados

## Descrição do Projeto

Este é um projeto de banco de dados chamado "Compras de Livros", que foi desenvolvido para armazenar informações relacionadas a uma biblioteca.

O banco de dados foi criado usando a linguagem SQL e foi projetado para ser utilizado em um ambiente de sistema de gerenciamento de banco de dados (SGBD) compatível com SQL, como MySQL, MariaDB, PostgreSQL ou SQLite.

## Estrutura do Banco de Dados

O projeto é composto pelas seguintes tabelas:

1. `enderecos`: Armazena informações de endereços, como CEP, rua, número, bairro, estado, cidade e país.

2. `editoras`: Contém detalhes das editoras de livros, como razão social, CNPJ e referência para o endereço associado.

3. `autores`: Armazena dados dos autores de livros, incluindo nome, CPF, referência para o endereço associado e referência para a editora associada.

4. `livros`: Contém informações sobre os livros disponíveis na loja, como título, gênero, quantidade de páginas, idioma, ISBN, valor unitário e referência para o autor associado.

5. `compras`: Armazena dados sobre as compras realizadas, incluindo a quantidade de livros comprados e referência para o livro associado.

## Como utilizar o Banco de Dados

Para utilizar o banco de dados "Compras de Livros", siga as etapas abaixo:

1. **Pré-requisitos:**
   - Certifique-se de ter instalado um sistema de gerenciamento de banco de dados (SGBD) compatível com SQL, como MySQL, MariaDB, PostgreSQL ou SQLite.

2. **Criação do Banco de Dados:**
   - Copie o código SQL presente nos arquivos fornecidos (`criacao_tabelas.sql`) e execute-o em seu SGBD para criar o banco de dados "compras_de_livros" e suas tabelas.

3. **Inserção de Dados:**
   - A seguir, copie o código SQL de inserção de dados (`insercao_dados.sql`) e execute-o no seu SGBD para popular as tabelas com informações fictícias.

4. **Consultas e Análises:**
   - Agora que o banco de dados está criado e populado com dados fictícios, você pode realizar consultas SQL para obter informações específicas e realizar análises relacionadas às compras de livros da biblioteca.

Link para o DBDiagram, onde foi feita a modelagem do BD:
https://dbdiagram.io/d/64c8428b02bd1c4a5e02ed71

## Contato

Em caso de dúvidas, sugestões ou feedback, sinta-se à vontade para entrar em contato comigo:

rffantin@gmail.com

www.linkedin.com/in/rafaelfantincamargo
