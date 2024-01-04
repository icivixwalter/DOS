
@REM Trim Citazioni - Rimuovi le virgolette che circondano tramite comando FOR
@REM Descrizione: 	Il comando per può essere usato per rimuovere in modo sicuro le virgolette 
@REM che circondano una stringa. Se la stringa non ha citazioni allora rimarrà invariato.

ECHO OFF


set str="cmd politic"
echo.%str%
for /f "useback tokens=*" %%a in ('%str%') do set str= %%~a
echo.%str%

PAUSE