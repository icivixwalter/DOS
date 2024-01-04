
@echo.
@echo 00) ----------------------------------------- INIZIO 
@echo	ATTIVO COMANDO FORM COPIA DIRECTORY, imposto @echo off
@echo   ARCHIVIA LE CARTELLE UNA DENTRO L'ALTRA IN MODO RICORSIVO
@echo. 
	@echo off
@echo 00) ----------------------------------------- Fine*** 
@echo.


@echo 01) ----------------------------------------- INIZIO
@echo.
	@echo IMPOSTO LE VARIABILI DI LAVORO +
	@echo IMPOSTO LA DIRECTOY DI PARTENZA + IL FILE TXT DEI PARAMETRI 
	@echo imposta la directory di salvataggio ed effettuo il controllo
	@echo della variabile di salvataggio della directory attivando il dir su di essa.
	@echo Salvo nel file DOS_PARAMETRI.TXT l'elenco delle directory da salvare.
	@echo ATTENZIONE il programma archivia in modo ricorsivo le cartelle, una
	@echo dentro l'altra; in pratica salva la prima, poi crea la seconda cartella
	@echo e salva la prima sulla seconda e cosi continuando. Di conseguenza
	@echo l'ultima contiene tutti gli zip archiviati dal primo all'ultimo
	@echo. 
	
	
	@echo   RESET DIRECTORY DI PARTENZA
	@echo	Creo la variabile DIRECTORY DI PARTENZA per il prelievo dei dati 
	@echo   + dir di controllo
	@echo.
	set DIRECTORY_PARTENZA_s="K:\Casa\Linguaggi\VISUAL_STUDIO_2005\VISUAL_CPP\PROGETTI_JON_BATES_VISUAL_C++6\"	

	
	@echo   RESET DIRECTORY DI ARRIVO
	@echo	Creo la variabile per la directory di salvataggio dei dati 
	SET %DIRECTORY_ARRIVO_s% = "c:\TMP\tmp\"
	
	@echo   CREO UNA DIRECTORY DI ARRIVO
	@echo	per i salvataggi e devo utilizzare MD con la directoy completa
	@echo   non potendo usare la variabile perche non funziona.
	
	
	@echo	CREO UN FILE PARAMETRI
	@echo.
	DIR /A/B %DIRECTORY_PARTENZA_s% > DOS_PARAMETRI.TXT

@echo 01) ----------------------------------------- Fine*** 


@echo 02) ----------------------------------------- INIZIO 
@echo	ATTIVO IL CICLO FORM PER SALVARE .ZIP LE DIRECTORY
@echo	ciclo form per ogni directory caricando il nome
@echo. 
	
	
	echo ------ESEGUO IL SALVATAGGIO SUL DISCO K
	
	for /f "tokens=*" %%a in (DOS_PARAMETRI.TXT) do (
	  CD "%%a"
	  c:\casa\rar.exe a %DIRECTORY_ARRIVO_s% %%a.zip"
	  
	)

	
	md %DIRECTORY_ARRIVO_s%
	
@echo 02) ----------------------------------------- Fine*** 
@echo.




pause

