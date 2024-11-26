CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT, 
tipo VARCHAR (255),
descricao VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR (255),
principio_ativo VARCHAR (255),
preco DECIMAL(6,2) NOT NULL,
marca VARCHAR (255),
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

ALTER TABLE tb_produtos ADD categoria_id BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

SELECT * FROM tb_produtos;

UPDATE tb_produtos SET categoria_id = 1 WHERE id = 1;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 2;
UPDATE tb_produtos SET categoria_id = 2 WHERE id = 3;
UPDATE tb_produtos SET categoria_id = 2 WHERE id = 4;
UPDATE tb_produtos SET categoria_id = 3 WHERE id = 5;
UPDATE tb_produtos SET categoria_id = 3 WHERE id = 6;
UPDATE tb_produtos SET categoria_id = 4 WHERE id = 7;
UPDATE tb_produtos SET categoria_id = 4 WHERE id = 8;
UPDATE tb_produtos SET categoria_id = 4 WHERE id = 9;
UPDATE tb_produtos SET categoria_id = 5 WHERE id = 10;
UPDATE tb_produtos SET categoria_id = 5 WHERE id = 11;

INSERT INTO tb_categorias(tipo, descricao)
VALUES 	("Medicamento","Analgésico"),
		("Medicamento","Anti-inflamatório"),
		("Medicamento","Anticoncepcional"),
		("Suplemento","Multivitamínico"),
		("Suplemento","Alimentar");

        SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome, principio_ativo, preco, marca, categoria_id)
VALUES 	("Aspirina","Ácido Acetilsalicílico",20.00,"Bayer",1),
		("Novalgina","Dipirona Monohidratada",30.00,"Sanofi",1),
		("Voltaren","Diclofenaco de Sódio",10.00,"Novartis",2),
		("Advil","Ibuprofeno",15.00,"Pfizer",2),
		("DiaD","Levonorgestrel",5.00,"Cimed",3),
		("Diane 35","Etinilestradiol",50.00,"Bayer",3),
		("Yasmin","Drospirenona",45.00,"Bayer",3),
		("Centrum","Multivitaminas",100.00,"Haleon",4),
		("Lavitan","Multivitaminas",55.00,"Cimed",4),
		("Sustagen","Complemento Alimentar",45.00,"Bayer",5),
		("Isofort","Proteína Concentrada do Leite",200.00,"Vitafor",5);
        
        SELECT * FROM tb_produtos WHERE preco > 50.00;
		SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
        SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
                
        SELECT nome, principio_ativo, preco, marca, tb_categorias.descricao
		FROM tb_produtos INNER JOIN tb_categorias 
		ON tb_produtos.categoria_id = tb_categorias.id
        WHERE tb_produtos.categoria_id = 3;
        
