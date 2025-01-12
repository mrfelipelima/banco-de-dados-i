-- FELIPE CUNHA LIMA

CREATE DATABASE ordens;

USE ordens;

CREATE TABLE fornecedor(
  cod_fornecedor INTEGER AUTO_INCREMENT NOT NULL,
  nome TEXT NOT NULL,
  endereco TEXT NOT NULL,
  CONSTRAINT pk_fornecedor PRIMARY KEY(cod_fornecedor)
);

CREATE TABLE ordem_de_compra(
  cod_ordem INTEGER AUTO_INCREMENT NOT NULL,
  cod_fornecedor INTEGER NOT NULL,
  data_emissao DATE NOT NULL,
  valor_total_ordem INTEGER NOT NULL,
  CONSTRAINT pk_ordem_de_compra PRIMARY KEY(cod_ordem),
  CONSTRAINT fk_ordem_fornecedor FOREIGN KEY(cod_fornecedor) REFERENCES fornecedor(cod_fornecedor)
);

CREATE TABLE material(
  cod_material INTEGER AUTO_INCREMENT NOT NULL,
  cod_ordem INTEGER NOT NULL,
  descricao TEXT NOT NULL,
  quantidade INTEGER NOT NULL,
  valor_unitario INTEGER NOT NULL,
  valor_total INTEGER NOT NULL,
  CONSTRAINT pk_material PRIMARY KEY(cod_material),
  CONSTRAINT fk_material_ordem FOREIGN KEY(cod_ordem) REFERENCES ordem_de_compra(cod_ordem)
);