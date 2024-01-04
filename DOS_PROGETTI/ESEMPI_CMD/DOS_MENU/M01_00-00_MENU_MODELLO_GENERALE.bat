@ECHO OFF
REM.-- Prepare the Command Processor
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION


::-------------------------------------------------------------------------------------------------------------------
::					C07_01) - GESTIONE MENU_DI_GESTIONE_DIRECTORY_CASA_UFFICIO_LLPP - (GE_PRES3000 = CODICE)
::
::file 		: C07_SottoMenu_01_SALVATAGGI - SALV -.bat
::codici	: C07_ 			= VOCE 3 DEL MENU PRINCIPALE;
::		: _Sottomenu _		= Identifica un sotto menu che viene chiamato da quello principale;
::		:_01_			= identifica la Voce 1 del Sotto menu;
::		:_<<CODICE>>_		= in maiuscolo il codice di appartenenza della procedura, es. SALVATAGGI - SALV - = Archivio Salvataggi.
::		:_Nxx_			= identifica il progressivo del file;
::		:_<<NomeFile>>.bat 	= viene indicata la attivita che svolge il file e l'estensione della procedura eseguibile in dos, es .bat.
::		:Esempio di nome procedura eseguible dopo il menu :"C07_SottoMenu_01_SALVATAGGI - SALV -_N02_Salvataggi.bat"
::-------------------------------------------------------------------------------------------------------------------




@REM//######################################################################################//
@REM 				MENU LOOP
@REM 	ciclo dei comani del menu loop dall'inizio alla fine 
@REM
@REM //######################################################################################//

:menuLOOP

CLS
set choice =""
echo.
echo."//==============================================================================================//"
echo.				"<< MENU_DI_GESTIONE_DIRECTORY_CASA_UFFICIO_LLPP >>"
echo.				"		(CASA UFFICIO LLPP)			   "
echo.	posizione c:\GESTIONI\SALVATAGGI\C07_CASA_LLPP\
echo."//==============================================================================================//"
echo.


::-----------------------------------------------------------
::	recupero il parametro
::-----------------------------------------------------------

for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu_" "%~f0""') do echo. %%B  %%C &echo.
set choice =
echo.&set /p choice=Digitare una scelta oppure digitare ENTER per l'uscita (EXIT ENTER ): ||GOTO:EOF


::-----------------------------------------------------------
::	CONTROLLO IL COMANDO DIGITATO
::Imposto la variabile delle voci menu trovate.
::-----------------------------------------------------------


@REM imposto la variabile della voce menu False = non trovato
@REM True = menu trovato.
SET TROVATO_s="FALSE"



@REM echo --->comando eseguito echo. menu_%choice% 



	@REM		ESEGUO IL COMANDO DEL MENU - COMANDO CALL
	@REM ----------------------------------------------------------------------------------------


		@REM eseguo il comando del menu - call -
		echo.&call:menu_%choice%

	@REM		ESEGUO IL COMANDO DEL MENU - COMANDO CALL *** FINE ***
	@REM ----------------------------------------------------------------------------------------


	@REM		CONTROLLO IF PER IL MENU MESSAGGIO DI ERRORE
	@REM ----------------------------------------------------------------------------------------

		@REM SE NON TROVA NESSUNA VOCE MENU VA AL MESSAGGIO DI ERRORE 
		IF %TROVATO_S% EQU "FALSE" (
					    GOTO :menu_MSG
					    )


	@REM		CONTROLLO IF PER IL MENU MESSAGGIO DI ERRORE *** FINE ***
	@REM ----------------------------------------------------------------------------------------



GOTO:menuLOOP


@REM//######################################################################################//
@REM 				MENU LOOP
@REM 	ciclo dei comani del menu loop dall'inizio alla fine *** FINE ***
@REM
@REM //######################################################################################//



::-----------------------------------------------------------
:: menu functions follow below here
::-----------------------------------------------------------


@REM 					VOCE_MENU_1
@REM //_____________________________________________________________________________________________________________//
@REM	VOCE_MENU_1 (Utile01) - 

:menu_1 	----------------> C07_01) UTILE_01
echo. 
echo. 



	@REM RESETTO LE VARIABILI MENU TROVATO A TRUE
	SET TROVATO_s=TRUE

		
	@REM //			ATTIVO LA PROCEDURA .bat    
	@REM //............................................................
	@REM //Nota	: di salvataggio di tutti gli archivi Salvataggi nella
	@REM //		directory c:\SALVATAGGI\. + salvataggio dei .bat
		
		@REM ................chiamo la procedura
		@REM /// -->
		echo. "//=====================> C07_01) UTILE_01
		echo. ".........................FILE .PDF .DOC .TXT IN c:\GESTIONI\GESTIONE_LLPP\01_POSTA\ "  
		echo.
	
		@REM /// --> 		pause


				
				@REM Chiamo il sub menu di gestione del condominio.
				call C07_00-01_SUB_MENU_LLPP_POSTA.bat
				
				

	
				
		
		@REM /// --> 		pause

	@REM //............................................................



		@REM				SVUOTO choice
		@REM -----------------------------------------------------------------------------
		@REM  	Svuoto la variabile di ambiente a null per evitare ripetizione della
		@REM	Routine Msg, cancello lo schermo, torno nel loop del ciclo.
			SET choice=""

			GOTO:EOF		
			GOTO:menuLOOP		
		
		
		@REM				SVUOTO choice  *** Fine ***
		@REM -----------------------------------------------------------------------------
		
		
@REM 					VOCE_MENU_1 *** FINE ***
@REM //_____________________________________________________________________________________________________________//


@REM 					VOCE_MENU_4
@REM //_____________________________________________________________________________________________________________//
@REM	VOCE_MENU_4  - GESTIONE_LTT_(LOTTO)

:menu_4 	----------------> C07_04) GESTIONE_LTT_(LOTTO)
echo. 
echo. 



	@REM RESETTO LE VARIABILI MENU TROVATO A TRUE
	SET TROVATO_s=TRUE

		
	@REM //			ATTIVO LA PROCEDURA .bat    
	@REM //............................................................
	@REM //Nota	: di salvataggio di tutti gli archivi Salvataggi nella
	@REM //		directory c:\SALVATAGGI\. + salvataggio dei .bat
		
		@REM ................chiamo la procedura
		@REM /// -->
		echo. "//=====================> C07.06) ATTIVA LA PROCEDURA DI GESTIONE_LTT_(LOTTO)
		echo. "........................................................................................"  
		echo.
	
		@REM /// --> 		pause


				
				@REM Chiamo il sub menu di gestione del condominio.
				call C07_04-00_SUB_MENU_LTT.bat
				
				
		
		@REM /// --> 		pause

	@REM //............................................................



		@REM				SVUOTO choice
		@REM -----------------------------------------------------------------------------
		@REM  	Svuoto la variabile di ambiente a null per evitare ripetizione della
		@REM	Routine Msg, cancello lo schermo, torno nel loop del ciclo.
			SET choice=""

			GOTO:EOF		
			GOTO:menuLOOP		
		
		
		@REM				SVUOTO choice  *** Fine ***
		@REM -----------------------------------------------------------------------------
		
@REM 					VOCE_MENU_4 *** fine ***
@REM //_____________________________________________________________________________________________________________//



@REM 					VOCE_MENU_6
@REM //_____________________________________________________________________________________________________________//
@REM	VOCE_MENU_6  - GESTIONE_PRES_3000

:menu_6 	----------------> C07_06) GESTIONE_PRES_3000
echo. 
echo. 



	@REM RESETTO LE VARIABILI MENU TROVATO A TRUE
	SET TROVATO_s=TRUE

		
	@REM //			ATTIVO LA PROCEDURA .bat    
	@REM //............................................................
	@REM //Nota	: di salvataggio di tutti gli archivi Salvataggi nella
	@REM //		directory c:\SALVATAGGI\. + salvataggio dei .bat
		
		@REM ................chiamo la procedura
		@REM /// -->
		echo. "//=====================> C07.06) ATTIVA LA PROCEDURA DI GESTIONE_PRES_3000
		echo. "........................................................................................"  
		echo.
	
		@REM /// --> 		pause


				
				@REM Chiamo il sub menu di gestione del condominio.
				call C07_06-00_SUB_MENU_PRES3000.bat
				
				
		
		@REM /// --> 		pause

	@REM //............................................................



		@REM				SVUOTO choice
		@REM -----------------------------------------------------------------------------
		@REM  	Svuoto la variabile di ambiente a null per evitare ripetizione della
		@REM	Routine Msg, cancello lo schermo, torno nel loop del ciclo.
			SET choice=""

			GOTO:EOF		
			GOTO:menuLOOP		
		
		
		@REM				SVUOTO choice  *** Fine ***
		@REM -----------------------------------------------------------------------------
		
@REM 					VOCE_MENU_6 *** fine ***
@REM //_____________________________________________________________________________________________________________//




@REM		 				MENU C
@REM //_____________________________________________________________________________________________________________//

@rem 		AUMENTO DI 3 INTERLINEE
:menu______________________________________
:menu______________________________________
:menu______________________________________

:menu_C -------> C = Pulisci lo schermo - (CLS SCHERMO)


	@REM RESETTO LE VARIABILI MENU TROVATO A TRUE
	SET TROVATO_s=TRUE
	
	cls
	GOTO:LOOP



@REM		 				MENU C *** FINE ***
@REM //_____________________________________________________________________________________________________________//



@REM	 				VOCE MESSAGGIO DI ERRORE
@REM //_____________________________________________________________________________________________________________//
@REM	(Note: il messaggio di errore è l'ultima funzione utilizzabile dopo la voce menu finale. Essa viene attivata
         solo nel caso in cui il comando choice intercetta un valore diverso da tutte le voci menu predisposte, e
         serve a evidenziare l'errore del comando ed a resettare il comando choice. Si rientra nel loop dopo questa
         attività di avviso.)

@:menu_MSG



	@REM RESETTO LE VARIABILI MENU TROVATO A TRUE
	SET TROVATO_s=TRUE

	(
	@REM 						VOCE MENU MsgError
	@REM //_____________________________________________________________________________________________________________//


		@REM		COMANDI NON CODIFICATI - GESTIONE
		@REM ----------------------------------------------------------------------------------------
		@REM	Note : Se il comando digitato non è codificato 
		@REM	       il ciclo arriva in questo punto ed evidenzia
		@REM	       il messaggio di avviso.


			echo.
			echo.				MESSAGGIO
			echo."//==========================================================================//"
			echo.
			echo.
			echo."----------------------> Msg:.COMANDO NON ESISTENTE - RIPROVARE ..."
			echo."........................digitare un menu esitente o uscire"
			echo."........................dalla procedura."
			echo.".........................comando Digitato ==>"
			echo.                         menu_%choice%
			echo.
			echo."//==========================================================================//"
			echo.
			PAUSE

		@REM		COMANDI NON CODIFICATI - GESTIONE *** FINE ***	
		@REM ----------------------------------------------------------------------------------------

	
			@REM				SVUOTO choice
			@REM -----------------------------------------------------------------------------
			@REM  	Svuoto la variabile di ambiente a null per evitare ripetizione della
			@REM	Routine Msg, cancello lo scherom, torno nel loop.
				SET choice=""
	
				REM ----------------------> 					PAUSE
	
				(CLS
				 GOTO:menuLOOP
				 )
			
			@REM				SVUOTO choice  *** Fine ***
			@REM -----------------------------------------------------------------------------



	@REM 						VOCE MENU MsgError *** FINE ***
	@REM //_____________________________________________________________________________________________________________//

	)



@REM 				VOCE MESSAGGIO DI ERRORE *** FINE ***
@REM //_____________________________________________________________________________________________________________//





@REM//######################################################################################//
@REM 				MENU LOOP
@REM 	ciclo dei comani del menu loop dall'inizio alla fine   *** fine ***
@REM
@REM //######################################################################################//




