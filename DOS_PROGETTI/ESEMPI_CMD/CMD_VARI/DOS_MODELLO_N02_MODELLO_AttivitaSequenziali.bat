

@REM  ***************************************************************
@REM     file batch : Salvataggio.rar
@REM     directory = c:\Casa\LEGGI\PAUS
@REM     file WinRAR


@REM  Opzione -x Estrae file e cartelle con il percorso originale. 
@REM  Opzione -r considera le sottocartelle (processa gli archivi delle sottocartelle)
@REM  Opzione -u Estrai solo i nuovi
@REM  ***************************************************************





@REM 					LE SOSTITUZIONI GENERALI
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

@REM  		Disco e codice Disco
@REM .......................................................
@REM -----> 	K:
@REM -----> 	J:
@REM -----> 	_K
@REM -----> 	_J
@REM ----->	DISCO_LEXAR_K
@REM ----->	DISCO_LEXAR_J
@REM .......................................................


@REM		directory y dove archiviare i dati
@REM .......................................................
@REM ----->	k:\CASA\CDM\FATTURE\
@REM ----->	J:\CASA\CDM\FATTURE\


@REM .......................................................



@REM 		Il file di archivio dei dati
@REM .......................................................
@REM ----->	Fatture_N05_ARCHIVIO_GESTIONI.*
@REM ----->	Fatture_N05_ARCHIVIO_GESTIONI*
@REM ----->     Fatture_N05_ARCHIVIO_GESTIONI.GE614

@REM .......................................................

@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@








@REM //**********************************************************************************************************************
@REM
@REM 				ATTIVITA SEQUENZIALI CON USCITA FINALE - RICORSIONE -
@REM //---------------------------------------------------------------------------------------------------------------------
@REM NOTE : le attivita sequenziali sono caratterizzate da un ciclo unico sulla posizione SELECT, ogni volta che finisce
@REM	   una attività. La condizione if della attività permette l'esecuzione della stessa (esempi ATTIVITA_01) solo nel caso
@REM       in cui la variabile flag dell'attività in corso (es. ATTIVITA_01_i) è impostata a zero. Alla fine dell'operazione
@REM       tale variabile viene impostata a 1 (es. ATTIVITA_01_i=1) ed in questo modo viene garantita al non ricorsività del 
@REM	   ciclo Select, in quanto la condizione else della attività di che trassi attivia solo un messaggio di fine proceedimento
@REM       (Es.ECHO ".........ATTIVITA_01 - SALVATAGGIO_SU_DISCO_LEXAR_K-->ESEGUITA"). Le condizioni if sequenziali verranno
@REM	   eseguite una volta sola garantendo pero alla fine delle stesse dei messaggi di fine attività che permetteno di avere
@REM	   un quadro  completo delle operazioni effettuate. L'ultima attività eseguita è l'uscita dal processo con la procedura
@REM	   ATTIVITA_FINE.

@REM //**********************************************************************************************************************
	

@ECHO OFF
@REM.-- Prepare the Command Processor
@REM SETLOCAL ENABLEEXTENSIONS
@REM SETLOCAL ENABLEDELAYEDEXPANSION


@REM Resetto le variabili
SET /A ATTIVITA_01_i = 0
SET /A ATTIVITA_02_i =0

ECHO.
ECHO =================================================================
ECHO				"Inizio del procedimento"
ECHO.
ECHO "CONTROLLO INIZIALE VARIABILI "%ATTIVITA_01_i%  %ATTIVITA_02_i%
ECHO.
ECHO =================================================================
ECHO.
ECHO.
	

::-------------------------------------------------|*SELECT*
:SELECT
@ECHO OFF



@REM		FUNZIONE DI SCELTA
@REM ==================================================================
@REM Ciclo di gestione delle procedure
@REM  
@REM ==================================================================

@:ATTIVITA_01
	
	
	IF %ATTIVITA_01_i% == 0 (ECHO. 
				 ECHO "---> Eseguo - ATTIVITA_01 - SALVATAGGIO_SU_DISCO_LEXAR_K"  
				 @choice /C:X /N /T:2 /D:X > NUL 
				 GOTO DISCO_LEXAR_K ) ELSE (ECHO.
				 			    ECHO -----------------------------------------------------------------
				 			    ECHO  		Elenco attivita' eseguite                        
				 			    ECHO -----------------------------------------------------------------
				 			    ECHO.
				 			    ECHO ".........ATTIVITA_01 - SALVATAGGIO_SU_DISCO_LEXAR_K-->ESEGUITA") 


@:ATTIVITA_02
	
	IF %ATTIVITA_02_i% == 0 (ECHO. 
				 ECHO "---> Eseguo - ATTIVITA_02 - SALVATAGGIO_SU_DISCO_LEXAR_J"  
				 @choice /C:X /N /T:2 /D:X > NUL 
				 GOTO DISCO_LEXAR_J ) ELSE ( ECHO.
				 			     ECHO ".........ATTIVITA_02 - SALVATAGGIO_SU_DISCO_LEXAR_J-->ESEGUITA") 
				       			  	
	


@:ATTIVITA_FINE

			@REM EXIT /B USCITA DAL BATCH CORRENTE
			@REM ......................................................................
				@REM ->EXIT= Termina il programma CMD.EXE (interprete dei comandi) o lo script batch corrente.
				@REM ->EXIT/B = specifica la terminazione del batch corrente invece di CMD.EXE. 
				@REM 		Se eseguito al di fuori di uno script batch, terminerà CMD.EXE
				@REM ->EXIT exitCode = specifica un numero. Se /B è specificato, imposta
				@REM		ERRORLEVEL a tale numero. Se si termina CMD.EXE,
				@REM		imposta il codice di uscita del processo a tale numero.


				@REM Uscita dal processo con ritardo per effettuare le lettura finale delle attività svolte
				@choice /C:X /N /T:3 /D:X > NUL 
				@EXIT /B

				@REM ----> PAUSE

			@REM EXIT /B USCITA DAL BATCH CORRENTE *** FINE ***
			@REM ......................................................................



@REM RITORNO AL MENU ATTIVO
@REM ==================================================================

	GOTO SELECT
@REM ==================================================================


@REM //---------------------------------------------------------------------------------------------------------------------
@REM //**********************************************************************************************************************




@REM 				- ATTIVITA_01 - SALVATAGGIO_SU_DISCO_LEXAR_K 
@REM //**********************************************************************************************************************
	
@:DISCO_LEXAR_K
		

		@REM IF SALVATAGGI SU DISCO_LEXAR_K	
		@REM=================================================================================================
		@REM NOTE : Se esiste il disco lexar K: effettua il salvataggio altrimenti passa a successivo
		@REM	    controllo if.

		@DIR K:\
		@REM Se  non esiste il disco VAI AD ERRORE.
		IF ERRORLEVEL 1 (GOTO ERR_DISCO_LEXAR_K)
		
			CLS			
		
			@REM 01) If exist K: = SE ESISTE IL FILE.RAR AGGIORNA QUELLO ESISTENTE
			@REM --------------------------------------------------------------------------------------
			@If exist K:\CASA\CDM\FATTURE\Fatture_N05_ARCHIVIO_GESTIONI*.* (
				
				echo.
				echo.
				echo."=================================================================="
				echo."			01_MSG_AGGIORNAMENTO_SU_DISCO_LEXAR_K"
				echo.
				echo."---------------> AGGIORNAMENTO SOLO I NUOVI FILE SU  DISCO_LEXAR_K:"			
				echo.
				echo.
				echo."=================================================================="

				 @REM//SALVA SUL DISCO LEXAR_K SOLO AGGIORNAMENTI
				 xcopy Fatture_N05_ARCHIVIO_GESTIONI*.* k:\CASA\CDM\FATTURE\ /d/y
				 xcopy Fatture_N05_ARCHIVIO_GESTIONI.GE614 k:\CASA\CDM\FATTURE\ /d/y
				 

				
					@REM Ritardo per 3 secondi
					@choice /C:X /N /T:3 /D:X > NUL


		
				@REM ----> PAUSE
				 
				 
				 )
			@REM 01) If exist K: = SE ESISTE IL FILE.RAR AGGIORNA QUELLO ESISTENTE  *** FINE ***
			@REM --------------------------------------------------------------------------------------
			
			

			@REM 02) If NOT exist K: = SE NOT IL FILE .RAR COPIA
			@REM --------------------------------------------------------------------------------------
			@If NOT exist K:\CASA\CDM\FATTURE\Fatture_N05_ARCHIVIO_GESTIONI*.* (

				echo.
				echo.
				echo."=================================================================="
				echo."			02_MSG_SALVATAGGIO_DISCO_LEXAR_K"
				echo.
				echo."---------------> SALVATAGGIO DEL FILE (Fatture_N05_ARCHIVIO_GESTIONI*.*) SU DISCO_LEXAR_K:"			
				echo.
				echo.
				echo."=================================================================="

				 @REM//SALVA SUL DISCO LEXAR_K SOLO AGGIORNAMENTI
				 xcopy Fatture_N05_ARCHIVIO_GESTIONI*.* k:\CASA\CDM\FATTURE\ /d/y
				 xcopy Fatture_N05_ARCHIVIO_GESTIONI.GE614 k:\CASA\CDM\FATTURE\ /d/y


					 @REM VISUALIZZAZIONE DOPPIA FINESTRA CON RITARDO DI 2 SECONDI						
					 @REM per far uscire la finestra alla fine del processo utilizzare il seguente comando ^& exit
					  START "CONTROLLO_SALVATAGGIO" /D k:\CASA\CDM\FATTURE\  DIR /W *.*  ^& @choice /C:X /N /T:2 /D:X > NUL  ^& exit

					@REM Ritardo per 3 secondi
					@choice /C:X /N /T:3 /D:X > NUL		


				@REM ----> PAUSE
								 
				 )
			@REM 02) If NOT exist K: = SE NOT IL FILE .RAR COPIA *** FINE ***
			@REM --------------------------------------------------------------------------------------
	
			


		@REM IF SALVATAGGI SU DISCO ESTERNO LEXAR_K	*** FINE ***
		@REM=================================================================================================

SET /A ATTIVITA_01_I= 1

GOTO SELECT



@:ERR_DISCO_LEXAR_K

	echo.
	echo."=================================================================="
	echo."			MSG - ERR_DISCO_LEXAR_K "
	echo.
	echo."ATTENZIONE '!!!' NON ESISTE DISCO LEXAR K: - USCITA - "			
	echo."=================================================================="
	
	@REM Ritardo per 3 secondi
	@choice /C:X /N /T:3 /D:X > NUL


	@REM RESTITUISCE AL CHIAMANTE
	


@REM 				- ATTIVITA_01 - SALVATAGGIO_SU_DISCO_LEXAR_K  *** FINE ***
@REM //**********************************************************************************************************************





@REM 				- ATTIVITA_02 - SALVATAGGIO_SU_DISCO_LEXAR_J 
@REM //**********************************************************************************************************************
	
@:DISCO_LEXAR_J
		

		@REM IF SALVATAGGI SU DISCO_LEXAR_J	
		@REM=================================================================================================
		@REM NOTE : Se esiste il disco lexar J: effettua il salvataggio altrimenti passa a successivo
		@REM	    controllo if.

		@DIR J:\
		@REM Se  non esiste il disco VAI AD ERRORE.
		IF ERRORLEVEL 1 (GOTO ERR_DISCO_LEXAR_J)
		
			CLS			
		
			@REM 01) If exist J: = SE ESISTE IL FILE.RAR AGGIORNA QUELLO ESISTENTE
			@REM --------------------------------------------------------------------------------------
			@If exist J:\CASA\CDM\FATTURE\Fatture_N05_ARCHIVIO_GESTIONI*.* (
				
				echo.
				echo.
				echo."=================================================================="
				echo."			02_MSG_AGGIORNAMENTO_SU_DISCO_LEXAR_J"
				echo.
				echo."---------------> AGGIORNAMENTO SOLO I NUOVI FILE SU  DISCO_LEXAR_J:"			
				echo.
				echo.
				echo."=================================================================="

				 @REM//SALVA SUL DISCO LEXAR_J SOLO AGGIORNAMENTI
				 xcopy Fatture_N05_ARCHIVIO_GESTIONI*.* J:\CASA\CDM\FATTURE\ /d/y
				 xcopy Fatture_N05_ARCHIVIO_GESTIONI.GE614 J:\CASA\CDM\FATTURE\ /d/y
				 

				
					@REM Ritardo per 3 secondi
					@choice /C:X /N /T:3 /D:X > NUL


		
				@REM ----> PAUSE
				 
				 
				 )
			@REM 01) If exist J: = SE ESISTE IL FILE.RAR AGGIORNA QUELLO ESISTENTE  *** FINE ***
			@REM --------------------------------------------------------------------------------------
			
			

			@REM 02) If NOT exist J: = SE NOT IL FILE .RAR COPIA
			@REM --------------------------------------------------------------------------------------
			@If NOT exist J:\CASA\CDM\FATTURE\Fatture_N05_ARCHIVIO_GESTIONI*.* (

				echo.
				echo.
				echo."=================================================================="
				echo."			02_MSG_SALVATAGGIO_DISCO_LEXAR_J"
				echo.
				echo."---------------> SALVATAGGIO DEL FILE (Fatture_N05_ARCHIVIO_GESTIONI*.*) SU DISCO_LEXAR_J:"			
				echo.
				echo.
				echo."=================================================================="

				 @REM//SALVA SUL DISCO LEXAR_J SOLO AGGIORNAMENTI
				 xcopy Fatture_N05_ARCHIVIO_GESTIONI*.* J:\CASA\CDM\FATTURE\ /d/y
				 xcopy Fatture_N05_ARCHIVIO_GESTIONI.GE614 J:\CASA\CDM\FATTURE\ /d/y


					 @REM VISUALIZZAZIONE DOPPIA FINESTRA CON RITARDO DI 2 SECONDI						
					 @REM per far uscire la finestra alla fine del processo utilizzare il seguente comando ^& exit
					  START "CONTROLLO_SALVATAGGIO" /D J:\CASA\CDM\FATTURE\  DIR /W *.*  ^& @choice /C:X /N /T:2 /D:X > NUL  ^& exit

					@REM Ritardo per 3 secondi
					@choice /C:X /N /T:3 /D:X > NUL		


				@REM ----> PAUSE
								 
				 )
			@REM 02) If NOT exist J: = SE NOT IL FILE .RAR COPIA *** FINE ***
			@REM --------------------------------------------------------------------------------------
	
		

		@REM IF SALVATAGGI SU DISCO ESTERNO LEXAR_J	*** FINE ***
		@REM=================================================================================================


SET /A ATTIVITA_02_I = 1

GOTO SELECT


@:ERR_DISCO_LEXAR_J

	echo.
	echo."=================================================================="
	echo."			MSG - ERR_DISCO_LEXAR_J "
	echo.
	echo."ATTENZIONE '!!!' NON ESISTE DISCO LEXAR J: - USCITA - "			
	echo."=================================================================="
	
	@REM Ritardo per 3 secondi
	@choice /C:X /N /T:3 /D:X > NUL


	@REM RESTITUISCE AL CHIAMANTE
	


@REM 				- ATTIVITA_02 - SALVATAGGIO_SU_DISCO_LEXAR_J 	*** FINE ***
@REM //**********************************************************************************************************************
