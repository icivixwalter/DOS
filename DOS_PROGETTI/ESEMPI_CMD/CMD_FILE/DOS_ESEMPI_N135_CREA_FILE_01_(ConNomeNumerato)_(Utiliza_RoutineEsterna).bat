    @ECHO OFF
    
    REM Ciclo for da 1-15 step 1
    for /l %%a in (1, 1, 15) do (
    	
	

    	CALL "c:\CASA\Linguaggi\DOS\DOS_ESEMPI_BAT\DOS_ESEMPI_N135_CREA_FILE_02_MIA_SUB.bat" %%a
    	
    	REM contatore dei file creati
    	Set /a TotNro=TotNro+1
    	
    )

 	@echo. 
 	@ECHO "Totale file creati --->%TotNro%"
 	pause



    GOTO EOF
