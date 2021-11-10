USE SPMEDGROUP;
GO

-- Listar todas as entidades
SELECT  * FROM  tipoUsuario;
GO

SELECT  * FROM  usuario;
GO

SELECT  * FROM  clinica;
GO

SELECT  * FROM  paciente;
GO

SELECT  * FROM  especialidade;
GO

SELECT  * FROM  medico;
GO

SELECT  * FROM  situacao;
GO

SELECT  * FROM  consulta;
GO


SELECT nomePaciente 'Paciente', nomeMedico 'Médico', descricaoSituacao 'Situação', descricaoConsulta 'Descrição da Consulta', dataHoraConsulta 'Data da Consulta'

FROM consulta 
INNER JOIN paciente ON consulta.idPaciente = paciente.idPaciente
INNER JOIN medico ON consulta.idMedico = medico.idMedico
INNER JOIN situacao ON consulta.idSituacao = situacao.idSituacao 


SELECT nomePaciente 'Paciente', nomeMedico 'Médico', descricaoSituacao 'Situação', descricaoConsulta 'Descrição da Consulta', dataHoraConsulta 'Data da Consulta'

FROM consulta
INNER JOIN paciente ON consulta.idPaciente = paciente.idPaciente
INNER JOIN medico ON consulta.idMedico = medico.idMedico
INNER JOIN situacao ON consulta.idSituacao = situacao.idSituacao
WHERE nomePaciente= 'Henrique'; 



SELECT nomeMedico 'Médico', nomePaciente 'Paciente', descricaoSituacao 'Situação', descricaoConsulta 'Descrição da Consulta', dataHoraConsulta 'Data da Consulta'

FROM consulta
INNER JOIN paciente ON consulta.idPaciente = paciente.idPaciente
INNER JOIN medico ON consulta.idMedico = medico.idMedico
INNER JOIN situacao ON consulta.idSituacao = situacao.idSituacao
WHERE nomeMedico = 'Roberto Possarle';
GO


SELECT P.nomePaciente 'Nome do Paciente', U.email 'E-mail', U.senha 'Senha'

FROM usuario U
JOIN paciente P on U.idUsuario = P.idUsuario
WHERE email = 'alexandre@gmail.com'
AND senha = '1234567'


SELECT nomeMedico 'Nome do Médico', email 'E-mail', senha 'Senha'

FROM usuario
JOIN medico on usuario.idUsuario = medico.idUsuario
WHERE email = 'roberto.possarle@spmedicalgroup.com.br'
AND senha = '1234'