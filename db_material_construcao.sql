CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT, 
    categoria VARCHAR(255),
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255),
    tipo VARCHAR(255),
    preco DECIMAL(6,2) NOT NULL,
    quantidade INT NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria, descricao)
VALUES 
    ("Ferramentas", "Produtos como martelos, chaves, etc."),
    ("Tintas", "Tintas para parede"),
    ("Hidráulica", "Produtos para encanamento e água"),
    ("Elétrica", "Materiais elétricos e cabos"),
    ("Madeiras", "Madeiras para construção e carpintaria");

INSERT INTO tb_produtos (nome, tipo, preco, quantidade, categoria_id)
VALUES 
    ("Martelo", "Ferramenta", 85.00, 10, 1),
    ("Chave de Fenda", "Ferramenta", 50.00, 15, 1),
    ("Tinta Branca", "Pintura", 120.00, 8, 2),
    ("Tinta Azul", "Pintura", 95.00, 10, 2),
    ("Torneira", "Encanamento", 110.00, 5, 3),
    ("Cano PVC", "Encanamento", 45.00, 20, 3),
    ("Fio Elétrico", "Material Elétrico", 150.00, 7, 4),
    ("Chapa de Madeira", "Carpintaria", 200.00, 4, 5);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.nome, tb_produtos.tipo, tb_produtos.preco, tb_produtos.quantidade, tb_categorias.categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.tipo, tb_produtos.preco, tb_produtos.quantidade, tb_categorias.categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "Hidráulica";