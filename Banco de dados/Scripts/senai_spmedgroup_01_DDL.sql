CREATE DATABASE SPMEDGROUP;
GO

USE SPMEDGROUP;
GO

CREATE TABLE tipoUsuario(
idTipoUsuario INT PRIMARY KEY IDENTITY(1,1),
tituloTipoUsuario VARCHAR(30) NOT NULL,
);
GO

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY IDENTITY(1,1),
idTipoUsuario INT FOREIGN KEY REFERENCES tipoUsuario(idTipoUsuario),
email VARCHAR(80) NOT NULL UNIQUE,
senha CHAR(15) NOT NULL,
);
GO

CREATE TABLE clinica(
idClinica INT PRIMARY KEY IDENTITY,
nomeClinica VARCHAR(50) NOT NULL UNIQUE,
razaoSocial VARCHAR(100) NOT NULL UNIQUE,
enderecoClinica VARCHAR(200) NOT NULL UNIQUE,
cnpj CHAR(20) NOT NULL UNIQUE,
horarioAberto TIME NOT NULL,
horarioFechado TIME NOT NULL,
);
GO

CREATE TABLE paciente(
idPaciente INT PRIMARY KEY IDENTITY,
idUsuario INT FOREIGN KEY REFERENCES usuario(idUsuario),
nomePaciente VARCHAR(150) NOT NULL UNIQUE,
rg CHAR(10) NOT NULL UNIQUE,
cpf CHAR(15) NOT NULL UNIQUE,
enderecoPaciente VARCHAR(150) NOT NULL UNIQUE,
nascimento DATETIME NOT NULL,
telefone CHAR(20) UNIQUE,
);
GO

CREATE TABLE especialidade(
idEspecialidade INT PRIMARY KEY IDENTITY,
nomeEspecialidade VARCHAR(80) NOT NULL UNIQUE,
);
GO

CREATE TABLE medico(
idMedico INT PRIMARY KEY IDENTITY,
idUsuario INT FOREIGN KEY REFERENCES tipoUsuario(idTipoUsuario),
idClinica INT FOREIGN KEY REFERENCES clinica(idClinica),
idEspecialidade INT FOREIGN KEY REFERENCES especialidade(idEspecialidade),
nomeMedico VARCHAR(100) NOT NULL UNIQUE,
crm CHAR(8) NOT NULL UNIQUE,
);
GO

CREATE TABLE situacao(
idSituacao INT PRIMARY KEY IDENTITY,
descricaoSituacao VARCHAR(100) NOT NULL UNIQUE,
);
GO

CREATE TABLE consulta(
idConsulta INT PRIMARY KEY IDENTITY,
idPaciente INT FOREIGN KEY REFERENCES paciente(idPaciente),
idMedico INT FOREIGN KEY REFERENCES medico(idMedico),
idSituacao INT FOREIGN KEY REFERENCES situacao(idSituacao),
descricaoConsulta VARCHAR(200) NOT NULL,
dataHoraConsulta DATETIME NOT NULL,
);
GO