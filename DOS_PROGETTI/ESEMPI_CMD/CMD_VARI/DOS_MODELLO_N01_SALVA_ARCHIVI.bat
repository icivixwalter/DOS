@REM  ***************************************************************

@REM      file batch : Salva-C rar
@REM      directory = c:\casa\LTT ; \DOC  e \STAMPE
@REM      file WinRAR

@REM   ***************************************************************


@REM 					LE SOSTITUZIONI GENERALI
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

@REM  		Disco e codice Disco
@REM .......................................................
@REM --------------------------->: C:
@REM --------------------------->: _C
@REM .......................................................


@REM		directory y dove archiviare i dati
@REM .......................................................
@REM --------------------------->: C:\CASA\CDM\Gestione_LLPP\
@REM .......................................................


@REM 		Il nome di tutti i file di archivio dei dati
@REM .......................................................
@REM --------------------------->: Gestione_LLPP_


@REM 		Il file di archivio dei dati
@REM .......................................................
@REM --------------------------->: Gestione_LLPP_N05_ARCHIVI_BAT.GE614


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
echo.	MSG - SALVATAGGIO DATI - Gestione_LLPP_N05_ARCHIVI_BAT.GE614
echo.  
echo.
echo  "============================================================="

@REM			MESSAGGIO OPERAZIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM			OPERAZIONE DI SALVATAGGIO
@REM -----------------------------------------------------------------------------------------

	@REM//CANCELLA *.BAK
	CALL Gestione_LLPP_N60_CANCELLA_BAK.bat
		
	
	
	@REM//DECODIFICA I FILE G614 IN RAR
	echo.
	echo. "01"	
	echo. "MSG --->call Gestione_LLPP_N70_DECODIFICA.bat"
	call Gestione_LLPP_N70_DECODIFICA.bat
	

	@REM//SALVO IL 2014_2015
	echo.
	echo. "02"	
	echo. "MSG ---> SALVATAGGIO Gestione_LLPP_N05_2014_2015.rar"
	c:\CASA\Winrar.lnk a -r -U Gestione_LLPP_N05_TUTTO.rar @GESTIONE_LLPP_N02_TUTTO_Lista.lst



	
	@REM//CRIPTA I FILE RAR IN GG614
	echo.
	echo. "04"	
	echo. "MSG ---> all Gestione_LLPP_N70_CRIPTA.bat"
	call Gestione_LLPP_N70_CRIPTA.bat
	

@REM			OPERAZIONE DI SALVATAGGIO *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM			SOSPENSIONE
@REM -----------------------------------------------------------------------------------------

	@REM 01)
	@REM sospensione per 1 secondo con crononometro 
	@REM timeout /t 2 /nobreak > NUL
	@REM ---->	
	TIMEOUT /T 2 /NOBREAK


@REM			SOSPENSIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM 			SALVATAGGIO DATI *** FINE ***
@REM *************************************************************************************************************************








