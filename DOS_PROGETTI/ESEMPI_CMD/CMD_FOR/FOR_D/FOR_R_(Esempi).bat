


ECHO OFF

@ECHO IMPOSTO LA PATH DI PARTENZA
SET Path_s=\Gestioni\GESTIONE_LLPP\


@ECHO.
@ECHO.
@ECHO ESEMPIO FOR D SU CARTELLA PRINCIPALE SOTTOCARTELLE
@ECHO FOR /D = Eseguire condizionalmente un comando su più directory/cartelle.
@ECHO Nell'esempio viene elencato ogni sottocartella, dalla principale %Path_s% 
@ECHO da cui viene ricercata ogni sottocartella che inizia con "ARCHIVI*":
@ECHO la path di inizio %Path_s%
@ECHO   	E NELLE SUE SOTTOCARTELLE con il ciclo FOR /d



@Echo Off
CD %Path_s%
DIR
FOR /D /r %%G in ("ARCHIVI*") DO Echo We found %%~nxG 

PAUSE




exit

:blocco



@rem non funziona

@Echo Off

@ECHO
SET Path_s=C:\Gestioni\GESTIONE_LLPP\
@ECHO
@ECHO

@ECHO II ESEMPIO FOR D SU CARTELLA PRINCIPALE SOTTOCARTELLE
@ECHO FOR /D = Eseguire UNA RICORSIONE su tutte le sottocartelle %Path_s% 
@ECHO e se estono le sottocartelle che iniziano con ARCHIVI rinominarle in ARCHIVI 2 o altro.

pause



FOR /D /R %%a in (C:\demo) DO if "%~Na" equ "version 1" echo "%%a" "version 2"

PAUSE



goto blocco


