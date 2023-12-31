@echo off


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


@REM ***************************************************************************************************************
@REM                                     *** ESPANSIONE RITARDATA INIZIO ****
@REM
@REM ***************************************************************************************************************
@REM 
@REM
@REM  L'ESPANSIONE RITARDATA DELLE VARIABILI DI AMBIENTE
@REM ---------------------------------------------------------------------------------------
@REM Estensione del prompt.
@REM ENABLEEXTENSION = ATTIVA le estensione DEI COMANDI del prompt (nel file batch locale)
@REM DISABLEEXTENSION = DISATTIVA le estensione DEI COMAND del prompt (nel file batch locale)
@rem setlocal ENABLEEXTENSION   

@REM ENABLEDELAYEDEXPANSION = Attiva l'espansione ritardata della variabile di ambiente (nel file batch locale)
@REM DISABLEDELAYEDEXPANSION = DISATTIVA l'espansione ritardata della variabile di ambiente (nel file batch locale)
	setlocal EnableDelayedExpansion

	@REM                 			IMPOSTO LA VARIABILE PATH
	@REM Path to Winc:\CASA\rar.exe executable in Program Files. Change if location is different
	@REM Percorso all'eseguibile Winc:\CASA\rar.exe in Programmi. Cambia se la posizione è diversa
	@REM ---------------------- Winc:\CASA\rar.exe Directory ------------------------------------
		@REM OLD set path="C:\Program Files\Winc:\CASA\rar.exe\";%path%
		@REM Nuova directory dove si trova winc:\CASA\rar.exe
		@REM  ---> non funziona caminato in quello di sotto ---> set path="c:\CASA\";%path% - 
		@REM qui viene imposta la VARIABILE PATH con espansione RITARDATA
		 set path="c:\CASA\LINGUAGGI\ACCESS\ACCESS_PROGETTI_MDB\CREAZIONE_TABELLE+TREEVIEW+INI\"; "c:\CASA\"; "C:\TMP\PROVA\"

		echo "controllo della path settata:" %path%
		
	@REM ----------------------------------------------------------------------------


@REM ***************************************************************************************************************
@REM                                     *** ESPANSIONE RITARDATA FINE ****
@REM
@REM ***************************************************************************************************************


echo off

:----------------------------SET DELLE VARIABILI PATH DI PARTENZA ED ARRIVO

@REM Se non esiste la cartella AA_SALVATAGGI, la crea.
if not exist "%cd%\AA_SALVATAGGI\" (
	echo Crea la cartella AA_SALVATAGGI
	mkdir %cd%\AA_SALVATAGGI
)

set PATH_ARRIVO_s="%cd%\AA_SALVATAGGI\"

echo. 
echo controllo della path di ARRIVO:
echo "PATH ARRIVO: " %PATH_ARRIVO_s%


:----------------------CICLO_FOR= Ciclo For su ogni riga del comando DIR (senza dettagli con le sottocartelle)
echo Prova DIR

@REM L'unico modo per salvare SOLO le cartelle e non i file. Se vuoi salvare anche i file RIMUOVI /A:d
for /f "tokens=*" %%G in ('dir /B /A:d %cd%') do (

	@REM Per ogni cartella diversa da AA_SALVATAGGI...  C:\CASA\Rar.exe a -ep1 "%PATH_ARRIVO_s% %%~nG" "%%~fG"
	echo controllo directory in esame %%G
	echo controllo path da escludere %PATH_ARRIVO_s%
		IF NOT %%~nG==AA_SALVATAGGI (
		echo --------------  Estraggo "%%~nG" e salvo nella path di arrivo.
		C:\CASA\Rar.exe a -ep1 "%PATH_ARRIVO_s%""%%~nG" "%%~fG"
	)
)
eof


@REM //NOTE DI FUNZIONAMENTO
@REM //============================================================================//
@REM attenzione per il salvataggio sono stati utilizzati questi parametri:
@REM dir 	/b = elenca il contenuto della cartella corrente senza dettagli
@REM 	/s = Mostra il percorso completo di ogni file/cartella E DELLE SOTTOCARTELLE!!!!
@REM 	/a:d = include SOLO LE CARTELLE (escluso perche altrimenti salvava ogni singolo
@REM 	file della sottocartella in un zip)
@REM COMANDO rar
@REM rar.exe	-ep1= esclude la path nel .zip e inserisce solo il nome della sottocartella nell'archivio.	

