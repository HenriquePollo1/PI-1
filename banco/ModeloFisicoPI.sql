-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Usuario (
id VARCHAR(10) PRIMARY KEY,
nome VARCHAR(60),
data_nascimento DATETIME,
senha VARCHAR(10),
CPF VARCHAR(10),
email VARCHAR(20),
altura DECIMAL(10),
peso DECIMAL(10),
sexo VARCHAR(10)
)

CREATE TABLE Internação (
id VARCHAR(10) PRIMARY KEY,
id_medfico VARCHAR(10),
data_alta VARCHAR(10),
data_internacao DATETIME,
id_usuario VARCHAR(10),
hospital VARCHAR(60),
motivo VARCHAR(100),
-- Erro: nome do campo duplicado nesta tabela!
id VARCHAR(10),
FOREIGN KEY(id) REFERENCES Usuario (id)
)

CREATE TABLE Consulta (
id VARCHAR(10) PRIMARY KEY,
id_usuario VARCHAR(10),
data DATETIME,
motivo_consulta VARCHAR(40),
especialidade VARCHAR(30),
id_medico VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
id VARCHAR(10),
FOREIGN KEY(id) REFERENCES Usuario (id)
)

CREATE TABLE Receita (
id VARCHAR(10) PRIMARY KEY,
medicamentos VARCHAR(100),
posologia VARCHAR(200),
id_medico VARCHAR(10),
data DATETIME,
id_usuario VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
id VARCHAR(10),
FOREIGN KEY(id) REFERENCES Usuario (id)
)

CREATE TABLE Medico (
id VARCHAR(10) PRIMARY KEY,
nome VARCHAR(60),
CRM VARCHAR(10)
)

CREATE TABLE Exame (
id VARCHAR(10) PRIMARY KEY,
data DATETIME,
tipo VARCHAR(10),
resultado VARCHAR(100),
id_usuario VARCHAR(10),
id_medico VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
id VARCHAR(10),
FOREIGN KEY(id) REFERENCES Usuario (id)
)

CREATE TABLE pede (
id VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
id VARCHAR(10),
FOREIGN KEY(id) REFERENCES Medico (id),
FOREIGN KEY(id) REFERENCES Internação (id)
)

CREATE TABLE prescreve (
id VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
id VARCHAR(10),
FOREIGN KEY(id) REFERENCES Medico (id),
FOREIGN KEY(id) REFERENCES Receita (id)
)

CREATE TABLE realiza (
id VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
id VARCHAR(10),
FOREIGN KEY(id) REFERENCES Medico (id),
FOREIGN KEY(id) REFERENCES Consulta (id)
)

CREATE TABLE solicita (
id VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
id VARCHAR(10),
FOREIGN KEY(id) REFERENCES Medico (id),
FOREIGN KEY(id) REFERENCES Exame (id)
)

