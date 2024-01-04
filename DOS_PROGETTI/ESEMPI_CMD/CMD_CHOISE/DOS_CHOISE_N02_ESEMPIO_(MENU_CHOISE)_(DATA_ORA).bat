
:		PARAMETRI
:---------------------------------------------------------------------
@REM /C = scelte possibili da tastiera
@REM /M = messaggio di sollecito
:---------------------------------------------------------------------



@ECHO  OFF
CLS
:MENU
CLS
ECHO  ------------
ECHO  Opzioni  disponibili
ECHO  1.  Data  corrente
ECHO  2.  Ora  corrente
ECHO  3.  Uscita
ECHO  ------------
CHOICE  /C  123  /M  "Seleziona  un'opzione  "
IF  ERRORLEVEL  3  GOTO  FINE
IF  ERRORLEVEL  2  GOTO  ORA
IF  ERRORLEVEL  1  GOTO  DATA
IF  NOT  ERRORLEVEL  0  GOTO  MENU
:DATA
DATE
PAUSE
GOTO  MENU
:ORA
TIME
PAUSE
GOTO  MENU