CREATE DATABASE db_lojaVirtual;

USE db_lojaVirtual;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT, 
categoria VARCHAR(255),
nome VARCHAR(255),
quantidade INT,
data_validade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(categoria,nome,quantidade,data_validade,preco)
VALUES  ("Perfumaria","Perfume",100,"2050-12-15",900.00),
		("Maquiagem","Batom",100,"2030-12-15",100.00),
		("Maquiagem","Rímel",100,"2030-12-15",200.00),
		("Maquiagem","Blush",100,"2030-12-15",150.00),
		("Maquiagem","Iluminador",100,"2030-12-15",100.00),
		("Maquiagem","Contorno",100,"2030-12-15",200.00),
		("Skincare","Hidratante Facial",100,"2030-12-15",500.00),
		("Maquiagem","Gloss",100,"2030-12-15",150.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 600 WHERE id = 5;

SELECT * FROM tb_produtos;



