
@ECHO OFF
@REM.-- Prepare the Command Processor
@REM SETLOCAL ENABLEEXTENSIONS
@REM SETLOCAL ENABLEDELAYEDEXPANSION

@REM  ***************************************************************

@REM     file batch : Salva-C rar
@REM     directory = c:\GESTIONI\GeTributi\GeTributi\TributiArchivi\ ; \DOC  e \STAMPE
@REM     file WinRAR


@REM  Opzione -x Estrae file e cartelle con il percorso originale. 
@REM  Opzione -r considera le sottocartelle
@REM  Opzione -u Estrai solo i nuovi

@REM  ***************************************************************



@REM 					LE SOSTITUZIONI GENERALI
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

@REM  		Disco e codice Disco
@REM .......................................................
@REM -----> 	J:
@REM -----> 	_J
@REM .......................................................


@REM		directory y dove archiviare i dati
@REM .......................................................
@REM ----->	J:\GESTIONI\GeTributi\GeTributi\TributiArchivi\
@REM .......................................................


@REM 		Il nome di tutti i file di archivio dei dati
@REM .......................................................
@REM ----->	TributiArchivi_


@REM 		Il file di archivio dei dati
@REM .......................................................
@REM ----->	TributiArchivi_N05_ARCHIVI_BAT.GE614

@REM .......................................................

@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@






@REM CANCELLO I DATI
@REM -------------------------------------------------------------------------------------



 	 
	 echo  "-------------------------------------------------------------"
	 echo.
	 echo.	CANCELLO *.BAK
	 echo.
	 echo  "-------------------------------------------------------------"
	 
	 DEL *.BAK
	
@REM CANCELLO I DATI
@REM =============================================================================================================
