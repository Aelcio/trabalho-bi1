USE [STAGING_VESTIBULAR]
GO

/****** Object:  View [dbo].[VW_ST_CURSO]    Script Date: 17/10/2021 21:45:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_ST_CURSO]
AS
SELECT DISTINCT
	CAST(CURSO_ID AS INTEGER) AS CURSO_ID,
	CURSO
FROM
	ST_CURSO (NOLOCK)
GO


