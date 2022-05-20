CREATE DATABASE db_redesocial

USE db_redesocial

CREATE TABLE Usuarios
(
Id_Usuarios INT PRIMARY KEY NOT NULL,
Nome VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL,
Senha VARCHAR(100) NOT NULL,
)

CREATE TABLE Categoria
(
Id_Categoria INT PRIMARY KEY NOT NULL,
Descricao VARCHAR(100) NOT NULL,
)

CREATE TABLE Grupos
(
Id_Grupo INT PRIMARY KEY NOT NULL,
 Nome VARCHAR(50) NOT NULL,
 FK_Id_Categoria INT NOT NULL,
 FOREIGN KEY (FK_Id_Categoria) REFERENCES Categoria (Id_Categoria)
)

CREATE TABLE Postagens
(
Id_Postagem INT PRIMARY KEY NOT NULL,
Titulo VARCHAR(50) NOT NULL,
Descricao VARCHAR(100) NOT NULL,
FK_Id_Usuarios INT NULL,
FK_Id_Categoria INT NOT NULL,
FK_Id_Grupo INT NOT NULL,
FOREIGN KEY (FK_Id_Usuarios) REFERENCES Usuarios (Id_Usuarios),
FOREIGN KEY (FK_Id_Grupo) REFERENCES Grupos (Id_Grupo),
FOREIGN KEY (FK_Id_Categoria) REFERENCES Categoria (Id_Categoria),
)