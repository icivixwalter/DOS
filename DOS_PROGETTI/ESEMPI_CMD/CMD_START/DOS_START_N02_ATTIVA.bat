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

	PAUSE
	@REM//SALVO IL 2017_2018 + Creo il file criptato
	echo.
	echo. "03"	
	echo. "MSG ---> SALVATAGGIO CorsoLazio_ScA_N05_2017_2018.rar"
	rar a -r -U DOS_START_N03_ARCHIVI_(Creati).rar *START*.*
	
	@REM timeout /t 8 /nobreak > NUL
	
	PAUSE
	exit /B

	
	

@REM			OPERAZIONE DI SALVATAGGIO *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM			SOSPENSIONE
@REM -----------------------------------------------------------------------------------------

	@REM 01)
	@REM sospensione per 1 secondo con crononometro 
	@REM timeout /t 2 /nobreak > NUL
	@REM ---->	TIMEOUT /T 2 /NOBREAK


@REM			SOSPENSIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM 			SALVATAGGIO DATI *** FINE ***
@REM *************************************************************************************************************************








