CREATE DATABASE Clinica
GO
USE Clinica

CREATE TABLE Paciente (
Num_Beneficiario		int				not null,
Nome					varchar(100)	not null,
Logradouro				varchar(200)	not null,
Numero					int				not null,
CEP						char(8)			not null,
Complemento				varchar(255)	not null,
Telefone				varchar(11)		not null
PRIMARY KEY (Num_Beneficiario)
)

GO

CREATE TABLE Especialidade(
id				int				not null,
especialidade	varchar(255)	not null
PRIMARY KEY(id)
)

GO

CREATE TABLE Medico(
Codigo				int				not null,
Nome				varchar(100)	not null,
Logradouro			varchar(200)	not null,
Numero				int				not null,
CEP					char(8)			not null,
Complemento			varchar(255)	not null,
Contato				varchar(11)		not null,
Especialidade_id	int				not null
PRIMARY KEY (Codigo)
FOREIGN KEY (Especialidade_id)
	REFERENCES Especialidade (id)
)

GO

CREATE TABLE Consulta(
Paciente_Num_Beneficiario		int				not null,
Medico_Codigo					int				not null,
Data_hora						datetime		not null,
Observacao						varchar(255)	not null
PRIMARY KEY (Paciente_Num_Beneficiario, Medico_Codigo, Data_hora)
FOREIGN KEY (Paciente_Num_Beneficiario)
	REFERENCES Paciente(Num_Beneficiario),
FOREIGN KEY (Medico_Codigo)
	REFERENCES Medico(Codigo)
)

