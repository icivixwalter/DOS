ECHO OFF
:CICLO_FOR

@REM -----> pause

@REM cancello il file di stampa
DEL DOS_FOR_N03_06_CICLO_TUTTE_LE_BANCHE.txt

	@REM CICLO FILTRO FILE
	@REM eseguo il cicolo for filtrando tutti i file dell'anno 2005
	@REM ed eseguendoli con il comando <<do (call %%c)>>.
	::_____________________________________________________________
		
	
	for %%f in (
		c:\CASA\GE_CASA\GE_MARINO\BANCA\BANCA_INTESA\*INTESA*2016*.xls 
		c:\CASA\GE_CASA\GE_MARINO\BANCA\BANCA_INTESA\*INTESA*2016*.pdf
		c:\CASA\GE_CASA\GE_MARINO\BANCA\BANCA_INTESA\*INTESA*2016*.doc
		
		c:\CASA\GE_CASA\GE_MARINO\BANCA\FINECO\FINECO*2016*.pdf
		c:\CASA\GE_CASA\GE_MARINO\BANCA\FINECO\FINECO*2016*.xls
		c:\CASA\GE_CASA\GE_MARINO\BANCA\FINECO\FINECO*2016*.doc
		
		c:\CASA\GE_CASA\GE_MARINO\BANCA\POSTA\POSTA*2016*.pdf
		c:\CASA\GE_CASA\GE_MARINO\BANCA\POSTA\POSTA*2016*.xls
		c:\CASA\GE_CASA\GE_MARINO\BANCA\POSTA\POSTA*2016*.doc
		) do (
		echo %f%
		call :STAMPA_ELEMENTI_FILE "%%f")

	
	::***fine***
	::_____________________________________________________________
		
		
	

:STAMPA_ELEMENTI_FILE 


echo "	FASE 02 SALVATAGGIO FILE FILTRATI E CONTROLLO MESE"
echo "*******************************************************************************"
echo.
echo ricevo il parametro %%1%%
echo il quale contiene il nome del file e lo passo la 
echo 	PROCESSO DI VISUALIZZAZIONE PROCEDURA :PROCESS	
echo ----------------------------------------------------
echo .
echo "Il file trovato
echo " stampo il parametro %%1%% completo  ------------------------------->" 
echo %1
echo " stampo il parametro solo nome file parametro: %%~n1%%  ------------>" 
echo %~n1
echo.
echo "Espande %1 solo in un nome di file e una estensione %%~nx1%%-------->"
echo %~nx1
echo. 
echo " stampo il parametro estensione del file parametro: %%~x1%%  ------->" %~x1
echo " stampo il parametro DATA del file parametro: 	  %%~tx1%% ------->" %~t1
echo . 

@REM assegno il nome del file + l'estensione alla variabile di ambiente						

SET NOME_FILE =
SET NOME_FILE=%~nx1
SET EXT_FILE =
SET EXT_FILE=%~x1
ECHO IL NOME DEL FILE + ESTENSIONE = %NOME_FILE% %EXT_FILE%

echo %NOME_FILE% >> DOS_FOR_N03_06_CICLO_TUTTE_LE_BANCHE.txt


ECHO ...........................................................
echo.
echo.

REM 
