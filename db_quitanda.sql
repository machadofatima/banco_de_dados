CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255),
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco)
VALUES ("Tomate",100,"2024-12-15",9.00);

INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco)
VALUES ("Laranja",100,"2024-12-15",10.00);

INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco)
VALUES ("Pêra",100,"2024-12-15",20.00);

INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco)
VALUES ("Maçã",100,"2024-12-15",15.00);

INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco)
VALUES ("Batata",100,"2024-12-15",10.00);

-- Selecionando dados da tabela

SELECT * FROM tb_produtos;

SELECT nome,preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE nome in ("tomate", "maçã");

SELECT * FROM tb_produtos WHERE preco >= 5;

DELETE FROM tb_produtos WHERE id in (12,11,10,9,8,7);
