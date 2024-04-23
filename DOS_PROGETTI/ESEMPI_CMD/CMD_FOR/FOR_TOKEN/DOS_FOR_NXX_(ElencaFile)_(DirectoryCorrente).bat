@ECHO OFF
@REM.-- Prepare the Command Processor
@REM SETLOCAL ENABLEEXTENSIONS
@REM SETLOCAL ENABLEDELAYEDEXPANSION

:1° IMPOSTO LE VARIABILI
:---------------------------------------}set le variabili e carica path
SET file_DaAprire_s="MODELLO_FILE_DA_APRIRE.txt"

@REM utilizzo SET con il parametro /P perchè si attende l'imput da tastiera, sostituito dall'imput da file
SET /P path_archivi=<%%cd


:2° CONTROLLO
:---------------------------------------}controllo prima se esiste il disco di ricerca altrimenti eseguo la if di errore

@DIR %path_archivi%
@IF ERRORLEVEL 1 (GOTO ERRORE_DISCO_NON_ESISTE)




:3° ESEGUO IL CICLO FOR
:---------------------------------------}Se esiste il disco faccio l'elenco dei file della directory corrente
@REM  ...
	


:4° MESSAGGIO OPERAZIONE + SCRITTURA FILE 
:+ APERTURA FILE DI MESSAGGIO
:---------------------------------------}SCRIVI ED APRI FILE .TXT
echo "%path_archivi%\%file_DaAprire_s%" > PROVA.TXT

(echo.
echo ...............................................................................
echo      MESSAGGIO TESTO
echo.
echo ...............................................................................
ECHO "QUESTA E LA PATH ED IL FILE CARICATO ---> "%path_archivi%\%file_DaAprire_s%"
echo E l'operazione è riuscita con il 
echo salvataggio e apertura del file denomiato prova.txt)>>prova.txt
call %file_DaAprire_s%_FILE_APERTO.txt





@REM 					LA ROUTINE DI GESTIONE DEGLI ERRORI
:ERRORE_DISCO_NON_ESISTE
:----------------------------------------------------------------------------------------USCITA ERRORE DISCO

@REM  le variabili dei messaggi da utilizzare
:SET  Testo_01 = "---------------> "ERRORE DISCO E PATH NON ESISTENTE "			
:SET  Testo_02 = "---------------> "PATH E FILE RICERCATI" "%path_archivi%\%file_DaAprire_s% "			
:
SET Testo_03="controllare se esiste la path e il disco!"

echo SET %Testo_03%
		echo.
		echo.
		echo."=================================================================="
		echo."				CONTROLLO ESISTENZA DISCO  E PATH:"
		echo.
		echo."---------------> "ERRORE DISCO E PATH NON ESISTENTE "			
		echo."PATH E FILE RICERCATI" "%path_archivi%\%file_DaAprire_s%"
		echo."controllare se esiste la path e il disco!"
		echo.
		echo."=================================================================="
		echo. %Testo_03%
		

		@REM Ritardo per /T:2 secondi
		@choice /C:X /N /T:2 /D:X > NUL
		
			@REM Uscita dalla procedura batch
			EXIT /B
					

:==========================================================================================FINE
		


********************************************************************************************************************
			ESEMPI, NOTE ED ISTRUZIONI

********************************************************************************************************************

:___________________________________________________________esempi

@REM....&@echo off
@REM ...crea in un file batch .txt 
goto:commento multi linea
il commento multi linea viene formato con  questi comandi 
e puo essere utilizzato a scrittura libera:
il user name e password e questo commento non deve stare
:commento



NOTE SET

@REM http://www.sullaprogrammazione.com/dos-batch-impostare-una-variabile-con-un-valore-letto-da-un-file.html

@REM Recupero il parametro da un file salvato su c:
@REM esempio A partire da Windows 2000, il 
@REM comando SET può essere invocato con il parametro /P. (SET /P variabile = [PromptSring]
@REM  In quel caso, SET si aspetta un input dell'utente. 
@REM [PromptString] sarà il testo proposto all'utente, il quale in risposta digiterà un 
@REM valore che sarà inserito nella variabile specificata.
@REM Se aggiungo al segno uguale "=" il segno di ridirezione "<" e poi il nome di un file, 
@REM l'input arriverà dal file invece che dalla tastiera.
@REM ATTENZIONE il comando parte destra e i valori parte sinistra devono essere senza spazi
@REM altrimenti set non viene valorizzata. Es. SET Variabile=Valore (ERRORE SET Variabile = Valore.. non viene valorizzata) 

	



