
:		PARAMETRI
:---------------------------------------------------------------------
@REM /C = scelte possibili da tastiera
@REM /M = messaggio di sollecito
:---------------------------------------------------------------------



@ECHO  OFF
CLS
:LOOP
CLS

ECHO  ----------------------------------------------------
ECHO  Opzioni  disponibili
ECHO  1.  Disco H 
ECHO  ----------------------------------------------------

@REM scelta automatica n in 3 secondi
CHOICE  /C:SN /M  "Scegli  tra  le  opzioni  disponibili  "



IF  ERRORLEVEL  1  GOTO  LOOP
:DISCO_S
ECHO.	"Scelta SI" 
PAUSE
GOTO  LOOP

IF  ERRORLEVEL  2  GOTO  LOOP
:DISCO_H
ECHO.	"Scelta NO" 
PAUSE
GOTO  LOOP



