
@echo off
@CLS
@ECHO ............................................................
@ECHO 		PROCEDURA BAT FOR_FILE_N98_SALVA_BAT_TXT_MD.bat
@ECHO ............................................................
@ECHO. 		


@REM SOSPENSIONE TEMPO IMPOSTATA CON T
@REM ---->	timeout /t 2 /nobreak > NUL
@REM ---->	
@TIMEOUT /T 3 /NOBREAK
@REM Pause



@echo CICLO NELLA CARTELLA CORRENTE SOLO I FILE ESCLUSE LE CARTELLE E SOTTOCARTELLE

@PATH DI ARRIVO O DI SALVATAGGIO 

set PATH_ARRIVO_s="%cd%\AA_SALVATAGGI\"

echo. 
echo controllo della path di ARRIVO:
echo "PATH ARRIVO: " %PATH_ARRIVO_s%
@echo

:----------------------CICLO_FOR  

@rem FOR /F "tokens=*" %%G IN ('dir /b /a-d') DO echo %%G

@REM OPZIONI:
@REM OPZIONE -> dir /b 		= restituisce un elenco semplice dei file e delle sottocartelle nella directory
@REM OPZIONE -> /a-d 		= esclude le sottocartelle
@REM OPZIONE -> "tokens=*" 	= nel comando FOR /F consente di gestire i nomi dei file che contengono spazi.

@echo OFF
@CLS 
@ECHO.



	"C:\Program Files\7-Zip\7z.exe" u -tzip -r "%PATH_ARRIVO_s%ZIP_FOR_FILE_N99_ElencoFile.ZIP" @FOR_FILE_N99_ElencoFile_BAT_TXT_MD.TXT








	



