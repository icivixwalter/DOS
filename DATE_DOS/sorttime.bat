@ECHO OFF
:: SortTime, Version 2.10 for Windows NT
:: Save time and "sorted" time in environment variables.
::
:: This batch file will always display the same results,
:: independent of "International" settings.
:: This batch file uses REG.EXE from the NT Resource Kit
:: to read the "International" settings from the registry.
::
:: Written by Rob van der Woude
:: http://www.robvanderwoude.com

FOR /F "TOKENS=*" %%A IN ('TIME/T') DO SET TIME=%%A
:: Delims is a TAB followed by a space
FOR /F "TOKENS=2* DELIMS=	 " %%A IN ('REG QUERY "HKEY_CURRENT_USER\Control Panel\International\iTime"') DO SET iTime=%%B
FOR /F "TOKENS=2* DELIMS=	 " %%A IN ('REG QUERY "HKEY_CURRENT_USER\Control Panel\International\sTime"') DO SET sTime=%%B
IF %iTime%==1 GOTO Sort
SET AMPMTIME=%TIME%
FOR /F "TOKENS=1,2* DELIMS=%sTime% " %%A IN ('ECHO %TIME%') DO (
	SET HOUR=%%A
	SET MINS=%%B
)
SET AMPM=%MINS:~2,1%
SET MINS=%MINS:~0,2%
IF %HOUR% LSS 12 IF /I %AMPM%==P SET /A HOUR=%HOUR%+12
IF %HOUR% LSS 10 IF /I %AMPM%==A SET HOUR=0%HOUR%
IF %HOUR% EQU 12 IF /I %AMPM%==A SET HOUR=00
SET TIME=%HOUR%%sTime%%MINS%

:Sort
FOR /F "TOKENS=1,2* DELIMS=%sTime% " %%A IN ('ECHO %TIME%') DO SET SORTTIME=%%A%%B
ECHO It's %TIME% now
:: Thanks for Holger Stein who mailed me this correction (add leading zero):
IF %SORTTIME% LSS 1000 SET SORTTIME=0%SORTTIME%
ECHO For sorting purposes: %SORTTIME%

pause