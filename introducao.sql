-- FELIPE CUNHA LIMA

CREATE DATABASE telecom;

USE telecom;

/*
	1 - Criar uma tabela de dados no MySQL para clientes de uma empresa de telecomunicações.
	Esses clientes devem ser gerenciados pelos campos de CPF, Nome, Data de Nascimento,
	Endereço, CEP, Bairro, Cidade e UF.
*/

CREATE TABLE clientes(
  cpf VARCHAR(11),
  nome TEXT,
  dt_nascimento DATE,
  endereco TEXT,
  CEP INTEGER,
  bairro VARCHAR(50),
  cidade VARCHAR(50),
  uf CHAR(2)
);

/*
	2 -  Após criar a tabela acima especificada adicionar um campo para armazenar a data da última
	compra.
*/

ALTER TABLE clientes ADD ultima_compra DATE;

/*
	3 - Inserir na tabela Clientes três clientes, conforme seguem:
	04496332780, João da Silva, 25/11/1969, Rua Antônio Numes, 88045963, Palmeiras, Londrina, PR.
	05485031490, Ana Regina Fagundes, 21/09/1986, Rua Palmeias Novas, 88078923, Leblon, Rio de Janeiro, RJ.
	03350314905, Fernando Soares, 05/03/1990, Rua Palmeias Novas, 88048917, Copacabana, Rio de Janeiro, RJ.
*/

INSERT INTO clientes(cpf, nome, dt_nascimento, endereco, CEP, bairro, cidade, uf) VALUES
(04496332780, "João da Silva", "1969-11-25", "Rua Antônio Numes", 88045963, "Palmeiras", "Londrina", "PR"),
(05485031490, "Ana Regina Fagundes", "1986-09-21", "Rua Palmeias Novas", 88078923, "Leblon", "Rio de Janeiro", "RJ"),
(03350314905, "Fernando Soares", "1990-03-05", "Rua Palmeias Novas", 88048917, "Copacabana", "Rio de Janeiro", "RJ");

/*
	 4 - Selecionar todos os clientes que residam na cidade do Rio de Janeiro.
*/

SELECT * FROM clientes WHERE cidade = "Rio de Janeiro";

/*
	 5 - Deletar os clientes que residam na cidade de Londrina.
*/

DELETE FROM clientes WHERE cidade = "Londrina";