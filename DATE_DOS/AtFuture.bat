@ECHO OFF
SETLOCAL

:: Get command line arguments
:: first argument   -> fAmt = Amount of time in the future to schedual
:: second argument  -> fCmd = Command to be executed
:: [third argument] -> fOpt = "none" as third option disables
::                            /INTERACTIVE on the job

:: Set to TRUE for troubleshooting
SET DEBUG=FALSE

:: Check command line arguments
IF "%2"=="" goto Usage

SET fAmt=%1  
SET fCmd=%2

:: Check if specified time is within limits
IF %fAmt% GTR 60 GOTO Usage
IF %fAmt% LSS  2 GOTO Usage

::Default value
IF "%3"=="" (SET fOpt=/INTERACTIVE) ELSE (SET fOpt=%3)
IF /I "%fOpt:~0,1%"=="N" SET fOpt=

:: For troubleshooting purposes
IF "%DEBUG%"=="TRUE" ECHO fAmt %fAmt%  fCmd %fCmd%  fOpt %fOpt%

:: Date and time functions for NT, independent of International settings
:: Export registry settings to a temporary .REG file
START /W REGEDIT /E %TEMP%.\_TEMP.REG "HKEY_CURRENT_USER\Control Panel\International"

:: Read the exported data, filtering out keys added by Windows 2000
FOR /F "tokens=1* delims==" %%A IN ('TYPE %TEMP%.\_TEMP.REG ^| FIND /I "iDate"') DO SET iDate=%%B
FOR /F "tokens=1* delims==" %%A IN ('TYPE %TEMP%.\_TEMP.REG ^| FIND /I "sDate"') DO SET sDate=%%B
FOR /F "tokens=1* delims==" %%A IN ('TYPE %TEMP%.\_TEMP.REG ^| FIND /I "iTime" ^| FIND /I /V "iTimePrefix"') DO SET iTime=%%B
FOR /F "tokens=1* delims==" %%A IN ('TYPE %TEMP%.\_TEMP.REG ^| FIND /I "sTime" ^| FIND /I /V "sTimeFormat" ^| FIND /I /V "sTimePrefix"')  DO SET sTime=%%B

:: Remove quotes
SET iDate=%iDate:"=%
SET sDate=%sDate:"=%
SET iTime=%iTime:"=%
SET sTime=%sTime:"=%

:: Delete temporary .REG file
IF EXIST %TEMP%.\_TEMP.REG DEL %TEMP%.\_TEMP.REG

:: Parse current date, using International settings from the registry
IF "%iDate%"=="0" FOR /F "TOKENS=1-4* DELIMS=%sDate% " %%A IN ('DATE/T') DO (
	SET CYear=%%D
	SET CMonth=%%B
	SET CDay=%%C
	SET SortDate=%%D%%B%%C
)
IF "%iDate%"=="1" FOR /F "TOKENS=1-4* DELIMS=%sDate% " %%A IN ('DATE/T') DO (
	SET CYear=%%D
	SET CMonth=%%C
	SET CDay=%%B
	SET SortDate=%%D%%C%%B
)
IF "%iDate%"=="2" FOR /F "TOKENS=1-4* DELIMS=%sDate% " %%A IN ('DATE/T') DO (
	SET CYear=%%B
	SET CMonth=%%C
	SET CDay=%%D
	SET SortDate=%%B%%C%%D
)

:: Remove leading zeroes
SET /A CMonth = 1%CMonth% - 100
SET /A CDay   = 1%CDay%   - 100

:: Parse current time, using International settings from the registry
FOR /F "TOKENS=1,2* DELIMS=%sTime% " %%A IN ('TIME/T') DO (
	SET CHour=%%A
	SET CMins=%%B
	SET SortTime=%%A%%B
)
IF "%iTime%"=="1" GOTO SkipAmPm

:: Process AM/PM
SET AMPM=%CMins:~2,1%
SET CMins=%CMins:~0,2%

:: Remove leading zero from hours (only if necessary)
IF "%CHour:~0,1%"=="0" IF NOT "%CHour%"=="0" SET /A CHour = 1%CHour% - 100

:: Convert from 12 hour AM/PM format to 24 hour format
IF %CHour% LSS 12 IF /I "%AMPM%"=="P" SET /A CHour = %CHour% + 12
IF %CHour% EQU 12 IF /I "%AMPM%"=="A" SET CHour=0
:SkipAmPm

:: Remove leading zeroes (CMins always has 2 digits,
:: with CHours we have to check if 1 or 2 digits are
:: used, we may have removed the leading zero ourselves)
SET /A CMins = 1%CMins% - 100
IF "%CHour:~0,1%"=="0" IF NOT "%CHour%"=="0" SET /A CHour = 1%CHour% - 100

:: Display Time Variables when troubleshooting
IF /I "%DEBUG%"=="TRUE" SET C | FIND /I /V "COM"
IF /I "%DEBUG%"=="TRUE" SET SORT

::Temporary variable for deciding when to roll to next hour
SET /A tMax = 59 - %fAmt%
IF %CMins% GTR %tMax% (CALL :RollHour) ELSE (SET /A CMins = %CMins% + %fAmt%)

:: Restore leading zeroes
IF %CMins% LSS 10 SET CMins = 0%CMins%
IF %CHour% LSS 10 SET CHour = 0%CHour%

:: ** Here is the actual AT job set
AT %CHour%:%CMins% %fOpt% cmd /c %fCmd%

:: Done
GOTO End


::****************************  SUB ROUTINES

:RollHour
:: CMins + fAmt is greater than 60.  so we need to increment CHour
SET /A CMins = %CMins% - 60 + %fAmt%
:: If its 23 hundred hours and we're going to add one
:: hour we need to goto 00 but rather than using another goto
:: we'll just set to -1 then increment by 1
IF %CHour% EQU 23 SET CHour=-1
SET /A CHour = %CHour% + 1
GOTO:EOF


:Usage
ECHO.
ECHO ATFUTURE.BAT,  Version 1.20 for Windows NT
ECHO Schedule a command a specified number of minutes in the near future
ECHO.
ECHO Usage:  %~n0  minutes  command  [opt]
ECHO.
ECHO Where:  minutes = number of minutes in future to schedule command ^(2-60^)
ECHO         command = command to be executed ^(executed as CMD /C command^);
ECHO                   for long file names or extra command line parameters,
ECHO                   enclose the entire command in double quotes
ECHO         opt     = options for at:
ECHO                   None will set none
ECHO                   /INTERACTIVE by default
ECHO.
ECHO Written by Rob Fuller
ECHO rob_s_fuller@yahoo.com
ECHO and Rob van der Woude
ECHO http://www.robvanderwoude.com
GOTO End


:End
ENDLOCAL
pause