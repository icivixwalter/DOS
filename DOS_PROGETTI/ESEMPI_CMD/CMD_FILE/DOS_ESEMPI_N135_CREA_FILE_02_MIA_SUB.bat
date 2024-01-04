    
REM Routine di calcolo che riceve come parametro il tuo contatore
REM ==========================================================================
:MiaSub
	
	@echo. 
	echo "controllo valore del parametro passato --------------------> %%1%% " %1%


	REM Uso una variabile per accodare il contatore al digit 0
	SET digits=0%1%
	echo "controllo il valore della variabile digits  ---------------> "%digits% 

	REM Prendo gli ultimi due caratteri a destra della variabile
	SET digits=%digits:~-2%

	REM Compongo i nomi dei file
	SET FileInp=FileDiImputSeq_S%digits%
	
	SET FileOut=FileDiOutput%NomeFileCom%_S%digits%
	
	@REM visualizzo il file di imput creato e quello di Output
	@echo FileInp: %FileInp%			FileOut: %FileOut%
	

REM ==========================================================================
EXIT /b 0


:EOF