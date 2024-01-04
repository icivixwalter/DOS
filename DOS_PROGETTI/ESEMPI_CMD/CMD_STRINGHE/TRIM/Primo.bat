@ECHO OFF
TITLE Istruzione CALL
ECHO.
ECHO Premi un tasto per chiamare il secondo script batch.
ECHO.
PAUSE>NUL
REM APERURA DEL SECONDO SCRIPT
CALL Secondo.bat
REM RITORNO DAL SECONDO SCRIPT
COLOR 0F
ECHO.
ECHO Sono ritornato nel primo script
ECHO.
ECHO Premi un tasto per uscire
PAUSE>NUL
