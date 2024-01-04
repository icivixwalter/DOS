@echo off

Title compress_rar_rev3.bat

@REM updated 12/13/2017

@REM							NOTE PRINCIPALI					
@REM ==============================================================================================================
@REM This script compresses files in a folder specified by the user 
@REM individually or into a single archive in *.rar format (WinRAR's default) 
@REM with the option to include subfolders. Saved files are placed in the  
@REM specified directory unless otherwise noted. Files with same name but 
@REM different exts overwritten by last task for options 1 and 2
@REM Option 4 is the most commonly used option
@REM ------------------------------------------------------------------------------------------
@REM Questo script comprime i file in una cartella specificata dall'utente
@REM singolarmente o in un singolo archivio in formato * .rar (impostazione predefinita di WinRAR)
@REM con l'opzione per includere sottocartelle. I file salvati vengono inseriti in Directory 
@REM specificata se non diversamente specificato. File con lo stesso nome ma
@REM diversi estinti sovrascritti dall'ultima attività per le opzioni 1 e 2 L'opzione 
@REM 4 è l'opzione più comunemente usata
@REM
@REM WEB --->https://cects.com/wp-content/uploads/2012/01/compress_rar_rev3.bat_.txt
@REM WEB --->https://cects.com/using-the-winrar-command-line-tools-in-windows/
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
	@REM	la cartella di compressione  dove vengono salvati
	@REM	gli archivi rar o 7z      @directory.di.compressione
	set dir="c:\CASA\CDM\LaQuercia\LaQuercia_2021_2022\DOC\DA_PAGARE_SUBITO\PARCELLA_2_DA_PAGARE\"
@REM ----------------------------------------------------------------------------



@REM Path to WinRAR executable in Program Files. Change if location is different
@REM Percorso all'eseguibile WinRAR in Programmi. Cambia se la posizione è diversa
@REM ---------------------- WinRAR Directory ------------------------------------
	@REM OLD set path="C:\Program Files\WinRAR\";%path%
	@REM Nuova directory dove si trova winrar
	@REM  ---> non funziona camibiato in quello di sotto ---> set path="c:\CASA\";%path%
	 set path="c:\CASA\"
	
	echo la cartella dove si trova il compattatore rar o 7z
	echo "controllo della path settata:" %path%
@REM ----------------------------------------------------------------------------





@REM change working dir to dir specified above
@REM cambia la directory di lavoro in quella sopra specificata
@ECHO 01) cambio la directori
cd %dir%

@REM Replace space in hour with zero if it's less than 10
@ECHO 02) Sostituisci lo spazio in ore con zero se è inferiore a 10
SET hr=%time:~0,2%
IF %hr% lss 10 SET hr=0%hr:~1,1%

@REM This sets the date like this: mm-dd-yr-hhmmssss (includes 1/100 secs)
@ECHO 03) Questo imposta la data in questo modo: mm-dd-yr-hhmmssss (include 1/100 secs)
Set TODAY=%date:~3,2%-%date:~7,2%-%date:~10,4%-%hr%%time:~3,2%^d
%time:~6,2%%time:~9,2%

@ECHO  CONTROLLO DATA TODAY  = %TODAY%
@ECHO  CONTROLLO TIME        = %time:~6,2%%time:~9,2%

PAUSE

echo.
echo Folder to compress in *.RAR format:
echo Cartella da comprimere in formato * .RAR
echo %dir%
echo.
echo.

echo 1. Compress files in dir individually (no subdirs) 			 			
echo 	===== Comprimi i file in dir individualmente (senza sottodirectory)
echo	
echo 2. Compress all files in dir and subdirs individually - no path 			
echo   ===== Comprimi tutti i file in dir e sottodir singolarmente - nessun percorso	
echo         LE SOTTODIRECTORY  vengono compresso solo se popolate.
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
		echo COMANDO 02 = file con lo stesso nome ma con estensioni diverse sovrascritte	> FILE_COMANDO_02.txt
		echo secondo l'ultima attivita.								>> FILE_COMANDO_02.txt
		echo. 											>> FILE_COMANDO_02.txt
		echo. 7z a archive1.zip subdir\								>> FILE_COMANDO_02.txt

		FOR %%i IN (*.*) do (
			c:\CASA\WinRAR\rar a "%%~ni" "%%i"

				REM contatore dei file creati
			    Set /a TotNro"="TotNro+1

			    @REM il contatore per essere visibile deve avere il punto interrogativo per l'espansione
			    @REM ritardata + il comando Set di espansione ritardata sopra indicato.
				echo !TotNro! %%i  															>> FILE_COMANDO_02.txt

	)

				@REM scrivo il totale di file salvati occorre scriver echo. con il Punto (.)
				@REM altrimenti non da lo spazio.
				echo. ------------------------------------------------------  		>> FILE_COMANDO_02.txt
				echo.   															>> FILE_COMANDO_02.txt
				echo.   															>> FILE_COMANDO_02.txt

					echo. TOTALE NRO FILE SALVATI : !TotNro!  										>> FILE_COMANDO_02.txt
				echo.   															>> FILE_COMANDO_02.txt
				echo.   															>> FILE_COMANDO_02.txt
				echo. ------------------------------------------------------  	    >> FILE_COMANDO_02.txt

				@REM apro il file per il controllo
				call FILE_COMANDO_02.txt


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
		echo COMANDO 02 = file con lo stesso nome ma con estensioni diverse sovrascritte	> FILE_COMANDO_02.txt
		echo secondo l'ultima attivita.														>> FILE_COMANDO_02.txt
		echo. 																				>> FILE_COMANDO_02.txt
		echo. 																				>> FILE_COMANDO_02.txt


			FOR /R %%b IN (*.*) do (
				c:\CASA\WinRAR\rar a -ep "%%~nb" "%%b"
				
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
@REM :03 onearc ---> Comprimi tutti i file in dir in un singolo archivio (senza sottodir) @non.funziona
@REM //==========================================================================================//

@REM 3. Compress all files in directory into a single archive (no subdirectories)
@REM 3. Comprimi tutti i file nella directory in un singolo archivio (nessuna sottodirectory)
@REM Files not specified, *.* is implied and WinRAR will process all files
@REM File non specificati, *. * È implicito e WinRAR elaborerà tutti i file
:onearc
echo.
echo.
echo Today's date and time will be added to the base filename 
echo --- La data e l'ora di oggi verranno aggiunte al nome file di base
		@rem  @DA.ERRORE = non funzione il nome del file
		SET /P name="Enter base filename for archive (Immettere il nome file di base per l'archivio)"
		echo controllo nome file : %name%
		pause
		SET /P TitoloFunzioneAttivata_s ="03 onearc - Comprimi tutti i file in dir in un singolo archivio (senza sottodir)"

@REM non funziona ----> today da problem quindi escluso
@ECHO controllo nome file "%name%_%today%.rar"  
c:\CASA\WinRAR\rar a "%name%_%today%.rar"  
PAUSE
@REM quindi funziona con c:\CASA\WinRAR\rar aname = nome dato da tastiera,  e devi inserire  *.*

		@REM contatore di file
		SET /A 	TotNro=0
		
		echo						03
		echo	----------------------------------------------------------------------
		echo    file archivio dei salvataggi : %name% 
		echo 	%TitoloFunzioneAttivata_s%
		echo 	Comprimi tutti i file in dir in un singolo archivio (senza sottodir)
		echo COMANDO 03= file con lo stesso nome ma con estensioni diverse sovrascritte		> FILE_COMANDO_03.txt
		echo secondo l'ultima attivita.														>> FILE_COMANDO_03.txt
		echo. 																				>> FILE_COMANDO_03.txt
		echo. 																				>> FILE_COMANDO_03.txt


		@REM ciclo for di salvataggio dei file
		FOR %%i IN (*.*) do ( c:\CASA\WinRAR\rar a "%name% "%%~ni"" "%%i"

			Set /a TotNro"="TotNro+1

		    @REM il contatore per essere visibile deve avere il punto interrogativo per l'espansione
		    @REM ritardata + il comando Set di espansione ritardata sopra indicato.
			echo !TotNro! %%i  								>> FILE_COMANDO_03.txt

			)

				@REM scrivo il totale di file salvati occorre scriver echo. con il Punto (.)
				@REM altrimenti non da lo spazio.
				echo. ------------------------------------------------------  		>> FILE_COMANDO_03.txt
				echo.   								>> FILE_COMANDO_03.txt
				echo.   								>> FILE_COMANDO_03.txt
					echo. TOTALE NRO FILE SALVATI : !TotNro!  			>> FILE_COMANDO_03.txt
				echo.   								>> FILE_COMANDO_03.txt
				echo.   								>> FILE_COMANDO_03.txt
				echo. ------------------------------------------------------  	    	>> FILE_COMANDO_03.txt

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
c:\CASA\WinRAR\rar a-r "%name%_%today%" 
goto eof

@REM 5. Compress all files in dir and subdirs into a single archive - no paths
@REM 5. Comprimi tutti i file in dir e sottodirectory in un singolo archivio - nessun percorso
:snponearc
echo.
echo.
echo Today's date and time will be added to the base filename
echo La data e l'ora di oggi verranno aggiunte al nome file di base
set /P name=Enter base filename for archive (Immettere il nome file di base per l'archivio):
c:\CASA\WinRAR\rar a-r -ep "%name%_%today%" 
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