
@ECHO OFF
REM.-- Prepare the Command Processor
REM SETLOCAL ENABLEEXTENSIONS
REM SETLOCAL ENABLEDELAYEDEXPANSION

REM  ***************************************************************
rem     file batch : Salvataggio.rar
REM     directory = c:\Casa\LEGGI\PAUS
rem     file WinRAR


rem  Opzione -x Estrae file e cartelle con il percorso originale. 
rem  Opzione -r considera le sottocartelle (processa gli archivi delle sottocartelle)
rem  Opzione -u Estrai solo i nuovi
REM  ***************************************************************





@REM 					LE SOSTITUZIONI GENERALI
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

@REM  		Disco e codice Disco
@REM .......................................................
@REM -----> 	Y:
@REM -----> 	_I
@REM ----->	DISCO_Y_LLPP
@REM .......................................................


@REM		directory y dove archiviare i dati
@REM .......................................................
@REM ----->	Y:\Valter\Scanner\Backup\BackUp_TRIBUTI_LOCALI\
@REM .......................................................



@REM 		Il file di archivio dei dati
@REM .......................................................
@REM ----->	TRIBUTI_LOCALI_C01_S01_S01_S01_03_Archivi.*

@REM .......................................................

@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



@REM 				ELIMINA_DUE_CARATTERI_DAL_NOME
@REM //**********************************************************************************************************************
	
@:ELIMINA_DUE_CARATTERI_DAL_NOME
		
ECHO OFF
		@REM IF SALVATAGGI SU ELIMINA_DUE_CARATTERI_DAL_NOME	
		@REM=================================================================================================
		@REM NOTE : Elimina due caratteri dal nome.
		@REM	    controllo if.

		
			@REM 01) If exist E: = SE ESISTE IL FILE.RAR AGGIORNA QUELLO ESISTENTE
			@REM --------------------------------------------------------------------------------------
				
				@rem  Consente a un amministratore di visualizzare un elenco dei 
    				@rem driver di dispositivo installati.	

				 DRIVERQUERY 
				
				pause
				
				@REM fine procedura
				:eof
				
					@REM Ritardo per 3 secondi
					@choice /C:X /N /T:3 /D:X > NUL
					EXIT

				 @REM ----> PAUSE
				 
				 
				
			@REM 01) If exist E: = SE ESISTE IL FILE.RAR AGGIORNA QUELLO ESISTENTE  *** FINE ***
			@REM --------------------------------------------------------------------------------------
			
			

			
			


		@REM ELIMINA_DUE_CARATTERI_DAL_NOME	*** FINE ***
		@REM=================================================================================================




@:ERR_ELIMINA_DUE_CARATTERI_DAL_NOME

	echo.
	echo."=================================================================="
	echo."			MSG - ERR_ELIMINA_DUE_CARATTERI_DAL_NOME "
	echo.
	echo."ATTENZIONE '!!!' NON ESISTE ELIMINA_DUE_CARATTERI_DAL_NOME - USCITA - "			
	echo."=================================================================="
	
	@REM Ritardo per 3 secondi
	@choice /C:X /N /T:3 /D:X > NUL


	@REM RESTITUISCE AL CHIAMANTE
	


@REM 				ELIMINA_DUE_CARATTERI_DAL_NOME		*** FINE ***
@REM //**********************************************************************************************************************
