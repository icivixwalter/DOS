@REM 					LE SOSTITUZIONI GENERALI
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

@REM  		Disco e codice Disco
@REM .......................................................
@REM -----> 	C:
@REM -----> 	_C
@REM ----->	DISCO_LEXAR_C
@REM .......................................................


@REM		directory y dove archiviare i dati
@REM .......................................................
@REM ----->	C:\CASA\CDM\FATTURE\
@REM .......................................................



@REM 		Il file di archivio dei dati
@REM .......................................................
@REM ----->	Nome_file.*
@REM ----->	Nome_file*
@REM ----->     Nome_file.GE614

@REM .......................................................

@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@





@ECHO OFF


@REM //CICLO_PROCEDURE
@REM //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<//

@REM Resetto le variabili
SET /A DISCO_E_i = 0
SET /A DISCO_F_i = 0

SET /A DISCO_K_i = 0
SET /A DISCO_J_i =0

@REM  variabile che imposta tutti i ritardi in secondi
SET /A Variabile_TEMPO_i =2


:SELECT
::-------------------------------------------------|*SELECT*

@REM controllo DISCO_E_i
IF %DISCO_E_i% == 0 (ECHO. 
		     ECHO "---> Eseguo - CONTROLLO_DISCO_E"  
	             @choice /C:X /N /T:%Variabile_TEMPO_i% /D:X > NUL
		     GOTO DISCO_E ) ELSE (
		     	    ECHO.
			    ECHO -----------------------------------------------------------------
			    ECHO  		Elenco attivita' eseguite                        
			    ECHO -----------------------------------------------------------------
			    ECHO.
			    ECHO ".........ATTIVITA_01 - CONTROLLO_DISCO_E-->ESEGUITA"
			    
		    
			    @choice /C:X /N /T:%Variabile_TEMPO_i% /D:X > NUL 
			    
			    
			    )



@REM controllo DISCO_F_i
IF %DISCO_F_i% == 0 (ECHO. 
		     ECHO "---> Eseguo - CONTROLLO_DISCO_F"  
	             @choice /C:X /N /T:%Variabile_TEMPO_i% /D:X > NUL
		     GOTO DISCO_F ) ELSE (
		     	    ECHO.
			    ECHO -----------------------------------------------------------------
			    ECHO  		Elenco attivita' eseguite                        
			    ECHO -----------------------------------------------------------------
			    ECHO.
			    ECHO ".........ATTIVITA_01 - CONTROLLO_DISCO_F-->ESEGUITA"
			    
		    
			    @choice /C:X /N /T:%Variabile_TEMPO_i% /D:X > NUL 
			    
			    
			    )
			    



@REM controllo DISCO_K_i
IF %DISCO_K_i% == 0 (ECHO. 
		     ECHO "---> Eseguo - CONTROLLO_DISCO_K"  
	             @choice /C:X /N /T:%Variabile_TEMPO_i% /D:X > NUL
		     GOTO DISCO_K ) ELSE (
		     	    ECHO.
			    ECHO -----------------------------------------------------------------
			    ECHO  		Elenco attivita' eseguite                        
			    ECHO -----------------------------------------------------------------
			    ECHO.
			    ECHO ".........ATTIVITA_01 - CONTROLLO_DISCO_K-->ESEGUITA"
			    
			    
			    
			    @choice /C:X /N /T:%Variabile_TEMPO_i% /D:X > NUL
			    )
			    


EXIT


@REM //CICLO_PROCEDURE				*** FINE ***
@REM //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<//




@REM //CONTROLLO_ESISTENZA_DISCO_E:
@REM //==================================================================================================================

:DISCO_E

	@rem CONTROLLO ESISTENZA DRIVE ESTERNO
	@rem .................................................
		
		@REM imposto variabile ricerca disco effettuata = 1
		SET /A DISCO_E_i=1

		cmd /F /C DIR E:\|FIND "E:"> NUL
		IF ERRORLEVEL 1 (ECHO.
				ECHO "Drive E: non e' attivo"
				ECHO. 
				ECHO."<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
				ECHO.	
				ECHO. ERRORE Drive E: NON E' ATTIVATO	
				ECHO. EXIT DALLA PROCEDURA     	
				ECHO.
				ECHO."<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
				GOTO SELECT
				)
 		
 		IF NOT ERRORLEVEL 1 (ECHO."************************************************"
 				     ECHO.	
 				     ECHO. "Drive E: E' PRONTO"
 				     ECHO. "passaggio alla procedura -> :Salva_DISCO_E      "
 				     ECHO.
 				     ECHO."************************************************"
 				     
 				     
					
					@REM ritorno alla routine iniziale
					GOTO SELECT

 				     )
	@rem .................................................


:Salva_DISCO_E
	
	ECHO.
	ECHO "================================================="
	ECHO.
	ECHO....... procedura  Salva_DISCO_E
	ECHO.
	ECHO.
	ECHO "================================================="


GOTO SELECT


@REM //CONTROLLO_ESISTENZA_DISCO_E:		*** FINE ***
@REM //==================================================================================================================
	







@REM //CONTROLLO_ESISTENZA_DISCO_F:
@REM //==================================================================================================================

:DISCO_F

	@rem CONTROLLO ESISTENZA DRIVE ESTERNO
	@rem .................................................
		
		@REM imposto variabile ricerca disco effettuata = 1
		SET /A DISCO_F_i=1

		cmd /F /C DIR F:\|FIND "F:"> NUL
		IF ERRORLEVEL 1 (ECHO.
				ECHO "Drive F: non e' attivo"
				ECHO. 
				ECHO."<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
				ECHO.	
				ECHO. ERRORE Drive F: NON E' ATTIVATO	
				ECHO. EXIT DALLA PROCEDURA     	
				ECHO.
				ECHO."<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
				GOTO SELECT
				)
 		
 		IF NOT ERRORLEVEL 1 (ECHO."************************************************"
 				     ECHO.	
 				     ECHO. "Drive F: E' PRONTO"
 				     ECHO. "passaggio alla procedura -> :Salva_DISCO_F      "
 				     ECHO.
 				     ECHO."************************************************"
 				     
 				     
					
					@REM ritorno alla routine iniziale
					GOTO SELECT

 				     )
	@rem .................................................


:Salva_DISCO_F
	
	ECHO.
	ECHO "================================================="
	ECHO.
	ECHO....... procedura  Salva_DISCO_F
	ECHO.
	ECHO.
	ECHO "================================================="


GOTO SELECT


@REM //CONTROLLO_ESISTENZA_DISCO_F:		*** FINE ***
@REM //==================================================================================================================
	

@REM //CONTROLLO_ESISTENZA_DISCO_K:
@REM //==================================================================================================================

:DISCO_K

	@rem CONTROLLO ESISTENZA DRIVE ESTERNO
	@rem .................................................
		
		@REM imposto variabile ricerca disco effettuata = 1
		SET /A DISCO_K_i=1

		cmd /F /C DIR k:\|FIND "k:"> NUL
		IF ERRORLEVEL 1 (ECHO.
				 ECHO "Drive k: non e' attivo"
				 
				 )
				 
				(ECHO."<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
				ECHO.	
				ECHO. ERRORE Drive k: NON E' ATTIVATO	
				ECHO. EXIT DALLA PROCEDURA     	
				ECHO.
				ECHO."<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
				
										
				GOTO SELECT
				)
 		
 		IF NOT ERRORLEVEL 1 (ECHO."************************************************"
 				     ECHO.	
 				     ECHO. "Drive k: E' PRONTO"
 				     ECHO. "passaggio alla procedura -> :Salva_DISCO_K     "
 				     ECHO.
 				     ECHO."************************************************"
 					
 					@REM imposto a 2 disco trovato
 					SET /A DISCO_K_i=2
 					@REM ritorno alla routine iniziale
 					GOTO SELECT
 				     )
	@rem .................................................


:Salva_DISCO_K
	
	ECHO.
	ECHO "================================================="
	ECHO.
	ECHO....... procedura  Salva_DISCO_K
	ECHO.
	ECHO.
	ECHO "================================================="


GOTO SELECT


@REM //CONTROLLO_ESISTENZA_DISCO_K:		*** FINE ***
@REM //==================================================================================================================
	





GOTO SELECT

@REM //CICLO_PROCEDURE				*** FINE ***
@REM //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<//



