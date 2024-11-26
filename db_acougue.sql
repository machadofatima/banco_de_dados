CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT, 
    categoria VARCHAR(255),
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT, 
    corte VARCHAR(255),
    tipo VARCHAR(255),
    preco DECIMAL(6,2) NOT NULL,
    data_validade DATE,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria, descricao)
VALUES 
    ("Carnes Bovinas", "Produtos de carne de boi"),
    ("Carnes Suínas", "Produtos de carne de porco"),
    ("Aves", "Produtos de carne de aves"),
    ("Peixes", "Produtos de carne de peixes"),
    ("Frutos do Mar", "Produtos como camarões, lulas, etc.");

INSERT INTO tb_produtos (corte, tipo, preco, data_validade, categoria_id)
VALUES 
    ("Picanha", "Bovina", 120.00, "2024-12-31", 1),
    ("Costela", "Bovina", 85.00, "2024-11-30", 1),
    ("Costelinha", "Suína", 65.00, "2024-11-15", 2),
    ("Pernil", "Suína", 50.00, "2024-11-20", 2),
    ("Frango Inteiro", "Ave", 40.00, "2024-12-01", 3),
    ("Coxa", "Ave", 45.00, "2024-12-05", 3),
    ("Salmão", "Peixe", 150.00, "2024-12-15", 4),
    ("Tilápia", "Peixe", 50.00, "2024-12-20", 4);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE corte LIKE "%c%";

SELECT tb_produtos.corte, tb_produtos.tipo, tb_produtos.preco, tb_produtos.data_validade, tb_categorias.categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.corte, tb_produtos.tipo, tb_produtos.preco, tb_produtos.data_validade, tb_categorias.categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "Aves";