
:		PARAMETRI
:---------------------------------------------------------------------
@REM /C = scelte possibili da tastiera
@REM /M = messaggio di sollecito
:---------------------------------------------------------------------



@ECHO  OFF
CLS
:MENU
CLS

ECHO  ----------------------------------------------------
ECHO  Opzioni  disponibili
ECHO  1.  Disco H
ECHO  2.  Disco J
ECHO  3.  Uscita
ECHO  ----------------------------------------------------

CHOICE  /C  123  /M  "Seleziona  un'opzione  "
IF  ERRORLEVEL  3  GOTO  FINE
IF  ERRORLEVEL  2  GOTO  DISCO_J
IF  ERRORLEVEL  1  GOTO  DISCO_H
IF  NOT  ERRORLEVEL  0  GOTO  MENU

:DISCO_H
ECHO.	"salvataggi su DISCO_H" 
PAUSE
GOTO  MENU

:DICHO_J
ECHO.	"salvataggi su DISCO_J" 
PAUSE
GOTO  MENU


:FINE
ECHO.	"++++++++++++++++"
ECHO.	"Fine procedura"
pause

