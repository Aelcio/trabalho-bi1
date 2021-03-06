USE [STAGING_VESTIBULAR]
GO

/****** Object:  View [dbo].[VW_ST_INSCRICOES_PAGAS]    Script Date: 17/10/2021 21:46:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_ST_INSCRICOES_PAGAS]
AS
SELECT 
	CAST(CANDIDATO_ID AS INTEGER) AS CANDIDATO_ID,
	CAST(CURSO_ID AS INTEGER) AS CURSO_ID, 
	CAST(PROCESSO_ID AS INTEGER) AS PROCESSO_ID,
	CAST(FORMA_PAGAMENTO_ID AS INTEGER) AS FORMA_PAGAMENTO_ID,
	DATA_PAGINSCRICAO,
	REPLICATE('0',4 -LEN(HORA_PAGINSCRICAO)) + RTRIM(HORA_pagINSCRICAO) AS HORA_PAG_INSCRICAO,
	CAST(BOLSA_ESTUDO AS INTEGER) AS BOLSA_ESTUDO,
	CAST(CALL_CENTER AS INTEGER) AS CALL_CENTER,
	CAST(VALOR AS NUMERIC(10,2)) AS VALOR
FROM 
	ST_INSCRICOES_PAGAS (NOLOCK)
WHERE
	DATA_PAGINSCRICAO IS NOT NULL
GO


