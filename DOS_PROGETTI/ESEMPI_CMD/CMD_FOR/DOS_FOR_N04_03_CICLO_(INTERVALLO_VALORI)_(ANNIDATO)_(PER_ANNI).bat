ECHO OFF
:CICLO_FOR

@REM -----> pause

@REM cancello il file di stampa
DOS_FOR_N04_04_CICLO_(INTERVALLO_VALORI)_(ANNIDATO)_ANNI.txt

	@REM CICLO CALCOLO INTERVALLO
	@REM Intervallo di valore di partenza 1; step 1 massimo 6
	@REM con filtro if finale per la stampa fino a 6-1
	::_____________________________________________________________
		
	@REM /L = parametro intervallo numerico
	for /L %%f in (1989,1,2017) do (
		echo %f%
		call :STAMPA_ELEMENTI_INTERVALLO "%%f")

	
	::***fine***
	::_____________________________________________________________
		
		


:STAMPA_ELEMENTI_INTERVALLO
echo.
echo. ================INIZIO CICLO ========================= 	

:STAMPA_ELEMENTI_INTERVALLO 

SET /A Anno =
SET /A Anno=%1

for %%c in (	c:\CASA\GE_CASA\GE_MARINO\BANCA\BANCA_INTESA\*INTESA*%Anno%*.*
		c:\CASA\GE_CASA\GE_MARINO\BANCA\BANCA_INTESA\*INTESA*%Anno%*.xls 
		c:\CASA\GE_CASA\GE_MARINO\BANCA\BANCA_INTESA\*INTESA*%Anno%*.pdf
		c:\CASA\GE_CASA\GE_MARINO\BANCA\BANCA_INTESA\*INTESA*%Anno%*.doc

		c:\CASA\GE_CASA\GE_MARINO\BANCA\FINECO\FINECO*%Anno%*.pdf
		c:\CASA\GE_CASA\GE_MARINO\BANCA\FINECO\FINECO*%Anno%*.xls
		c:\CASA\GE_CASA\GE_MARINO\BANCA\FINECO\FINECO*%Anno%*.doc

		c:\CASA\GE_CASA\GE_MARINO\BANCA\POSTA\POSTA*%Anno%*.pdf
		c:\CASA\GE_CASA\GE_MARINO\BANCA\POSTA\POSTA*%Anno%*.xls
		c:\CASA\GE_CASA\GE_MARINO\BANCA\POSTA\POSTA*%Anno%*.doc

		) do (call :STAMPA_ELEMENTI_FILE "%%c")

	
	::***fine***
	::_____________________________________________________________
		
		
	

:STAMPA_ELEMENTI_FILE 

echo "	FASE 03 STAMPA FILE"
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

@REM assegno il nome del file + l'estensione alla variabile di ambiente						
SET NOME_FILE =
SET NOME_FILE=%~nx1
ECHO IL NOME DEL FILE + ESTENSIONE = %NOME_FILE%


echo %NOME_FILE% >> DOS_FOR_N04_05_CICLO_(INTERVALLO_VALORI)_(ANNIDATO)_ANNI.txt


ECHO ...........................................................
echo.
echo.

REM 


echo.
echo. ================FINE CICLO ========================= 	

