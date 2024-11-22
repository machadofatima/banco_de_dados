CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR (255),
setor VARCHAR (255), 
cargo VARCHAR (255),
salario DECIMAL NOT NULL,
data_admissao DATE,
PRIMARY KEY (id)
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios (nome, setor, cargo, salario, data_admissao)
VALUES 	("Jair","Almoxarifado","Auxiliar",1500,"2024-01-07"),
		("Iza","Financeiro","Analista",5000,"2024-08-18"),
		("Juliana","Comercial","Diretor",40000,"2024-04-21"),
		("Angelica","RH","Gerente",25000,"2024-08-21"),
		("Lucas","TI","Presidente",60000,"2024-02-08");

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 6000 WHERE id = 2;

SELECT * FROM tb_funcionarios;
