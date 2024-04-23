ù@echo off

Title compress_c:\CASA\rar.exe_rev3.bat

@REM updated 12/13/2017

@REM							NOTE PRINCIPALI					
@REM ==============================================================================================================
@REM This script compresses files in a folder specified by the user 
@REM individually or into a single archive in *.c:\CASA\rar.exe format (Winc:\CASA\rar.exe's default) 
@REM with the option to include subfolders. Saved files are placed in the  
@REM specified directory unless otherwise noted. Files with same name but 
@REM different exts overwritten by last task for options 1 and 2
@REM Option 4 is the most commonly used option
@REM ------------------------------------------------------------------------------------------
@REM Questo script comprime i file in una cartella specificata dall'utente
@REM singolarmente o in un singolo archivio in formato * .c:\CASA\rar.exe (impostazione predefinita di Winc:\CASA\rar.exe)
@REM con l'opzione per includere sottocartelle. I file salvati vengono inseriti in Directory 
@REM specificata se non diversamente specificato. File con lo stesso nome ma
@REM diversi estinti sovrascritti dall'ultima attività per le opzioni 1 e 2 L'opzione 
@REM 4 è l'opzione più comunemente usata
@REM
@REM WEB --->https://cects.com/wp-content/uploads/2012/01/compress_rar_rev3.bat_.txt
@REM WEB --->https://cects.com/using-the-winc:\CASA\rar.exe-command-line-tools-in-windows/
@REM ==============================================================================================================


@REM  L'ESPANSIONE RITARDATA DELLE VARIABILI DI AMBIENTE
@REM ---------------------------------------------------------------------------------------
@REM Estensione del prompt.
@REM ENABLEEXTENSION = ATTIVA le estensione DEI COMANDI del prompt (nel file batch locale)
@REM DISABLEEXTENSION = DISATTIVA le estensione DEI COMAND del prompt (nel file batch locale)
@rem setlocal ENABLEEXTENSION   

@REM ENABLEDELAYEDEXPANSION = Attiva l'espansione ritardata della variabile di ambiente (nel file batch locale)
@REM DISABLEDELAYEDEXPANSION = DISATTIVA l'espansione ritardata della variabile di ambiente (nel file batch locale)
	setlocal EnableDelayedExpansion

@REM ---------------------------------------------------------------------------------------

@REM Specify the folder to compress below: Specifica la cartella da comprimere di seguito:

@REM --------------------- Folder to compress -----------------------------------
	@REM	la cartella di compressione
	@REM OLD set dir="C:\Folder4\Folder3\Folder2\Folder 1\Folder"
	set dir="c:\CASA\LINGUAGGI\ACCESS\ACCESS_PROGETTI_MDB\CREAZIONE_TABELLE+TREEVIEW+INI\"; "c:\CASA\"; "C:\TMP\PROVA\"
@REM ----------------------------------------------------------------------------

@REM Path to Winc:\CASA\rar.exe executable in Program Files. Change if location is different
@REM Percorso all'eseguibile Winc:\CASA\rar.exe in Programmi. Cambia se la posizione è diversa
@REM ---------------------- Winc:\CASA\rar.exe Directory ------------------------------------
	@REM OLD set path="C:\Program Files\Winc:\CASA\rar.exe\";%path%
	@REM Nuova directory dove si trova winc:\CASA\rar.exe
	@REM  ---> non funziona caminato in quello di sotto ---> set path="c:\CASA\";%path%
	 set path="c:\CASA\LINGUAGGI\ACCESS\ACCESS_PROGETTI_MDB\CREAZIONE_TABELLE+TREEVIEW+INI\"

	echo "controllo della path settata:" %path%
@REM ----------------------------------------------------------------------------

@REM change working dir to dir specified above
@REM cambia la directory di lavoro in quella sopra specificata
cd %dir%

@REM Replace space in hour with zero if it's less than 10
@REM Sostituisci lo spazio in ore con zero se è inferiore a 10
SET hr=%time:~0,2%
IF %hr% lss 10 SET hr=0%hr:~1,1%

@REM This sets the date like this: mm-dd-yr-hhmmssss (includes 1/100 secs)
@REM Questo imposta la data in questo modo: mm-dd-yr-hhmmssss (include 1/100 secs)
Set TODAY=%date:~4,2%-%date:~7,2%-%date:~10,4%-%hr%%time:~3,2%^d
%time:~6,2%%time:~9,2%

echo.
echo Folder to compress in *.c:\CASA\rar.exe format:
echo Cartella da comprimere in formato * .c:\CASA\rar.exe
echo %dir%
echo.
echo.

echo 1. Compress files in dir individually (no subdirs) 			 			
echo 	===== Comprimi i file in dir individualmente (senza sottodirectory)
echo	
echo 2. Compress all files in dir and subdirs individually - no path 			
echo   ===== Comprimi tutti i file in dir e sottodir singolarmente - nessun percorso	
echo	
echo 3. Compress all files in dir into a single archive (no subdirs) 			
echo   ===== Comprimi tutti i file in dir in un singolo archivio (senza sottodir)
echo	
echo 4. Compress all files in dir and subdirs into a single archive  			
echo 	===== Comprimi tutti i file in dir e sottodir in un unico archivio
echo	
echo 5. Compress all files in dir and subdirs into a single archive - no paths  
echo 	===== Comprimi tutti i file in dir e sottodirectory in un singolo archivio, senza percorsi
echo	
echo 6. Exit
echo.
echo.
:choose
			set PROFILE=
			set /P PROFILE=Enter your selection (1-7):
			if "%PROFILE%"=="1" goto indiv
			if "%PROFILE%"=="2" goto sindiv
			if "%PROFILE%"=="3" goto onearc
			if "%PROFILE%"=="4" goto sonearc
			if "%PROFILE%"=="5" goto snponearc
			if "%PROFILE%"=="6" goto nochoice
goto choose


@REM //==========================================================================================//
@REM	:indiv --> 01 Comprimi i file in dir individualmente (senza sottodirectory)
@REM //==========================================================================================//
@REM 1. Compress files in directory individually (no subdirs, excluded by FOR command) 
@REM	Comprimi i file nella directory singolarmente (nessun sottodir, escluso dal comando FOR)
@REM Files with same name but different exts overwritten by last task	
@REM 	File con lo stesso nome ma estensioni diverse sovrascritte dall'ultima attività
:indiv
echo.
echo.
	@REM contatore di file
	SET /A 	icount=0
		echo						          02
		echo	----------------------------------------------------------------------
		echo COMANDO 01 = Comprimi i file in dir individualmente (senza sottodirectory)	> FILE_COMANDO_01.txt
		echo secondo l'ultima attivita.														>> FILE_COMANDO_01.txt
		echo. 																				>> FILE_COMANDO_01.txt
		echo. 																				>> FILE_COMANDO_01.txt

	FOR %%i IN (*.*) do (c:\CASA\rar.exe a "%%~ni" "%%i"

				REM contatore dei file creati
			    Set /a TotNro"="TotNro+1

			    @REM il contatore per essere visibile deve avere il punto interrogativo per l'espansione
			    @REM ritardata + il comando Set di espansione ritardata sopra indicato.
				echo !TotNro! %%i  															>> FILE_COMANDO_01.txt

	)

				@REM scrivo il totale di file salvati occorre scriver echo. con il Punto (.)
				@REM altrimenti non da lo spazio.
				echo. ------------------------------------------------------  		>> FILE_COMANDO_01.txt
				echo.   															>> FILE_COMANDO_01.txt
				echo.   															>> FILE_COMANDO_01.txt

					echo. TOTALE NRO FILE SALVATI : !TotNro!  						>> FILE_COMANDO_01.txt
				echo.   															>> FILE_COMANDO_01.txt
				echo.   															>> FILE_COMANDO_01.txt
				echo. ------------------------------------------------------  	    >> FILE_COMANDO_01.txt

				@REM apro il file per il controllo
				call FILE_COMANDO_01.txt


goto eof

@REM                               *** FINE ***								
@REM //==========================================================================================//
@REM  :indiv --> 01 Comprimi i file in dir individualmente (senza sottodirectory)
@REM //==========================================================================================//




@REM //==========================================================================================//
@REM  :sindiv --> 02 Comprimi tutti i file in dir e sottodir singolarmente - nessun percorso
@REM //==========================================================================================//
@REM 2. Compress files in directory and subdirectories individually (no paths)
@REM File con lo stesso nome ma estensioni diverse sovrascritte dall'ultima attività

@REM Uses FOR command to recurse through directories. 
@REM Utilizza il comando FOR per ricorrere attraverso le directory.
@REM Files with same name but different exts overwritten by last task
@REM File con lo stesso nome ma estensioni diverse sovrascritte dall'ultima attività
:sindiv
echo.
echo.
	@REM contatore di file
	SET /A 	TotNro=0

		echo						02
		echo	----------------------------------------------------------------------
		echo COMANDO 02 = Comprimi tutti i file in dir e sottodir singolarmente - nessun percorso	> FILE_COMANDO_02.txt
		echo secondo l'ultima attivita.																>> FILE_COMANDO_02.txt
		echo. 																						>> FILE_COMANDO_02.txt
		echo. 																						>> FILE_COMANDO_02.txt


			FOR /R %%b IN (*.*) do (
				c:\CASA\rar.exe a -ep "%%~nb" "%%b"
				
				REM contatore dei file creati
			    Set /a TotNro"="TotNro+1

			    @REM il contatore per essere visibile deve avere il punto interrogativo per l'espansione
			    @REM ritardata + il comando Set di espansione ritardata sopra indicato.
				echo !TotNro! %%b  															>> FILE_COMANDO_02.txt
			    
			    )

				@REM scrivo il totale di file salvati occorre scriver echo. con il Punto (.)
				@REM altrimenti non da lo spazio.
				echo. ------------------------------------------------------  		>> FILE_COMANDO_02.txt
				echo.   															>> FILE_COMANDO_02.txt
				echo.   															>> FILE_COMANDO_02.txt

					echo. TOTALE NRO FILE SALVATI : !TotNro!  						>> FILE_COMANDO_02.txt
				echo.   															>> FILE_COMANDO_02.txt
				echo.   															>> FILE_COMANDO_02.txt
				echo. ------------------------------------------------------  	    >> FILE_COMANDO_02.txt

				@REM apro il file per il controllo
				call FILE_COMANDO_02.txt
							
goto eof


@REM //==========================================================================================//
@REM   :sindiv --> 02 Comprimi tutti i file in dir e sottodir singolarmente - nessun percorso
@REM									  *** FINE ***
@REM //==========================================================================================//


@REM //==========================================================================================//
@REM :03 onearc ---> Comprimi tutti i file in dir in un singolo archivio (senza sottodir)
@REM //==========================================================================================//

@REM 3. Compress all files in directory into a single archive (no subdirectories)
@REM 3. Comprimi tutti i file nella directory in un singolo archivio (nessuna sottodirectory)
@REM Files not specified, *.* is implied and Winc:\CASA\rar.exe will process all files
@REM File non specificati, *. * È implicito e Winc:\CASA\rar.exe elaborerà tutti i file
:onearc
echo.
echo.
echo Today's date and time will be added to the base filename 
echo --- La data e l'ora di oggi verranno aggiunte al nome file di base
		
		SET /P name="Enter base filename for archive (Immettere il nome file di base per l'archivio)"
		SET TitoloFunzioneAttivata_s ="03 onearc - Comprimi tutti i file in dir in un singolo archivio (senza sottodir)"

@REM non funziona ----> c:\CASA\rar.exe a "%name%_%today%"  today da problem quindi escluso
@REM quindi funziona con c:\CASA\rar.exe a name = nome dato da tastiera,  e devi inserire  *.*

		@REM contatore di file
		SET /A 	TotNro=0
		
		echo	03 onearc ---> Comprimi tutti i file in dir in un singolo archivio (senza sottodir)	> FILE_COMANDO_03.txt
		echo	----------------------------------------------------------------------				>> FILE_COMANDO_03.txt
		echo    file archivio dei salvataggi : %name% 												>> FILE_COMANDO_03.txt
		echo 	%TitoloFunzioneAttivata_s%															>> FILE_COMANDO_03.txt
		echo 	Comprimi tutti i file in dir in un singolo archivio (senza sottodir)				>> FILE_COMANDO_03.txt
		echo COMANDO 03= file con lo stesso nome ma con estensioni diverse sovrascritte				>> FILE_COMANDO_03.txt
		echo secondo l'ultima attivita.																>> FILE_COMANDO_03.txt
		echo. 																						>> FILE_COMANDO_03.txt
		echo. 																						>> FILE_COMANDO_03.txt


		@REM ciclo for di salvataggio dei file ex procedura = "%name%_%today%" è stata cambiata in %name% perche
		@REM quella precedente non funiona. E' stata quindi modificata in "%name%" rettificando anche il filtro
		@REM in *.mdb
		FOR %%i IN (*.mdb) do (
			Set /a TotNro"="TotNro+1

		    @REM il contatore per essere visibile deve avere il punto interrogativo per l'espansione
		    @REM ritardata + il comando Set di espansione ritardata sopra indicato.
			echo !TotNro! %%i  															>> FILE_COMANDO_03.txt
			@REM salvo nella lista file gli *.mdb ed utilizzo la lista per l'archiviazione
			@REM dei file in un unico file.rar
			ECHO %%i >> FILE_COMANDO_03_LISTA_FILE.txt
			)
				
				@REM archivio solo quelli della lista file IN UNICO FILE .RAR
				c:\CASA\rar.exe a %name% @FILE_COMANDO_03_LISTA_FILE.txt 

				@REM scrivo il totale di file salvati occorre scriver echo. con il Punto (.mdb)
				@REM con il file prima salvati sul file.txt e poi recuperati nel comando rar parametro @FILE
				echo. ------------------------------------------------------  		>> FILE_COMANDO_03.txt
				echo.   															>> FILE_COMANDO_03.txt
				echo.   															>> FILE_COMANDO_03.txt

					echo. TOTALE NRO FILE SALVATI : !TotNro!  						>> FILE_COMANDO_03.txt
				echo.   															>> FILE_COMANDO_03.txt
				echo.   															>> FILE_COMANDO_03.txt
				echo. ------------------------------------------------------  	    >> FILE_COMANDO_03.txt

				@REM apro il file per il controllo
				call FILE_COMANDO_03.txt


goto eof

@REM //==========================================================================================//
@REM :03 onearc ---> Comprimi tutti i file in dir in un singolo archivio (senza sottodir)
@REM                                *** FINE ***			
@REM //==========================================================================================//


@REM 4. Compress all files in directory and subdirectories into a single archive
@REM 4. Comprimi tutti i file nella directory e nelle sottodirectory in un singolo archivio
:sonearc
echo.
echo.
echo Today's date and time will be added to the base filename
set /P name=Enter base filename for archive (Immettere il nome file di base per l'archivio):
c:\CASA\rar.exe a -r "%name%_%today%" 
goto eof

@REM 5. Compress all files in dir and subdirs into a single archive - no paths
@REM 5. Comprimi tutti i file in dir e sottodirectory in un singolo archivio - nessun percorso
:snponearc
echo.
echo.
echo Today's date and time will be added to the base filename
echo La data e l'ora di oggi verranno aggiunte al nome file di base
set /P name=Enter base filename for archive (Immettere il nome file di base per l'archivio):
c:\CASA\rar.exe a -r -ep "%name%_%today%" 
goto eof

@REM 6. Exit
:nochoice
echo.
echo.
echo No selection made - script exited (Nessuna selezione effettuata - esco dallo script)
:eof

endlocal

echo.
echo "Task Completed"
echo.

pause

@REM --------------------------- exit -----------------------------------------
:end
EXIT /B 0