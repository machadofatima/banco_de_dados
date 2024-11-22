CREATE DATABASE db_colegio;

USE db_colegio;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255),
data_nascimento DATE,
curso VARCHAR(255),
turma VARCHAR(255),
nota_final DECIMAL NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes(nome,data_nascimento,curso,turma,nota_final)
VALUES  ("Taylor","1989-12-13","Canto","A",10.00),
		("Miley","1992-12-23","Canto","A",10.00),
		("Beyoncé","1981-09-04","Canto","A",10.00),
		("Charli","1992-08-02","Canto","B",06.00),
		("Ariana","1993-06-26","Canto","B",09.00),
		("Sabrina","1999-05-11","Canto","B",08.00),
		("Stephanie","1986-03-28","Canto","A",07.00),
		("Gloria","1995-01-18","Canto","A",07.00);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

UPDATE tb_estudantes SET preco = 600 WHERE id = 5;

SELECT * FROM tb_estudantes;



