@echo off
@CLS
@ECHO ............................................................
@ECHO 		PROCEDURA BAT FOR_FILE_N05_LEGGI+EMAIL.bat
@ECHO ............................................................
@ECHO. 		

@REM SOSPENSIONE TEMPO IMPOSTATA CON T
@REM ---->	timeout /t 2 /nobreak > NUL
@REM ---->	
@TIMEOUT /T 3 /NOBREAK
@REM Pause



		 set path="c:\CASA\CDM\LeTorri\2023\"; "c:\CASA\CDM\LeTorri\2024\"; "c:\CASA\CDM\LeTorri\"


set PATH_ARRIVO_s="%cd%\AA_SALVATAGGI\"

echo. 
echo controllo della path di ARRIVO:
echo "PATH ARRIVO: " %PATH_ARRIVO_s%


:----------------------CICLO_FOR= Ciclo For su ogni riga del comando DIR (senza dettagli con le sottocartelle)
echo Prova DIR

@REM L'unico modo per salvare SOLO le cartelle e non i file. Se vuoi salvare anche i file RIMUOVI /A:d
for /f "tokens=*" %%G in ('dir /A:d /B %cd%') do (

	@REM Per ogni cartella diversa da AA_SALVATAGGI...  C:\CASA\Rar.exe a -ep1 "%PATH_ARRIVO_s% %%~nG" "%%~fG"
	echo controllo directory in esame %%G
	echo controllo path da escludere %PATH_ARRIVO_s%
		echo --------------  Estraggo "%%~nG" e salvo nella path di arrivo.

		set PATH_ARRIVO_s="%cd%\AA_SALVATAGGI\"	
        	
		IF "%%~nG"=="LEGGI" (
		ECHO.
		echo  STAMPO LA PATH COMPLETA "%%~fG"  E STAMPO LA CARTELLA DA COMPRIMERE "%%~nG"
		"C:\Program Files\7-Zip\7z.exe" u -tzip -r "%PATH_ARRIVO_s%""%%~nG" @FOR_FILE_N05_LEGGI+EMAIL_ElencoFile.txt
		)



)


