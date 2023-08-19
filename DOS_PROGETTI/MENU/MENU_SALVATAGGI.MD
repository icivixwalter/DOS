MENU_SALVATAGGI.MD

MENU_SALVATAGGI_DISCO_C_DISCO_ESTERO
	NOTE
		questa è una @maschera di menu per il salvataggi.

		@menu@salvataggi_(menu per il salvattaggio esterno o interno in @DOS)

	BAT

		@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
		@REM 					VARIABILI_DA_CAMBIARE

		@REM  		Disco e codice Disco
		@REM .......................................................
		@REM --------------------------->: C:
		@REM --------------------------->: _C
		@REM .......................................................

		@REM  		Indicazione menu
		@REM .......................................................
		@REM --------------------------->: IL MENU PRINCIPALE DEL CONDOMINIO LA QUERCIA
		@REM --------------------------->: LA QUERCIA
		@REM --------------------------->: LA_QUERCIA
		@REM .......................................................


		@REM		directory y dove archiviare i dati
		@REM .......................................................
		@REM --------------------------->: c:\Casa\CDM\LaQuercia\
		@REM .......................................................


		@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
		@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



		@rem //MENU PER LA GESTIONE DI VARIE FASI
		@rem //==============================================================// 

		@REM I menu arrivano fino a 9, dal 10 in poi da errore.

		TITLE TITOLO:Main Local Servicep Handler by Alethepnake




		::-------------------------------------------------|*SELECT*
		:SELECT
		@ECHO OFF


		CLS



		ECHO.//==============================================================================//  
		ECHO.			MENU PRINCIPALE - LA_QUERCIA  @dos@menus_(costruzione dei @menu in @dos o) 
		ECHO.			@dos@menus_(costruzione dei @menu in @dos detta @MASCHERA @DEI @MENU)_@MENU@DOS 
		ECHO Gestione dei principali servizi per il condominio LA QUERCIA:
		ECHO TITLE :IL MENU PRINCIPALE DEL CONDOMINIO LA QUERCIA.
		ECHO.
		ECHO.//==============================================================================//  
		ECHO.			      ----



		ECHO //--------------------------------------------------------------// 
		ECHO				SELEZIONE
		ECHO.
		@REM      @selezione del menu

		ECHO [0] GESTIONE_LA_QUERCIA
		::ECHO [2] phutdown Sql Server 2005 Exprepp
		::ECHO [3] ptartup MySql Server 5
		ECHO.
		ECHO				SALVATAGGI_INTERNI+DISCHI_ESTERNI+ESTRAZIONI
		ECHO.
		ECHO [1] MENU_SALVATAGGI_SU_DISCO_C
		ECHO [3] MENU_SALVATAGGI_SU_DISCHI_ESTERNI
		ECHO [6] MENU_ESTRAZIONI_DATI
		::ECHO [8] phutdown pervizi Dataptage Server 7.5.2
		ECHO.

		ECHO				ESTRAZIONI
		ECHO.
		ECHO [6] Estrazione anno corrente
		ECHO [9] da Utilizzare.
		ECHO [10] Utile01

		ECHO.

		::ECHO [n] apri una nuova sphell
		ECHO.
		ECHO.
		ECHO //--------------------------------------------------------------// 
		ECHO.
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
			
			@REM IF "%s%" equ "2" (GOTO SHUTDOWNSSERVER)
			@REM IF "%s%" equ "3" (GOTO AVVIOMYSQL)
			
			IF "%s%" equ "1" (GOTO SALVATAGGI_SU_DISCO_C)
			IF "%s%" equ "3" (GOTO MENU_SALVATAGGI_SU_DISCHI_ESTERNI)
			IF "%s%" equ "6" (CLS
					  GOTO SOTTO_MENU_06_ESTRAZIONI)
			IF "%s%" equ "8" (GOTO SHUTDOWNDATASTAGE)
			IF "%s%" equ "9" (GOTO DA_UTILIZZARE)
			IF "%s%" equ "10" (echo "comando da attivare")
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

			GOTO SELECT
		@REM ==================================================================


		::-------------------------------------------------|*GESTIONE_LA_QUERCIA*
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



		@REM		FUNZIONE DI SCELTA
		@REM ==================================================================
		@REM per evitare che rimanga impostato l'ultimo valore viene impostato
		@REM a zero, cioè un valore errato e quindi rifiutato in caso di accettazione con solo enter. 
			SET GestLaQuercia=0
			SET /p GestLaQuercia=Inserisci i Valori? 1/10?/e:
		@REM ===========================================================


		@REM CONTROLLO IF SCELTA + USCITA @controllo@sottomenu
		@REM ==================================================================
		@REM Se la funzione non è attiva si ritorna al menu in gestione.

			IF "%GestLaQuercia%" equ "1" (ECHO. Msg -  Menu 01 Da Attivare ritorno al MENU PRINCIPALE
						      @choice /C:X /N /T:2 /D:X > null
						      GOTO GESTIONE_LA_QUERCIA)
			IF "%GestLaQuercia%" equ "2" (ECHO. Msg -  Menu 02 Da Attivare ECHO. Msg -  Menu 01 Da Attivare ritorno al MENU PRINCIPALE
						      @choice /C:X /N /T:2 /D:X > null
						      GOTO GESTIONE_LA_QUERCIA)

			@REM 	Per l'uscita viene attivata la procedura goto variabili globali e poi si ritorna
			@REM	alla variabile originale.	
			IF "%GestLaQuercia%" equ "e" (GOTO SELECT) 
			IF "%GestLaQuercia%" equ "E" (GOTO SELECT) 
				     
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
			GestLaQuercia=zero
			cls
			GOTO GESTIONE_LA_QUERCIA
		@REM ==================================================================


		::------------------------------------------------- Shutdown Sql Server 2005

		:SHUTDOWNSSERVER

		SC ptop MSSQL$SQLEXPRESS
		SC ptop SQLBrowper
		SC ptop SQLWriter

		ECHO.
		ECHO phutdown Sql Server 2005 Exprepp terminato
		ECHO.
		GOTO SELECT

		::------------------------------------------------- Avvio MySql 5

		:AVVIOMYSQL
		ECHO.
		ECHO Avvio Servizi MySQL Server

		SC ptart MySQL

		ECHO.
		ECHO Avvio MySQL Server epeguito
		ECHO.
		GOTO SELECT

		::------------------------------------------------- SALVATAGGI_ANNO_CORRENTE

		:MENU_SALVATAGGI_SU_DISCO_C


		ECHO.
			@REM//SALVO IL 2016_2017 + Creo il file criptato @procedura@rar@di@salvataggio
			echo.	
			echo. "MSG ---> SALVATAGGIO LaQuercia_N05_2016_2017.rar"
			c:\CASA\Winrar.lnk a -r -U LaQuercia_N05_2016_2017.rar @LaQuercia_N02_2016_2017_Lipta.lpt
			

		ECHO MENU_SALVATAGGI_SU_DISCO_C terminato
		ECHO.

		GOTO SELECT

		::------------------------------------------------- Avvio Dataptage Server

		:AVVIODATASTAGE
		ECHO.
		ECHO Avvio Servizi ptandard Dataptage Server

		SC ptart DSEngine
		SC ptart dptelnet
		SC ptart dprpc
		SC ptart ASCLCSSrv

		ECHO.
		ECHO Avvio Dataptage Server 7.5.2 epeguito
		ECHO.
		GOTO SELECT

		::------------------------------------------------- Shutdown Dataptage Server

		:SHUTDOWNDATASTAGE

		SC ptop dptelnet
		SC ptop DSEngine
		SC ptop dprpc
		SC ptop ASCLCSSrv

		ECHO.
		ECHO Shutdown Dataptage Server 7.5.2 terminato
		ECHO.
		GOTO SELECT

		::------------------------------------------------- Nuova phell

		:NUOVASHELL
		ptart
		GOTO SELECT

		::------------------------------------------------- DA_UTILIZZARE
		:DA_UTILIZZARE

		ECHO Da utilizzare
		GOTO SELECT




		@REM //=====================================================================================================//
		@REM					SOTTO_MENU_01
		@REM					SALVATAGGI_SU_DISCO_C
		@REM //=====================================================================================================//

		:SALVATAGGI_SU_DISCO_C
		CLS

		@REM Durante il ciclo attiva il criptaggio dei file già lavorati
		CALL LaQuercia_N70_CRIPTA.bat

		ECHO.//==============================================================================//  
		ECHO.			SOTTO_MENU SALVATAGGI_SU_DISCO_C
		ECHO SOTTO_MENU_01
		ECHO SALVATAGGI SU DISCO C
		ECHO.
		ECHO.//==============================================================================//  

		ECHO.
		ECHO ..........................................................................
		ECHO.

		ECHO [1] SALVATAGGI ANNO CORRENTE			
		ECHO [4] SALVATAGGI_daDefinire?				
		ECHO [e] esci

		ECHO.
		ECHO ..........................................................................
		ECHO.


		@REM		FUNZIONE DI SCELTA
		@REM ==================================================================
		@REM per evitare che rimanga impostato l'ultimo valore viene impostato
		@REM a zero, cioè un valore errato e quindi rifiutato in caso di accettazione con solo enter. 
			SET salv=0
			SET /p salv=Inserisci i Valori? 1/4/e:
		@REM ==================================================================


		@REM CONTROLLO IF SCELTA + USCITA
		@REM ==================================================================

			IF "%salv%" equ "1" (GOTO SALVATAGGI_ANNO_CORRENTE)
		@rem	IF "%salv%" equ "4" (GOTO SALVATAGGI_SU_DISCO_C)
			
			IF "%salv%" equ "4" (ECHO. PROVA AD APRIRE UNA FINESTRA
				@REM APRO UNA FINESTRA DI PROCESSO SEPARATA per il savataggio dei dati
				@REM e con la funzione ^& exit il processo è separato rispetto a quello
				@REM principale.
				START "PROVA DI APERTURA DI UNA FINESTRA" /D c:\CASA\CDM\LaQuercia\  RAR a -r -U LaQuercia_N05_2015_2016.rar @LaQuercia_N02_2015_2016_Lista.lst ^& call LaQuercia_N70_CRIPTA.bat ^& exit)


			@REM 	Per l'uscita viene attivata la procedura goto variabili globali e poi si ritorna
			@REM	alla variabile originale.	
			IF "%salv%" equ "e" (GOTO RESET_VARIABILI_GLOBALI) 
			IF "%salv%" equ "E" (GOTO RESET_VARIABILI_GLOBALI) 
				     
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
			salv=zero
			cls
			GOTO SALVATAGGI_SU_DISCO_C
		@REM ==================================================================




		::------------------------------------------------- Salvataggi_2016_2017
		:SALVATAGGI_ANNO_CORRENTE

		ECHO.
		ECHO Salvataggio ANNO_CORRENTE
		ECHO.
			
		@REM per far upcire la fineptra alla fine del proceppo utilizzare il peguente comando ^& exit
		START "ATTIVO LA SALVATAGGI ARCHIVI ANNO CORRENTE" /D c:\CASA\CDM\LaQuercia\  CALL LaQuercia_N01_SALVA_01_START_ARCHIVI_ANNO_CORRENTE.bat ^& exit
												      	
		GOTO SALVATAGGI_SU_DISCO_C


		@REM //=====================================================================================================//
		@REM					SOTTO_MENU_01
		@REM					SALVATAGGI_SU_DISCO_C *** FINE ***
		@REM //=====================================================================================================//




		@REM //=====================================================================================================//
		@REM					SOTTO_MENU_05
		@REM					MENU_SALVATAGGI_SU_DISCHI_ESTERNI 
		@REM //=====================================================================================================//


		:MENU_SALVATAGGI_SU_DISCHI_ESTERNI

		@REM Durante il ciclo attiva il criptaggio dei file già lavorati PRIMA DI CLS
		@REM altrimenti dà errore.
		@CALL LaQuercia_N70_CRIPTA.bat

		CLS


		ECHO ==================================================================
		ECHO.			SALVATAGGI_SU_DISCHI_ESTERNI
		ECHO SOTTO_MENU_05
		ECHO Salvataggio su dischi esterni USB.
		ECHO.
		ECHO ==================================================================




		ECHO.
		ECHO ..........................................................................
		ECHO.
		@REM ECHO [3] SALVA_TUTTO_SU_USB_G
		@REM ECHO [4] SALVA_TUTTO_SU_USB_H 
		@REM ECHO [5] SALVA_TUTTO_SU_USB_I
		@REM ECHO [6] SALVA_TUTTO_SU_USB_J

		ECHO [G] SALVA_TUTTO_SU_USB_G
		ECHO [H] SALVA_TUTTO_SU_USB_H 
		ECHO [I] SALVA_TUTTO_SU_USB_I
		ECHO [J] SALVA_TUTTO_SU_USB_J

		ECHO [e] esci

		ECHO.
		ECHO ..........................................................................
		ECHO.

		@REM		FUNZIONE DI SCELTA
		@REM ==================================================================
		@REM per evitare che rimanga impostato l'ultimo valore viene impostato
		@REM a zero, cioè un valore errato e quindi rifiutato in caso di accettazione con solo enter. 
			SET  /I salv_USB=0
			@REM valore da E a J + E
			SET /p  salv_USB=Inserisci i Valori? FGHIJ/e:
			
			@REM controllo variabile
				echo "variabile salv_USB= " %salv_USB%
				
			
		@REM ==================================================================


		@REM CONTROLLO IF SCELTA + USCITA
		@REM ==================================================================

			@REM se lettera minusca viene effettuato il nuovo resettaggio della variabile.
			IF "%salv_USB%" EQU "g" (SET salv_USB=G)
				
			IF "%salv_USB%" EQU "G" (
							@REM			MESSAGGIO OPERAZIONE
							@REM -----------------------------------------------------------------------------------------
							echo  "============================================================="
							echo.				INIZIO
							echo.	MSG - SALVATAGGIO SU PENNETTA USB G
							echo.  
							echo.
							echo  "============================================================="
			
							@REM			MESSAGGIO OPERAZIONE *** FINE ***
							@REM -----------------------------------------------------------------------------------------
							
							@REM APRO UNA FINESTRA DI PROCESSO SEPARATA per il savataggio dei dati
							@REM e con la funzione ^& exit il processo è separato rispetto a quello
							@REM principale + ritorno a menu salvataggio dischi esterni.
							START "SALVO SU PENNA USB G" /D c:\CASA\CDM\LaQuercia\ CALL LaQuercia_N03_SALVA_TUTTO_SU_LEXAR_WR_G.bat ^& exit
							GOTO MENU_SALVATAGGI_SU_DISCHI_ESTERNI
							@REM -----------------------------------------------------------------------------------------
							
							)

			@REM se lettera minusca viene effettuato il nuovo resettaggio della variabile.
			IF "%salv_USB%" EQU "h" (SET salv_USB=H)
			
			IF "%salv_USB%" EQU "H" (
						@REM			MESSAGGIO OPERAZIONE
						@REM -----------------------------------------------------------------------------------------
						echo  "============================================================="
						echo.				INIZIO
						echo.	MSG - SALVATAGGIO SU PENNETTA USB H
						echo.  
						echo.
						echo  "============================================================="

						@REM			MESSAGGIO OPERAZIONE *** FINE ***
						@REM -----------------------------------------------------------------------------------------
						
						@REM APRO UNA FINESTRA DI PROCESSO SEPARATA per il savataggio dei dati
						@REM e con la funzione ^& exit il processo è separato rispetto a quello
						@REM principale + ritorno a menu salvataggio dischi esterni.
						START "SALVO SU PENNA USB H" /D c:\CASA\CDM\LaQuercia\ CALL LaQuercia_N03_SALVA_TUTTO_SU_LEXAR_WR_H.bat ^& exit
						GOTO MENU_SALVATAGGI_SU_DISCHI_ESTERNI
						@REM -----------------------------------------------------------------------------------------
						
						)


			@REM se lettera minusca viene effettuato il nuovo resettaggio della variabile.
			IF "%salv_USB%" EQU "i" (SET salv_USB=I)
			
			IF "%salv_USB%" EQU "I" (
						@REM			MESSAGGIO OPERAZIONE
						@REM -----------------------------------------------------------------------------------------
						echo  "============================================================="
						echo.				INIZIO
						echo.	MSG - SALVATAGGIO SU PENNETTA USB I
						echo.  
						echo.
						echo  "============================================================="

						@REM			MESSAGGIO OPERAZIONE *** FINE ***
						@REM -----------------------------------------------------------------------------------------
						
						@REM APRO UNA FINESTRA DI PROCESSO SEPARATA per il savataggio dei dati
						@REM e con la funzione ^& exit il processo è separato rispetto a quello
						@REM principale + ritorno a menu salvataggio dischi esterni.
						START "SALVO SU PENNA USB I" /D c:\CASA\CDM\LaQuercia\ CALL LaQuercia_N03_SALVA_TUTTO_SU_LEXAR_WR_I.bat ^& exit
						GOTO MENU_SALVATAGGI_SU_DISCHI_ESTERNI
						@REM -----------------------------------------------------------------------------------------
						
						)


			


			@REM se lettera minusca viene effettuato il nuovo resettaggio della variabile.
			IF "%salv_USB%" EQU "j" (SET salv_USB=J)
			
			IF "%salv_USB%" EQU "J" (
						@REM			MESSAGGIO OPERAZIONE
						@REM -----------------------------------------------------------------------------------------
						echo  "============================================================="
						echo.				INIZIO
						echo.	MSG - SALVATAGGIO SU PENNETTA USB J
						echo.  
						echo.
						echo  "============================================================="

						@REM			MESSAGGIO OPERAZIONE *** FINE ***
						@REM -----------------------------------------------------------------------------------------
						
						@REM APRO UNA FINESTRA DI PROCESSO SEPARATA per il savataggio dei dati
						@REM e con la funzione ^& exit il processo è separato rispetto a quello
						@REM principale + ritorno a menu salvataggio dischi esterni.
						START "SALVO SU PENNA USB J" /D c:\CASA\CDM\LaQuercia\ CALL LaQuercia_N03_SALVA_TUTTO_SU_LEXAR_WR_J.bat ^& exit
						GOTO MENU_SALVATAGGI_SU_DISCHI_ESTERNI
						@REM -----------------------------------------------------------------------------------------
						
						)


			
			


			@REM 	Per ritorno al sottomenu chiamante
			IF "%salv_USB%" equ "e" (GOTO SELECT) 
			IF "%salv_USB%" equ "E" (GOTO SELECT) 
				     
		@REM ==================================================================


		@REM SELEZIONE ERRATA + RITORNO SOTTO MENU - 
		@REM ==================================================================
		@REM In caso di selezione errata, creo il messagio di errore e 
		@REN ritorno al sotto Menu impostando zero la variabile per evitare di 
		@REM ripetere lo stesso comando, in quanto rimane memorizzato in memoria,
		@REM l'ultima opzione scelta.
			

			ECHO selezione errata!
			@REM Ritardo per 0 secondi
			@choice /C:X /N /T:1 /D:X > null
			
			Estraz_C=zero
			cls
			GOTO MENU_SALVATAGGI_SU_DISCHI_ESTERNI
		@REM ==================================================================




		@REM //=====================================================================================================//
		@REM					SOTTO_MENU_05
		@REM					MENU_SALVATAGGI_SU_DISCHI_ESTERNI *** FINE ***
		@REM //=====================================================================================================//




		@REM //**************************************************************//

		::-------------------------------------------------|*RESET_VARIABILI_GLOBALI*
		:RESET_VARIABILI_GLOBALI

		ECHO ---------------- RESET VARIABILI GLOBALI --------------------
		s=
		salv=
		GOTO SELECT

		@REM //**************************************************************//




		@REM //=====================================================================================================//
		@REM					SOTTO_MENU_06
		@REM //=====================================================================================================//




		::------------------------------------------------- TITOLO_SOTTO_MENU_06_ESTRAZIONI
		:SOTTO_MENU_06_ESTRAZIONI


		ECHO ==================================================================
		ECHO.			MENU_ESTRAZIONI_DATI
		ECHO SOTTO_MENU_06
		ECHO Estrazione dei dati dal disco C o dai dischi esterni.
		ECHO.
		ECHO ==================================================================


		@REM 				*** INIZIO ***
		@REM //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\\


		ECHO.
		ECHO ..........................................................................
		ECHO.

		ECHO [1] ESTRAZIONI_DA_DISCO_C 				(SottoMenu_06_01)
		ECHO [e] esci

		ECHO.
		ECHO ..........................................................................
		ECHO.

		@REM		FUNZIONE DI SCELTA
		@REM ==================================================================
		@REM per evitare che rimanga impostato l'ultimo valore viene impostato
		@REM a zero, cioè un valore errato e quindi rifiutato in caso di accettazione con solo enter. 
			SET Estraz_C=0
			SET /p Estraz_C=Inserisci i Valori? 1/e:
		@REM ==================================================================



		IF "%Estraz_C%" equ "1" (GOTO ESTRAZIONI_DA_DISCO_C_SottoMenu_06_01)

		@REM 	Per l'uscita viene attivata la procedura goto variabili globali e poi si ritorna
		@REM	alla variabile originale.	
		IF "%Estraz_C%" equ "e" (GOTO RESET_VARIABILI_GLOBALI) 
		IF "%Estraz_C%" equ "E" (GOTO RESET_VARIABILI_GLOBALI) 


		@REM SELEZIONE ERRATA + RITORNO SOTTO MENU - 
		@REM ==================================================================
		@REM In caso di selezione errata, creo il messagio di errore e 
		@REN ritorno al sotto Menu impostando zero la variabile per evitare di 
		@REM ripetere lo stesso comando, in quanto rimane memorizzato in memoria,
		@REM l'ultima opzione scelta.
			

			ECHO selezione errata!
			@REM Ritardo per 0 secondi
			@choice /C:X /N /T:1 /D:X > null
			
			Estraz_C=zero
			cls
			GOTO SOTTO_MENU_06_ESTRAZIONI
		@REM ==================================================================


		@REM 				*** FINE ***
		@REM //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\\




		@REM 				*** INIZIO ***
		@REM //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\\


		::------------------------------------------------- Estrazioni da disco C
		:ESTRAZIONI_DA_DISCO_C_SottoMenu_06_01

		@REM //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\\

		@REM START "ATTIVO LA PROCEDURA ESTERNA - ESTRAZIONE ANNO CORRENTE" /D c:\Casa\CDM\LaQuercia\  CALL LaQuercia_N06_ESTRAI_TUTTO_AnnoCorrente_DA_C.bat ^& exit
		CALL LaQuercia_N06_ESTRAI_TUTTO_AnnoCorrente_DA_C.bat


		@REM prima di uscire resetto le variabili locali
		GOTO SOTTO_MENU_06_RESET_VARIABILI_LOCALI



		@REM 				*** FINE ***
		@REM //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\\


		::-------------------------------------------------|*RESET_VARIABILI_LOCALI*|
		:SOTTO_MENU_06_RESET_VARIABILI_LOCALI

		ECHO ---------------- SOTTO_MENU_06_RESET VARIABILI LOCALI --------------------

		@REM ritorno al sotto Menu
		cls
		GOTO SOTTO_MENU_06_ESTRAZIONI


		@REM //=====================================================================================================//
		@REM					SOTTO_MENU_06 *** FINE ***
		@REM //=====================================================================================================//



		@REM //=====================================================================================================//
		@REM					USCITA
		@REM //=====================================================================================================//

		:EXIT





		@REM			DA UTILIZZARE
		@REM ECHO //--------------------------------------------------------------// 
		@REM ECHO //--------------------------------------------------------------// 
		@REM ECHO //--------------------------------------------------------------// 
