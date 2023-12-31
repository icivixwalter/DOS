@echo off

@REM  @archivia@le@cartelle_(esempio bat per l'archiviazione delle cartelle con i file)
@REM  @CARTELLE@ARCHIVIA_(ricordati di)
@REM  @salvataggi@cartelle_(salvataggio dei dati nelle cartelle)
@REM  @salvataggio@cartelle_(utilizzo del ciclo for file per il salvataggio delle cartell e + dati)


@REM @FAQ
@REM		@01_MEMO@PATH = ricordati di cambiare la path di partenza
@REM		@02_MEMO@PATH = ricordati di cambiare se necessare il compressore

@REM  I PARAMETRI PER IL SALVATAGGIO DELLE CARTELLE
@REM PATH DI ARRIVO:
@REM  				la path di arrivo viene ricavata automaticamente con il comando

@REM PATH DI PARTENZA   @01_MEMO@PATH
@REM 				la parth di partenza do controllo i file da zippare è la seguente.
SET  PATH_PART_S="c:\CASA\LINGUAGGI\DOS\DOS_PROGETTI\"

REM @titolo
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
@REM  @espsanione @ritardata
@REM  L'ESPANSIONE RITARDATA DELLE VARIABILI DI AMBIENTE
@REM ---------------------------------------------------------------------------------------
@REM Estensione del prompt.
@REM ENABLEEXTENSION = ATTIVA le estensione DEI COMANDI del prompt (nel file batch locale)
@REM DISABLEEXTENSION = DISATTIVA le estensione DEI COMAND del prompt (nel file batch locale)
@rem setlocal ENABLEEXTENSION   

@REM ENABLEDELAYEDEXPANSION = Attiva l'espansione ritardata della variabile di ambiente (nel file batch locale)
@REM DISABLEDELAYEDEXPANSION = DISATTIVA l'espansione ritardata della variabile di ambiente (nel file batch locale)
	setlocal EnableDelayedExpansion

	@REM                 			IMPOSTO LA VARIABILE PATH DI PARTENZA
	@REM Path to Winc:\CASA\rar.exe executable in Program Files. Change if location is different
	@REM Percorso all'eseguibile Winc:\CASA\rar.exe in Programmi. Cambia se la posizione è diversa
	@REM ---------------------- Winc:\CASA\rar.exe Directory ------------------------------------
		@REM OLD set path="C:\Program Files\Winc:\CASA\rar.exe\";%path%
		@REM Nuova directory dove si trova winc:\CASA\rar.exe
		@REM  ---> non funziona caminato in quello di sotto ---> set path="c:\CASA\";%path% - 
		@REM qui viene imposta la VARIABILE PATH con espansione RITARDATA
		@REM  path = nella variabile path vengolo salvate 3 cartelli di partenza.
		 set path=%PATH_PART_S%; "c:\CASA\"; "C:\TMP\PROVA\"
		 

		echo "controllo della path settata:" %path%
		
	@REM ----------------------------------------------------------------------------


@REM ***************************************************************************************************************
@REM                                     *** ESPANSIONE RITARDATA FINE ****
@REM
@REM ***************************************************************************************************************


echo off

:----------------------------SET DELLE VARIABILI PATH DI PARTENZA ED ARRIVO

@REM CREAZIONE DELLA PATH SALVATAGGI SE NON ESISTE
@REM Se non esiste la cartella AA_SALVATAGGI, la crea.
@REM @creazione@cartella_(la @cartella @PATH@salvataggi viene @creata in modo @automatico se non esiste già essa viene denominata AA_SALVATAGGI)
if not exist "%cd%\AA_SALVATAGGI\" (
	echo Crea la cartella AA_SALVATAGGI
	mkdir %cd%\AA_SALVATAGGI
)


@REM  la path di arrivo è quella dei salataggi dei zip 
set PATH_ARRIVO_s="%cd%\AA_SALVATAGGI\"

echo. 
echo controllo della path di ARRIVO:
echo "PATH ARRIVO: " %PATH_ARRIVO_s%


:----------------------CICLO_FOR= Ciclo For su ogni riga del comando DIR (senza dettagli con le sottocartelle)
echo Prova DIR

@REM dir /A:d = SALVATAGGIO DELLE CARTELLE ;L'unico modo per salvare SOLO le cartelle e non i file. 
@REM Se vuoi salvare anche i file RIMUOVI /A:d
@REM  ciclo for /f = per le cartelle + file contenuti
for /f "tokens=*" %%G in ('dir /A:d /B %cd%') do (

	@REM Per ogni cartella diversa da AA_SALVATAGGI...  C:\CASA\Rar.exe a -ep1 "%PATH_ARRIVO_s% %%~nG" "%%~fG"
	echo controllo directory in esame %%G
	echo controllo path da escludere %PATH_ARRIVO_s%
		IF NOT %%~nG==AA_SALVATAGGI (
		echo --------------  Estraggo "%%~nG" e salvo nella path di arrivo.

		@REM  COMPRESSORE RAR: se non usi il compressore rar utilizza quello successivo 7zpi
		@rem bloccato ---> C:\CASA\Rar.exe a -ep1 "%PATH_ARRIVO_s%""%%~nG" "%%~fG"
		

		@REM  @attenzione@compressore_(se cambi da 7zip a rar occore anche modificare _
		@REM  il compressore da 7zip a RAR o ZIP a seconda di quello registrato)
		@rem  COMPRESSORE ATTIVO 7ZIP la posto del rar. 	@02_MEMO@PATH
		"C:\Program Files\7-Zip\7z.exe" u -tzip -r "%PATH_ARRIVO_s%""%%~nG" "%%~fG"

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

