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
@REM ----->	CorsoLazio_ScA_


@REM 		Il file di archivio dei dati
@REM .......................................................
@REM ----->	CorsoLazio_ScA_N05_ARCHIVI_BAT.GE614


@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@




ECHO OFF
CLS


@REM 			SALVATAGGIO DATI
REM *************************************************************************************************************************

@REM			MESSAGGIO OPERAZIONE
@REM -----------------------------------------------------------------------------------------
echo  "============================================================="
echo.				INIZIO
echo.	MSG - SALVATAGGIO DATI - CorsoLazio_ScA_N05_ARCHIVI_BAT.GE614
echo.  
echo.
echo  "============================================================="


@REM  cancello gli *.bak
DEL *.BAK


@REM			MESSAGGIO OPERAZIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------







@REM			OPERAZIONE DI SALVATAGGIO
@REM -----------------------------------------------------------------------------------------

@REM per far uscire la finestra alla fine del processo utilizzare il seguente comando ^& exit
START "prova start" /Max DOS_START_N02_ATTIVA.bat ^& exit




@REM			OPERAZIONE DI SALVATAGGIO *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM			SOSPENSIONE
@REM -----------------------------------------------------------------------------------------

	@REM 01)
	@REM sospensione per 1 secondo con crononometro 
	@REM timeout /t 2 /nobreak > NUL
	@REM ---->	TIMEOUT /T 6 /NOBREAK


@REM			SOSPENSIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM 			SALVATAGGIO DATI *** FINE ***
@REM *************************************************************************************************************************








