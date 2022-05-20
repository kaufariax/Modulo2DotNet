CREATE DATABASE db_marketplace

USE db_marketplace

CREATE TABLE Usuarios (
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR (50) NOT NULL,
	Email VARCHAR (50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Endereco VARCHAR (100) NULL,
)

CREATE TABLE Categorias (
	Id INT PRIMARY KEY NOT NULL,
	Descricaoo VARCHAR (50)
)

CREATE TABLE Produtos (
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	NomeProduto VARCHAR (50) NOT NULL,
	Descricao VARCHAR (150) NOT NULL,
	Preco FLOAT NULL,
	FK_Criador INT NOT NULL,
	FK_Categoria INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES Usuarios (Id),
	FOREIGN KEY (FK_Categoria) REFERENCES Categorias (Id)
)

CREATE TABLE Compras(
	FK_Comprador INT NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Comprador) REFERENCES Usuarios (Id),
	FOREIGN KEY (FK_Produto) REFERENCES Produtos (Id)
)