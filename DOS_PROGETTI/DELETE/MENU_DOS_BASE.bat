:-----------------------------------MENU_DI_GESTIONI
	goto MenuDOS
	 MENU SELECT_MENU 
	Note
		CANCELLAZIONE DEI FILE @LOG DI WINDOWS, e le ricerche vengono
		divise in 2 sezioni secondo l'esempio di Ccleaner
			APPLICAZIONI  	= con il codice APPL
			WINDOWS  		= con il codice WIN
		le operazioni sono:


		Nei menu se non esiste la routine il sistema scrive un file NULL
		Nei menu se il numero non eiste scelta errata 
		E = esci

		@Cleaner_(menu di cancellazione @file @di @sistema)


	:MenuDOS

				




	:-----------------------------------VARIABILI GLOBALI
						@REM impostazioni variabili globali, per i secondo cambiare questa variabile
						@REM globale:    ----> /T:1
						
		@ECHO OFF
		CLS && CLS

	:-------------------------------------------------|*SELECT_MENU*
	:SELECT_MENU
			CLS && CLS



		ECHO.			file attivo: DELETE_01_FILE_LOG_WINDOWS.bat
			ECHO.//==============================================================================//  
			ECHO.			MENU PRINCIPALE - DELETE  
			ECHO.			@dos@menu_(costruzione dei @menu in @dos, @MASCHERA @DEI @MENU)_@MENU@DOS 
			ECHO 
			ECHO TITLE :IL MENU PRINCIPALE PER LE CANCELLAZIONI DI SISTEMA
			ECHO.
			ECHO.//==============================================================================//  
			ECHO				SELEZIONE MENU PRINCIPALE
			ECHO.
			ECHO [0] @GESTIONE_LA_QUERCIA_ConSottoMenu 
			ECHO.    
			ECHO				CANCELLA DATI DI SISTEMA
			ECHO [1] MENU_APPL_01_CANCELLA
			ECHO [3] MENU_SALVATAGGI_SU_DISCHI_ESTERNI
			ECHO [6] MENU_ESTRAZIONI_DATI
			ECHO.
			ECHO [6] Estrazione anno corrente
			ECHO [9] da Utilizzare.
			ECHO [10] Utile01
			ECHO.
			ECHO //--------------------------------------------------------------// 
			ECHO.
			ECHO [x] @EXIT.00 uscita procedura
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

			IF "%s%" equ "0" (GOTO @GESTIONE_LA_QUERCIA_ConSottoMenu)

			IF "%s%" equ "1" (GOTO APPL_01_CANCELLA)
			IF "%s%" equ "3" (GOTO MENU_SALVATAGGI_SU_DISCHI_ESTERNI)
			IF "%s%" equ "6" (CLS
					  GOTO SOTTO_MENU_06_ESTRAZIONI)
			IF "%s%" equ "8" (GOTO SHUTDOWNDATASTAGE)
			IF "%s%" equ "9" (GOTO DA_UTILIZZARE)
			IF "%s%" equ "10" (echo "comando da attivare")
			IF "%s%" equ "n" (GOTO NUOVASHELL)

				@REM ERRATA

			@REM 		USCITA @EXIT.01
			@REM ------------------------------------

			IF "%s%" equ "x" (GOTO EXIT)
			IF "%s%" equ "X" (GOTO EXIT)


			@REM ==================================================================

		@REM SELEZIONE ERRATA - RITARDO ESECUZIONE + MESSAGGIO + RITONO MENU
			@REM ==================================================================
			:ERRORE
				ECHO selezione errata!
				@REM Ritardo per 0 secondi
				@choice /C:X /N /T:1 /D:X > null
			

					@REM IMPOSTO LA VARIABILE DI SCELTA E RITORNO AL MENU ATTIVO
					@REM ritorno al sotto Menu impostando zero la variabile per evitare di 
					@REM ripetere lo stesso comando, in quanto rimane memorizzato in memoria,
					@REM l'ultima opzione scelta.

					s=zero
					cls
				@ECHO. ritorno al menu principale
				
				GOTO SELECT_MENU
			@REM ==================================================================

		

		:-------------------------------------------------|*@GESTIONE_LA_QUERCIA_ConSottoMenu*
		:@GESTIONE_LA_QUERCIA_ConSottoMenu

				CLS

		@ECHO. SOTTO_MENU LA_QUERCIA_@GESTIONE_LA_QUERCIA_ConSottoMenu
			ECHO.//==============================================================================//  
			ECHO SOTTO MENU 01 - @sottoMenu_(questo è il @sotto @menu della quercia)
			ECHO TODO: sotto menu @da @utilizzare @??
			ECHO.
			ECHO.//==============================================================================//  

			ECHO.
			ECHO ..........................................................................
			ECHO.

			ECHO [1] VISUALIZZA_DATI			(SottoMenu_01_01)
			ECHO [2] CONTROLLA_DATI???			(SottoMenu_01_02)
			ECHO [e] esci CON RITORNO AL MENU PRINCIPALE

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

		@ECHO. CONTROLLO IF SCELTA + USCITA  @controllo@sotto@menu_(le if di controllo sotto menu)
			@REM ==================================================================

				IF "%s%" equ "0" (GOTO @GESTIONE_LA_QUERCIA_ConSottoMenu)
				
				@REM 		RITORNO AL MENU PRINCIPALE
				@REM ------------------------------------
				IF "%s%" equ "e" (GOTO)
				IF "%s%" equ "E" (GOTO SELECT_MENU)
				
			@REM ==================================================================

		@ECHO. SELEZIONE ERRATA - RITARDO ESECUZIONE + MESSAGGIO + RITONO MENU
			@REM ==================================================================
			:ERRORE
				ECHO selezione errata!
				@REM Ritardo per 0 secondi
				@choice /C:X /N /T:1 /D:X > null
			

					@REM IMPOSTO LA VARIABILE DI SCELTA E RITORNO AL MENU ATTIVO
					@REM ritorno al sotto Menu impostando zero la variabile per evitare di 
					@REM ripetere lo stesso comando, in quanto rimane memorizzato in memoria,
					@REM l'ultima opzione scelta.

					s=zero
					cls
				@ECHO. ritorno al menu principale
				
				GOTO GESTIONE_LA_QUERCIA_ConSottoMenu
			@REM ==================================================================

				




:------------------------------------------------DELETE_DI_SISTEMA_Ccleaner
	goto NoteWindows
		 DELETE_LOG_WINDIWOS
		Note
			esempio e comandi dos di cancellazione dei file log di windwos, e le ricerche vengono
			divise in 2 sezioni secondo l'esempio di Ccleaner
				APPLICAZIONI  	= con il codice APPL
				WINDOWS  		= con il codice WIN
			le operazioni sono:

			01 = set la path di windows file log

		:NoteWindows

			

			:-----------------------------------VARIABILI GLOBALI
					@REM impostazioni variabili globali, per i secondo cambiare questa variabile
					@REM globale:    ----> /T:1
			
			

					
			:-----------------------------------APPL_01_CANCELLA E DIR FILE .log di windows, prima visualizzo
				:APPL_01_CANCELLA
					CLS
					@REM @cancella@log_(cancella @FILE @LOG di windws @menu@1.1 )_@APPL_01
					@SET APPL_01_MESSAGGIO_S="FILE CASH DI INTERNET I FILE LOG, CODICE -->"
					@SET APPL_01_PATH_S=c:\Users\icivi\AppData\Local\Microsoft\Windows\WebCache\
					@SET APPL_01_FILE_S=V0*.log
					@SET APPL_01_CODICE_S=APPL_01

					@ECHO //=====================================================================//
					@ECHO.
					@ECHO.	 %APPL_01_MESSAGGIO_S%%APPL_01_CODICE_S%
					
					@ECHO.
					@ECHO //=====================================================================//

					
					DIR %APPL_01_PATH_S%%APPL_01_FILE_S%

					@REM Ritardo per /T:8 secondi
					@choice /C:X /N /T:8 /D:X > NUL

					@REM ritorno al menu principale
						GOTO SELECT_MENU
				
			:-----------------------------------APPL_02_WINDOS FILE RECENTI DIR E DELETE 
				@REM @cancella@log_(cancella @FILE @RECENTI di windws che soni .LNK )_@APPL_02
				@SET APPL_02_MESSAGGIO_S="FILE RECENTI .LNK, CODICE -->"
				@SET APPL_02_PATH_S=C:\Users\icivi\AppData\Roaming\Microsoft\Windows\Recent\
				@SET APPL_02_FILE_S=.lnk
				@SET APPL_02_CODICE_S=APPL_02

				@ECHO //=====================================================================//
				@ECHO.
				@ECHO.	 %APPL_02_MESSAGGIO_S%%APPL_02_CODICE_S%
				
				@ECHO.
				@ECHO //=====================================================================//

				
				DIR %APPL_02_PATH_S%%APPL_02_FILE_S%

				@REM Ritardo per /T:8 secondi
				@rem @choice /C:X /N /T:8 /D:X > NUL
				@choice /C:X /N /T:8 /D:X >0

			:-----------------------------------APPL_03_WINDOS SISTEMA E UTILIZZO DATI DI RETE FILE  .SRU
				@REM @cancella@log_(cancella @FILE @SRU )_@APPL_03
				@SET APPL_03_MESSAGGIO_S="FILE WINDOWS DI SISTEMA ED DI RETE i .SRU, CODICE -->"
				@SET APPL_03_PATH_S=C:\Windows\System32\sru\
				@SET APPL_03FILE_S=SRU*.*
				@SET APPL_03_CODICE_S=APPL_03

				@ECHO //=====================================================================//
				@ECHO.
				@ECHO.	 %APPL_03_MESSAGGIO_S%%APPL_01_CODICE_S%
				
				@ECHO.
				@ECHO //=====================================================================//

				
				DIR %APPL_03_PATH_S%%APPL_03_FILE_S%

				


				@ECHO  @Ciclo@for_(per attesa di 8 secondi con un ciclo for )
				@ECHO //=====================================================================//
					@REM sospeso e sostituito con ciclo form @choice /C:X /N /T:8 /D:X > NUL

 					
					set "countdown=8"

					for /l %%i in (%countdown%,-1,1) do (
					    cls
					    echo Attendere... (%%i secondi rimanenti)
					    timeout /t 1 > NUL
					)

					echo Tempo scaduto.
					@REM  todo : una pausa attivata controllare?? 
					pause
				@ECHO //=====================================================================//

					

				


			:-----------------------------------??**APPL_04_FIREFOX COOKIE

				@SET APPL_02_PATH_S=C:\Users\icivi\AppData\Roaming\Mozilla\Firefox\Profiles\u06k90v4.default-release\storage\default\
					@rem TODO: da finire la cancella zione di fire fox
			
			:-----------------------------------APPL_05_SISTEMA CASH DI WINDEOS

							@REM @cancella@log_(cancella @SISTEMA @CASH DI WINDOWS )_@APPL_05
				@SET APPL_05_MESSAGGIO_S="SISTEMA CASH DI WINDOWS, CODICE -->"
				@SET APPL_05_PATH_S=C:\Users\icivi\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content
				@SET APPL_05_FILE_S=*.*
				@SET APPL_05_CODICE_S=APPL_05

				@ECHO //=====================================================================//
				@ECHO.
				@ECHO.	 %APPL_05_MESSAGGIO_S%%APPL_05_CODICE_S%
				
				@ECHO.
				@ECHO //=====================================================================//

				
				DIR %APPL_05_PATH_S%%APPL_05_FILE_S%

				@REM Ritardo per /T:8 secondi
				@choice /C:X /N /T:8 /D:X > NUL

			:-----------------------------------APPL_21_CASH INTERNET
			
							@REM @cancella@log_(cancella @SISTEMA @CASH DI WINDOWS attenzione si trova in domed!! )_@APPL_21
				@SET APPL_21_MESSAGGIO_S="FIREFOX CASH DI INTERNET, CODICE -->"
				@SET APPL_21_PATH_S=c:\Users\icivi\AppData\Local\Mozilla\Firefox\Profiles\u06k90v4.default-release\cache2\doomed\
				@SET APPL_21_FILE_S=*.*
				@SET APPL_21_CODICE_S=APPL_21

				@ECHO //=====================================================================//
				@ECHO.
				@ECHO.	 %APPL_21_MESSAGGIO_S%%APPL_21_CODICE_S%
				
				@ECHO.
				@ECHO //=====================================================================//

				
				DIR %APPL_21_PATH_S%%APPL_21_FILE_S%

				@REM Ritardo per /T:8 secondi
				@choice /C:X /N /T:8 /D:X > NUL

					
		@REM ============================= II PARTE LE CANCELLAZIONI ===================================================

			:-----------------------------------DELETE TUTTE LE ESECUZIONI
				@REM @cancellazioni_(eseguo tutte le cancellazioni collettive)

					
				@ECHO //=====================================================================//
				@ECHO.
				@ECHO. @CANCELLO_01_(cancello la procedura dell'applicazione 01 +02)		
				@ECHO.	 CANCELLO TUTTI I %APPL_01_MESSAGGIO_S%%APPL_01_CODICE_S%
							DEL %APPL_01_PATH_S%%APPL_01_FILE_S%
		
				@ECHO.	 CANCELLO TUTTI I %APPL_02_MESSAGGIO_S%%APPL_02_CODICE_S%
				
							DEL %APPL_02_PATH_S%%APPL_02_FILE_S%
				@ECHO.
				@ECHO //=====================================================================//


				@REM Ritardo per /T:8 secondi
				@choice /C:X /N /T:8 /D:X > NUL


