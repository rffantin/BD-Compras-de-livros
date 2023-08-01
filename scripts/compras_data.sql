-- Usa o banco de dados "compras_de_livros"
USE compras_de_livros;

-- Inserção de dados na tabela "enderecos"
INSERT INTO enderecos (cep, rua, numero, complemento, bairro, estado, cidade, pais)
VALUES
	('80333222', 'Rua Das Margaridas', '129', 'casa 2', 'Tiroleza', 'RR', 'Mucajai', 'Brasil'), -- Dados do endereço 1
	('84565720', 'Avenida Brasil para Cristo', '239', 'ap 510', 'Guadalupe', 'SC', 'Porto Uniao', 'Brasil'), -- Dados do endereço 2
	('85445443', 'Alameda Dom Pedro', '12', 'box 3', 'Tupi', 'RS', 'Gramado', 'Brasil'), -- Dados do endereço 3
	('80222454', 'Rua Petropolis', '56', 'ap 12', 'Sao Sebastiao', 'BA', 'Salvador', 'Brasil'), -- Dados do endereço 4
	('82656454', 'Avenida Caviar', '888', 'ap 50', 'Batel', 'PR', 'Curitiba', 'Brasil'), -- Dados do endereço 5
	('80545110', 'Rua Das Abelhas', '417', 'ap 400', 'Melado', 'MG', 'Ouro Preto', 'Brasil'), -- Dados do endereço 6
	('84650110', 'Avenida das Industrias', '900', 'box 10', 'Cidade Industrial', 'PR', 'Curitiba', 'Brasil'), -- Dados do endereço 7
	('82000151', 'Alameda Juizo', '111', 'ap 49', 'Juizado', 'GO', 'Anapolis', 'Brasil'), -- Dados do endereço 8
	('82353646', 'Rua das pedras', '16', 'ap 555', 'Pedreira', 'CE', 'Itapipoca', 'Brasil'), -- Dados do endereço 9
	('81454353', 'Avenida Jequitiba', '75', 'ap 75', 'Amazonia', 'AM', 'Manaus', 'Brasil'); -- Dados do endereço 10

-- Inserção de dados na tabela "editoras"
INSERT INTO editoras (razao_social, cnpj, id_endereco_fk)
VALUES
	('Letrinhas Redondinhas', '78363999000120', '1'), -- Dados da editora 1
    ('Paginas Douradas da Emilia', '92729980000186', '3'), -- Dados da editora 2
    ('Lougradouro dos Livros', '41987971000154', '5'), -- Dados da editora 3
    ('Bananas de Pijamas', '91068093000141', '7'), -- Dados da editora 4
    ('Livraria Livrai do Livro', '41609747000129', '9'); -- Dados da editora 5

-- Inserção de dados na tabela "autores"
INSERT INTO autores (nome, cpf, id_endereco_fk, id_editora_fk)
VALUES
	('Jorgina Luz da Paz', '27138449089', '2', '1'), -- Dados do autor 1
    ('Sebastiao de Sao Joao', '55103930099', '4', '2'), -- Dados do autor 2
    ('Claudete Monete', '09307087091', '6', '3'), -- Dados do autor 3
    ('Jacinta Jorgina de Jesus', '61863146008', '8', '4'), -- Dados do autor 4
    ('Tinoco Toboco Barroso', '16447368023', '10', '5'); -- Dados do autor 5

-- Inserção de dados na tabela "livros"
INSERT INTO livros (titulo, genero, quantidade_paginas, idioma, ISBN, valor_unitario, id_autor_fk)
VALUES
	('A Escuridao Escura', 'Suspense', '430', 'pt-br', '1234567895682', '29.90', '5'), -- Dados do livro 1
    ('Renascer e Florescer', 'Autoajuda', '600', 'pt-br', '4580561200052', '54.50', '2'), -- Dados do livro 2
    ('Fulanfa, a Fada Madrinha', 'Conto', '500', 'pt-br', '4545417860009', '12', '3'), -- Dados do livro 3
    ('O Garfo Divino', 'Religioso', '430', 'pt-br', '4678140014756', '11.90', '4'), -- Dados do livro 4
    ('Eu por Eu Mesmo', 'Biografia', '990', 'pt-br', '1349500147806', '159.90', '1'); -- Dados do livro 5

-- Inserção de dados na tabela "compras"
INSERT INTO compras (quantidade_livros, id_livro_fk)
VALUES
	('5', '1'), -- Dados da compra 1
    ('10', '2'), -- Dados da compra 2
    ('10', '3'), -- Dados da compra 3
	('12', '4'), -- Dados da compra 4
    ('50', '5'); -- Dados da compra 5
