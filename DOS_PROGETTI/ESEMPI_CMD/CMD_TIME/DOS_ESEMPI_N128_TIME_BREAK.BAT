REM 00)		RITARDO DI ESECUZIONE
REM.............................................................................

	@REM COMANDO  	: TIMEOUT [/T] TIMEOUT [/NOBREAK]
	@REM esempi	: TIMEOUT /T 10; TIMEOUT /T 300 /NOBREAK; TIMEOUT /T -1
	@REM sospeNione per 1 secondo SI PUO' USARE CHOISE O TIMEOUT OPPURE PING
	@REM Parametro	: /T = numero di secondi intervallo -1 to 99999
	@REM Parametro	: /NOBREAK = ignora la pressione dei tasti ed attende il tempo
	@REM	                   specificato

	choice /C:X /N /T:1 /D:X > NUL
	
	echo  "============================================================="
	echo.			MSG - RITARDATA ESECUZIONE -
	echo.  "Sospensione attività PER 3 SECONDI !"
	echo.
	echo  "============================================================="
	
		@REM sospensione 
		timeout /t 3 /nobreak > NUL 

	 :: Il comando attuale: provare IPv4 in primo luogo, se fallisce provare IPv6
	 rem PING 127.0.0.1 -n 3 

	
REM.............................................................................



@REM ************************************************************************************************************************
@REM					ESEMPIO DI PROCEDURA DI SOSPENSIONE
@REM ************************************************************************************************************************


@REM	USCITA FINALE CON SOSPENSIONE 
@REM ======================================================================================================================

@REM //--------------------------------------------------------------//

@ECHO "--------------------------> USCITA DALLA PROCEDURA "

	
	echo.
	echo."=================================================================="
	echo."			MSG - EXIT_PROCEDURA "
	echo.
	echo."ATTENZIONE '!!!' USCITA DALLA PROCEDURA : - USCITA - "			
	echo."=================================================================="

	
	@REM			SOSPENSIONE
	@REM -----------------------------------------------------------------------------------------
	
		@REM 01)
		@REM sospensione per 1 secondo con crononometro 
		@REM /NOBREAK = opzione premere tasto Ctrl per interrompere
		@REM /NOBREAK >NULL = opzione premere tasto Ctrl per interrompere NON VISIBILE
		@REM timeout /t 2 /nobreak > NUL
		
		@REM /C:X /N /T:3 /D:X > NUL (opzioni da definire ????)
		@REM @choice /C:X /N /T:3 /D:X > NUL
		
		@REM /T 2 = 2 secondi; /NOBREAK >NULL = opzione preme tasto CTRL per uscire non attivata
		@REM ---->	TIMEOUT /T 2 /NOBREAK
		
		@REM Ritardo per 5 secondi con /T 5 = conteggio secondi e messaggio premere tasto per continuare
		@TIMEOUT /T 5  

	
	
	@REM			SOSPENSIONE *** FINE ***
	@REM -----------------------------------------------------------------------------------------

	
	
	@REM EXIT /B USCITA DAL BATCH CORRENTE
	@REM ......................................................................
		@REM ->EXIT= Termina il programma CMD.EXE (interprete dei comandi) o lo script batch corrente.
		@REM ->EXIT/B = specifica la terminazione del batch corrente invece di CMD.EXE. 
		@REM 		Se eseguito al di fuori di uno script batch, terminerà CMD.EXE
		@REM ->EXIT exitCode = specifica un numero. Se /B è specificato, imposta
		@REM		ERRORLEVEL a tale numero. Se si termina CMD.EXE,
		@REM		imposta il codice di uscita del processo a tale numero.



		@EXIT /B
		@EOF

	@REM EXIT /B USCITA DAL BATCH CORRENTE *** FINE ***
	@REM ......................................................................


@REM	USCITA FINALE CON SOSPENSIONE *** FINE ***
@REM ======================================================================================================================

