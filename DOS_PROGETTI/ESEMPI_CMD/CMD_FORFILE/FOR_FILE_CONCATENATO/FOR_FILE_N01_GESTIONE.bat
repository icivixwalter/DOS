@REM @salvataggio@cartelle_(salvo le cartelle con filtri flessibili)
@REM FOR FILE concatenato, salvataggio delle directory con filtri


@echo off

@CLS
@ECHO ............................................................
@ECHO 		ATTIVO I SALVATAGGI COLLETTIVI DEI BAT CHIAMATI
@ECHO 		il salvataggio delle cartelle avviene con bat 
@ECHO 		richiamati in seguenza che attivano le procedure di
@ECHO 		7zip con file.txt differenti per ogni salataggio
@ECHO 		esempio: salvo la cartella FILE 2021_2022 CON 
@ECHO 				esclusione della sottocartelle dei salvataggi.
@ECHO ............................................................
@ECHO. 		


@REM ATTIVO I BAT SEPARATAMENTE

@ECHO attivo FOR_FILE_N02_2021_2022.bat  		
START "2021" CALL FOR_FILE_N02_2021_2022.bat



@ECHO attivo FOR_FILE_N04_2023_2024.bat
START "2021" call FOR_FILE_N04_2023_2024.bat




@ECHO FOR_FILE_N05_LEGGI+EMAIL.bat
START "LEGGI" call FOR_FILE_N05_LEGGI+EMAIL.bat


@ECHO FOR_FILE_N05_LEGGI+EMAIL.bat

START "FILE CORRENTI"C ALL FOR_FILE_N98_SALVA_BAT_TXT_MD.bat


@ECHO ............................................................
@ECHO. 				°°°° FINE °°°° 


EXIT


