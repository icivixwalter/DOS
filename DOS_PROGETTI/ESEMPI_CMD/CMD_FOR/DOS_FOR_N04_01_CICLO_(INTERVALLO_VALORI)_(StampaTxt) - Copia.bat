ECHO OFF
:CICLO_FOR

@REM -----> pause

@REM cancello il file di stampa
DEL DOS_FOR_N04_01_CICLO_(INTERVALLO_VALORI)_(StampaTxt).txt

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
		
		


:CICLO_FOR

:STAMPA_ELEMENTI_INTERVALLO 


echo "	FASE 02 SALVATAGGIO DATI"
echo "*******************************************************************************"
echo.
echo ricevo il parametro %%1%%
echo il quale contiene il Valore passato

@REM Resetto la variabile Numerica

SET /A Num =
SET /A Num=%1

@REM stampo il file solo con il limita massimo 6-1
IF %Num% NEQ 2017 (echo %Num% >> DOS_FOR_N04_01_CICLO_INTERVALLO_VALORI_StampaTxt.txt)	


ECHO ...........................................................
echo.
echo.

REM 
