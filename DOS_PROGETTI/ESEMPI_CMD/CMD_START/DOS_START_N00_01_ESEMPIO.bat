@REM  ***************************************************************

@REM      file batch : Salva-C rar
@REM      directory = c:\casa\LTT ; \DOC  e \STAMPE
@REM      file WinRAR

@REM   ***************************************************************


@REM 					LE SOSTITUZIONI GENERALI
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

@REM  		Disco e codice Disco
@REM .......................................................
@REM -----> 	C:
@REM -----> 	_C
@REM .......................................................


@REM		directory y dove archiviare i dati
@REM .......................................................
@REM ----->	C:\CASA\CDM\LaQuercia\
@REM .......................................................


@REM 		Il nome di tutti i file di archivio dei dati
@REM .......................................................
@REM ----->	LaQuercia_


@REM 		Il file di archivio dei dati
@REM .......................................................
@REM ----->	LaQuercia_N05_ARCHIVI_BAT.GE614


@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@




ECHO OFF
CLS


@REM 			INDIVIDUA_ANNO_CORRENTE
REM *************************************************************************************************************************

@REM			MESSAGGIO OPERAZIONE
@REM -----------------------------------------------------------------------------------------
echo  "============================================================="
echo.				INIZIO
echo.	MSG - INDIVIDUA_ANNO_CORRENTE_2016
echo.  
echo.
echo  "============================================================="

@REM			MESSAGGIO OPERAZIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM			CHIAMA_ANNO_CORRENTE
@REM -----------------------------------------------------------------------------------------
@REM OPZIONE ^& exit = chiude la finestra corrente appena attivato start
	
	
	
	echo.
	:===========================================================================
	:		INDIVIDUA_ANNO_CORRENTE_2016
	echo.
	echo. "03"	
	echo. "MSG ---> SALVATAGGIO LaQuercia_N05_2015_2016.rar"
		 start "ATTIVO LA PROCEDURA ESTERNA" /D c:\Casa\CDM\LaQuercia\  CALL LaQuercia_N01_SALVA_01_ANNO_CORRENTE.bat
	echo.
	:===========================================================================
	echo.
	
	PAUSE
	
	

@REM			CHIAMA_ANNO_CORRENTE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM			SOSPENSIONE
@REM -----------------------------------------------------------------------------------------

	@REM 01)
	@REM sospensione per 1 secondo con crononometro 
	@REM timeout /t 2 /nobreak > NUL
	@REM ---->	TIMEOUT /T 2 /NOBREAK


@REM			SOSPENSIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM 			INDIVIDUA_ANNO_CORRENTE *** FINE ***
@REM *************************************************************************************************************************








