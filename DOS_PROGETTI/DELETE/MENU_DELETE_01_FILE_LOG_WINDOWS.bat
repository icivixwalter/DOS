	
:-----------------------------------MENU_DI_GESTIONI_CANCELLI_CCLEANER
	goto MenuDOS
	 MENU SELECT_MENU 
	Note
		MENU 

	:MenuDOS

				




	:-----------------------------------VARIABILI GLOBALI
						@REM impostazioni variabili globali, per i secondo cambiare questa variabile
						@REM globale:    ----> /T:1
						
		@ECHO OFF
		CLS && CLS

	:-------------------------------------------------|*SELECT_MENU*
		:SELECT_MENU
		CLS && CLS




		ECHO.			MENU_DELETE_01_FILE_LOG_WINDOWS.bat 
		ECHO.//==============================================================================//  
		ECHO.			MENU PRINCIPALE - DELETE  
		ECHO.			@dos@menu_(costruzione dei @menu in @dos, @MASCHERA @DEI @MENU)_@MENU@DOS 
		ECHO 
		ECHO TITLE :IL MENU PRINCIPALE PER LE CANCELLAZIONI DI SISTEMA
		ECHO.
		ECHO.//==============================================================================//  
		ECHO				SELEZIONE MENU
		ECHO.
		ECHO [0] GESTIONE_LA_QUERCIA
		ECHO.
		ECHO				SALVATAGGI_INTERNI+DISCHI_ESTERNI+ESTRAZIONI
		ECHO [1] MENU_SALVATAGGI_SU_DISCO_C
		ECHO [3] MENU_SALVATAGGI_SU_DISCHI_ESTERNI
		ECHO [6] MENU_ESTRAZIONI_DATI
		ECHO.
		ECHO [6] Estrazione anno corrente
		ECHO [9] da Utilizzare.
		ECHO [10] Utile01
		ECHO.
		ECHO //--------------------------------------------------------------// 
		ECHO.
		ECHO [x] uscita EXIT
		ECHO ..........................................................................
		ECHO.


		@REM		FUNZIONE DI SCELTA  @scelta@menu
		@REM ==================================================================
		@REM per evitare che rimanga impostato l'ultimo valore viene impostato
		@REM a zero, cioè un valore errato e quindi rifiutato in caso di accettazione con solo enter. 
		SET s=0
		SET /p s=Inserisci i Valori? 1-10/e:
		@REM ==================================================================


		@REM CONTROLLO IF SCELTA + USCITA
		@REM ==================================================================

		IF "%s%" equ "0" (GOTO GESTIONE_LA_QUERCIA)

		IF "%s%" equ "1" (GOTO ERRORE)
		IF "%s%" equ "3" (GOTO MENU_SALVATAGGI_SU_DISCHI_ESTERNI)
		IF "%s%" equ "6" (CLS
				  GOTO SOTTO_MENU_06_ESTRAZIONI)
		IF "%s%" equ "8" (GOTO SHUTDOWNDATASTAGE)
		IF "%s%" equ "9" (GOTO DA_UTILIZZARE)
		IF "%s%" equ "10" (echo "comando da attivare")
		IF "%s%" equ "n" (GOTO NUOVASHELL)

			@REM ERRATA

		@REM 		USCITA
		@REM ------------------------------------

		IF "%s%" equ "x" (GOTO EXIT)
		IF "%s%" equ "X" (GOTO EXIT)


		@REM ==================================================================

		@REM SELEZIONE ERRATA - RITARDO ESECUZIONE + MESSAGGIO
		@REM ==================================================================
		:ERRORE
		ECHO selezione errata!
		@REM Ritardo per 0 secondi
		@choice /C:X /N /T:1 /D:X > null
		@REM ==================================================================


		@REM IMPOSTO LA VARIABILE DI SCELTA E RITORNO AL MENU ATTIVO
		@REM ==================================================================
		@REM ritorno al sotto Menu impostando zero la variabile per evitare di 
		@REM ripetere lo stesso comando, in quanto rimane memorizzato in memoria,
		@REM l'ultima opzione scelta.

		s=zero
		cls

		GOTO SELECT_MENU
		@REM ==================================================================

		:-------------------------------------------------|*GESTIONE_LA_QUERCIA*
		:GESTIONE_LA_QUERCIA

			CLS

			ECHO.//==============================================================================//  
			ECHO.			SOTTO_MENU LA_QUERCIA_GESTIONE_LA_QUERCIA
			ECHO SOTTO MENU 01
			ECHO Gestione Disco C nella directory c:\casa\LaQuercia
			ECHO.
			ECHO.//==============================================================================//  

			ECHO.
			ECHO ..........................................................................
			ECHO.

			ECHO [1] VISUALIZZA_DATI			(SottoMenu_01_01)
			ECHO [2] CONTROLLA_DATI???			(SottoMenu_01_02)
			ECHO [e] esci

			ECHO.
			ECHO ..........................................................................
			ECHO.


		@REM		FUNZIONE DI SCELTA  @scelta@menu
			@REM ==================================================================
			@REM per evitare che rimanga impostato l'ultimo valore viene impostato
			@REM a zero, cioè un valore errato e quindi rifiutato in caso di accettazione con solo enter. 
				SET s=0
				SET /p s=Inserisci i Valori? 1-10/e:
			@REM ==================================================================


			@REM CONTROLLO IF SCELTA + USCITA
			@REM ==================================================================

				IF "%s%" equ "0" (GOTO GESTIONE_LA_QUERCIA)
				
					IF "%s%" equ "11" (GOTO SALVATAGGI_SU_DISCO_C)
				IF "%s%" equ "23" (GOTO MENU_SALVATAGGI_SU_DISCHI_ESTERNI)
				IF "%s%" equ "66" (CLS
						  GOTO SOTTO_MENU_06_ESTRAZIONI)
				IF "%s%" equ "88" (GOTO SHUTDOWNDATASTAGE)
				IF "%s%" equ "99" (GOTO DA_UTILIZZARE)
				IF "%s%" equ "110" (echo "comando da attivare")
				IF "%s%" equ "n" (GOTO NUOVASHELL)
				
				@REM 		USCITA
				@REM ------------------------------------
				IF "%s%" equ "e" (GOTO EXIT)
				IF "%s%" equ "E" (GOTO EXIT)
				
			@REM ==================================================================
			@REM SELEZIONE ERRATA - RITARDO ESECUZIONE + MESSAGGIO
			@REM ==================================================================

				ECHO selezione errata!
				@REM Ritardo per 0 secondi
				@choice /C:X /N /T:1 /D:X > null
			@REM ==================================================================


			@REM IMPOSTO LA VARIABILE DI SCELTA E RITORNO AL MENU ATTIVO
			@REM ==================================================================
			@REM ritorno al sotto Menu impostando zero la variabile per evitare di 
			@REM ripetere lo stesso comando, in quanto rimane memorizzato in memoria,
			@REM l'ultima opzione scelta.

				s=zero
				cls

				GOTO SELECT_MENU
			@REM ==================================================================

