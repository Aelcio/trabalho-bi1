@ECHO OFF

SET startTime = %TIME%
ECHO Iniciando Job

cd C:\PDI\designer-tools\data-integration 

kitchen.bat /rep:BI_VESTIBULAR /job:JOB_CARGA_FULL_VESTIBULAR /dir:etl_dw /level:Basic /log:"C:\trabalho-bi\executa_job.log" > "C:\trabalho-bi\executa_job_console.log" 

ECHO Inicio do Job.: %startTime%
ECHO Fim do Job.: %TIME%
ECHO Job finalizado