@ECHO OFF
@REM.-- Prepare the Command Processor
@REM SETLOCAL ENABLEEXTENSIONS
@REM SETLOCAL ENABLEDELAYEDEXPANSION

@REM ----------------------------------------------------------------------------------------------------------------------------------------------	
@REM		MODALITA DI ARCHIVIAZIONE E NOTE
@REM ----------------------------------------------------------------------------------------------------------------------------------------------	
@REM n.b se non vengono indicate la directory di partenza non vengono trovati i dati da archiviare
@REM n.b se non  viene indicata la directory di arrivo i dati vengono archiviati nella directory winrar

@REM parametri directory di partenza	directory di arrivo  parametri  + lista parametri 
@REM a -r -U   c:\GESTIONI\SALVATAGGI\brs\file.rar	c:\GESTIONI\SALVATAGGI\brs\         -n           A03_Salvataggi_BRS_LISTA_01_TUTTO.lst


	@REM  PARAMETRI OPZIONI:
	@REM  Opzione -x Estrae file e cartelle con il percorso originale. 
	@REM  Opzione -r considera le sottocartelle (processa gli archivi delle sottocartelle)
	@REM  Opzione -u Estrai solo i nuovi
	@REM  Opzione -y Assumi la risposta 'Si' a tutte le domande



	@REM ------------ ESEMPIO CON WINRAR --------------------
	@REM ma deve essere correttamente settato altrimenti da errore nella ricerca del
	@REM file lista.lst perche i comandi dos di rar non riconoscono la path ed il file dove risiede
	@REM lista.lst. In alternativa salvare nella direttory gli eseguibili rar.exe e unrar.exe ed
	@REM utilizzare i comandi dos.
	@REM WinRAR.lnk a -r -U c:\GESTIONI\SALVATAGGI\provaLista -n@lista.lst


	@REM ------------ ESEMPIO CON I COMANDI DOS CON RAR.EXE ED UNRAR.EXE ------------------------------
	@REM alternativo a winrar che non è settato correttamente. Utilizzare gli eseguibili rar.exe e unrar.exe
	
	@REM rar.exe a -r -U c:\GESTIONI\SALVATAGGI\provaLista -n@lista.lst
	
	@REM ------------- ESEMPIO LISTA.LST -----------------------------
	@REM salvataggio dei file *.mdb + *.xls nella sottodirectory brs
	@REM brs\*.mdb 
	@REM brs\*.xls
	

	@REM  ***************************************************************
	@REM  Utilizzo alternativo di varie estrazioni che viene eseguita quella
	@REM  con il disco esterno lexar attivo : es. se è attivo il disco g viene
	@REM  effettuata la procedura di estrazione LEXAR_G mentre viene saltata la LEXAR_G


	@REM//ESTRAI PARZIALI SOLO ARCHIVI TRIBUTI DISCO LEXAR_G
	@REM Unrar.exe x -y -r -U G:\GESTIONI\SALVATAGGI\A01_01_N03_Salvataggi_del_Menu_Principale.rar *.* 


@REM ----------------------------------------------------------------------------------------------------------------------------------------------	
@REM		MODALITA DI ARCHIVIAZIONE E NOTE *** FINE ***
@REM ----------------------------------------------------------------------------------------------------------------------------------------------	



@REM ----------------------------------------------------------------------------------------------------------------------------------------------	
@:DISCO_LEXAR_E


@IF ERRORLEVEL 1 (GOTO ERRORE_DISCO_E)
@DIR E:

@:ERRORE_DISCO_E

		echo.
		echo.
		echo."=================================================================="
		echo."				MSG_ERRORE_LEXAR_E:"
		echo.
		echo."---------------> "ERRORE DISCO_E VADO AL DISCO_G" "			
		echo.
		echo.
		echo."=================================================================="

		@REM Ritardo per /T:2 secondi
		@choice /C:X /N /T:2 /D:X > NUL

		GOTO DISCO_LEXAR_G

@REM ----------------------------------------------------------------------------------------------------------------------------------------------


@REM ----------------------------------------------------------------------------------------------------------------------------------------------

@:DISCO_LEXAR_G


@IF ERRORLEVEL 2 (GOTO ERRORE_DISCO_G)
@DIR G:

@:ERRORE_DISCO_G
echo.
		echo.
		echo."=================================================================="
		echo."				MSG_ERRORE_LEXAR_G:"
		echo.
		echo."---------------> "ERRORE DISCO_G VADO AL DISCO_I" "			
		echo.
		echo.
		echo."=================================================================="

		@REM Ritardo per /T:2 secondi
		@choice /C:X /N /T:2 /D:X > NUL
		GOTO DISCO_LEXAR_I

@REM ----------------------------------------------------------------------------------------------------------------------------------------------




@REM ----------------------------------------------------------------------------------------------------------------------------------------------
@:DISCO_LEXAR_I

@IF ERRORLEVEL 3 (GOTO ERRORE_DISCO_I)
@DIR I:
		
		echo.
		echo.
		echo."******************************************************************"
		echo."				MSG_LEXAR_I:"
		echo.
		echo.">>>>>>>>>>>>>>>> "ESISTE_DISCO_I" "			
		echo.
		echo. "FINE PROCEDURA"
		echo.
		echo."******************************************************************"
		
		@REM Ritardo per /T:2 secondi
		@choice /C:X /N /T:2 /D:X > NUL
		@REM USCITA BATCH
		EXIT /W

@:ERRORE_DISCO_I


		echo.
		echo."=================================================================="
		echo."				MSG_ERRORE_LEXAR_G:"
		echo.
		echo."---------------> "ERRORE DISCO_G VADO AL DISCO_I" "			
		echo.
		echo."	FINE DEI CONTROLLI - DISCO LEXAR NON TROVATO CONTROLLARE	"
		echo.
		echo."=================================================================="

		@REM Ritardo per /T:2 secondi
		@choice /C:X /N /T:2 /D:X > NUL
		
		@REM Uscita dalla procedura batch
		EXIT /B
			

@REM ----------------------------------------------------------------------------------------------------------------------------------------------

