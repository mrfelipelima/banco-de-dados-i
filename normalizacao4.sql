-- FELIPE CUNHA LIMA

CREATE DATABASE gestao_projetos;

USE gestao_projetos;

CREATE TABLE departamento(
  cod_depart INTEGER AUTO_INCREMENT NOT NULL,
  nome TEXT NOT NULL,
  CONSTRAINT pk_departamento PRIMARY KEY(cod_depart)
);

CREATE TABLE gerentes(
  cod_gerente INTEGER AUTO_INCREMENT NOT NULL,
  nome TEXT NOT NULL,
  CONSTRAINT pk_gerente PRIMARY KEY(cod_gerente)
);

CREATE TABLE empregados(
  cod_empregado INTEGER AUTO_INCREMENT NOT NULL,
  nome TEXT NOT NULL,
  CONSTRAINT pk_empregado PRIMARY KEY(cod_empregado)
);

CREATE TABLE projetos(
  cod_projeto INTEGER AUTO_INCREMENT NOT NULL,
  nome TEXT NOT NULL,
  dt_inicio DATE NOT NULL,
  dt_fim DATE,
  cod_depart INTEGER NOT NULL,
  cod_gerente INTEGER NOT NULL,
  total_horas INTEGER NOT NULL,
  CONSTRAINT pk_projetos PRIMARY KEY(cod_projeto),
  CONSTRAINT fk_departamento_projeto FOREIGN KEY(cod_depart) REFERENCES departamento(cod_depart),
  CONSTRAINT fk_gerente_projeto FOREIGN KEY(cod_gerente) REFERENCES gerentes(cod_gerente)
);

CREATE TABLE alocacao(
  cod_alocacao INTEGER AUTO_INCREMENT NOT NULL,
  cod_projeto INTEGER NOT NULL,
  cod_empregado INTEGER NOT NULL,
  horas_trabalhadas INTEGER NOT NULL,
  CONSTRAINT pk_alocacao PRIMARY KEY(cod_alocacao),
  CONSTRAINT fk_projeto_alocacao FOREIGN KEY(cod_projeto) REFERENCES projetos(cod_projeto),
  CONSTRAINT fk_empregado_alocacao FOREIGN KEY(cod_empregado) REFERENCES empregados(cod_empregado)
);