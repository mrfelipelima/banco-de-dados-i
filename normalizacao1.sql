-- FELIPE CUNHA LIMA

CREATE DATABASE empresa;

USE empresa;

CREATE TABLE funcionario(
  matricula INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  data_nasc DATE NOT NULL,
  nacionalidade VARCHAR(50) NOT NULL,
  sexo ENUM("M", "F") NOT NULL,
  estado_civil VARCHAR(15),
  rg INTEGER NOT NULL,
  cic INTEGER NOT NULL,
  endereco VARCHAR(50),
  telefone INTEGER,
  data_admissao DATE NOT NULL
);

CREATE TABLE cargos(
  id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
  matricula INTEGER NOT NULL,
  cargo VARCHAR(50) NOT NULL,
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL,
  CONSTRAINT fk_funcionario FOREIGN KEY (matricula) REFERENCES funcionario(matricula)
);

CREATE TABLE dependentes(
  id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
  matricula INTEGER NOT NULL,
  nome TEXT NOT NULL,
  data_nasc DATE NOT NULL,
  CONSTRAINT fk_funcionario FOREIGN KEY (matricula) REFERENCES funcionario(matricula)
);