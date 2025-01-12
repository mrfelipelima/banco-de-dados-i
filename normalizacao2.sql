-- FELIPE CUNHA LIMA

CREATE DATABASE clinica;

USE clinica;

CREATE TABLE pacientes(
  num_paciente INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  dt_nasc DATE NOT NULL,
  sexo ENUM("M", "F") NOT NULL,
  convenio VARCHAR(50) NOT NULL,
  est_civil VARCHAR(15) NOT NULL,
  rg INTEGER NOT NULL,
  telefone INTEGER NOT NULL,
  endereco VARCHAR(50)
);

CREATE TABLE medicos(
  crm VARCHAR(15) NOT NULL PRIMARY KEY,
  nome TEXT
);

CREATE TABLE consultas(
  num_consulta INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
  num_paciente INTEGER NOT NULL,
  data DATE NOT NULL,
  crm_medico VARCHAR(15) NOT NULL,
  diagnostico TEXT,
  CONSTRAINT fk_paciente_consulta FOREIGN KEY (num_paciente) REFERENCES pacientes(num_paciente),
  CONSTRAINT fk_crm_medico_consulta FOREIGN KEY (crm_medico) REFERENCES medicos(crm)
);

CREATE TABLE exames(
  num_exame INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
  num_paciente INTEGER NOT NULL,
  num_consulta INTEGER NOT NULL,
  exame VARCHAR(50) NOT NULL,
  data DATE NOT NULL,
  CONSTRAINT fk_paciente_exame FOREIGN KEY (num_paciente) REFERENCES pacientes(num_paciente),
  CONSTRAINT fk_consulta_exame FOREIGN KEY (num_consulta) REFERENCES consultas(num_consulta)
);