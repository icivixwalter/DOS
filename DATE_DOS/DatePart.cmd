@ECHO OFF
ECHO.

:: Check Windows version (XP Pro or later)
IF NOT "%OS%"=="Windows_NT" GOTO Syntax

:: Check command line argument (one mandatory)
IF     "%~1"=="" GOTO Syntax
IF NOT "%~2"=="" GOTO Syntax


:: Check if help is required
ECHO.%1 | FINDSTR.EXE /R /C:"[/?\.]" >NUL && GOTO Syntax

:: Check if WMIC is available
WMIC.EXE Alias /? >NUL 2>&1 || GOTO Syntax

:: Localize variables
SETLOCAL ENABLEDELAYEDEXPANSION

:: Reset/initialize the variables used
SET DatePart=
SET Day=
SET Month=
SET Year=
SET Error=0

:: Fill array with valid arguments
SET DatePart.d=Day
SET DatePart.Day=Day

SET DatePart.h=Hour
SET DatePart.Hour=Hour

SET DatePart.i=DST
SET DatePart.DST=DST

SET DatePart.l=LeapYear
SET DatePart.LeapYear=LeapYear

SET DatePart.m=Month
SET DatePart.Month=Month

SET DatePart.n=Minute
SET DatePart.Minute=Minute

SET DatePart.q=Quarter
SET DatePart.Quarter=Quarter

SET DatePart.s=Second
SET DatePart.Second=Second

SET DatePart.w=DayOfWeek
SET DatePart.DayOfWeek=DayOfWeek

SET DatePart.ww=WeekOfYear
SET DatePart.WeekOfYear=WeekOfYear

SET DatePart.y=DayOfYear
SET DatePart.DayOfYear=DayOfYear

SET DatePart.yyyy=Year
SET DatePart.Year=Year

:: If DST test is requested, check if PHP is available
IF "!DatePart.%~1!"=="DST" (
	PHP
)

:: Get current day, month, year and determine if we have a leap year
CALL :Today
CALL :LeapYear
ECHO.!DatePart.%~1! | FIND /I "OfYear" >NUL && (
	CALL :DayOfYear
	CALL :WeekOfYear
)

:: Check if command line argument is listed in array
SET DatePart. | FINDSTR /R /I /C:"\.%~1=" >NUL
IF ERRORLEVEL 1 (
	ENDLOCAL
	GOTO Syntax
)

:: If the value is already stored in a variable use that variable, otherwise use WMIC.
IF DEFINED !DatePart.%~1! (
	SET DP=!DatePart.%~1!
	CALL SET DatePart=%%!DP!%%
) ELSE (
	FOR /F "skip=1" %%A IN ('WMIC Path Win32_LocalTime Get !DatePart.%~1! /Format:table 2^>NUL ^|^| SET Error=1') DO (
		IF "!DatePart!"=="" SET DatePart=%%A
	)
)

:: Display result
ECHO.%DatePart%

:: Check for errors trapped by WMIC
IF "%Error%"=="1" (
	ENDLOCAL
	GOTO Syntax
)

:: Done
ENDLOCAL & SET DatePart=%DatePart%
EXIT /B %DatePart%


:DayOfYear
:: Fill array with cumulative number of days of past months
SET /A DaysPast.1  = 0
SET /A DaysPast.2  = %DaysPast.1%  + 31
SET /A DaysPast.3  = %DaysPast.2%  + 28 + %LeapYear%
SET /A DaysPast.4  = %DaysPast.3%  + 31
SET /A DaysPast.5  = %DaysPast.4%  + 30
SET /A DaysPast.6  = %DaysPast.5%  + 31
SET /A DaysPast.7  = %DaysPast.6%  + 30
SET /A DaysPast.8  = %DaysPast.7%  + 31
SET /A DaysPast.9  = %DaysPast.8%  + 31
SET /A DaysPast.10 = %DaysPast.9%  + 30
SET /A DaysPast.11 = %DaysPast.10% + 31
SET /A DaysPast.12 = %DaysPast.11% + 30
SET /A DayOfYear   = !DaysPast.%Month%! + %Day%
GOTO:EOF


:LeapYear
SET LeapYear=0
SET /A "Test = %Year% %% 4"
IF %Test% EQU 0 SET LeapYear=1
SET /A "Test = %Year% %% 100"
IF %Test% EQU 0 SET LeapYear=0
SET /A "Test = %Year% %% 400"
IF %Test% EQU 0 SET LeapYear=1
GOTO:EOF


:Today
FOR /F "skip=1 tokens=1-4" %%A IN ('WMIC Path Win32_LocalTime Get Day^,DayOfWeek^,Month^,Year /Format:table 2^>NUL ^|^| SET Error=1') DO (
	IF "!Day!"==""       SET Day=%%A
	IF "!DayOfWeek!"=="" SET DayOfWeek=%%B
	IF "!Month!"==""     SET Month=%%C
	IF "!Year!"==""      SET Year=%%D
)
IF %DayOfWeek% EQU 0 SET DayOfWeek=7
GOTO:EOF


:WeekOfYear
SET /A ThisWeeksSunday = %DayOfYear% - %DayOfWeek% + 7
SET /A WeekOfYear = %ThisWeeksSunday% / 7
SET /A FirstThursday = %ThisWeeksSunday% - 7 * %WeekOfYear% + 4
IF %FirstThursday% GTR 7 SET /A WeekOfYear += 1
GOTO:EOF


:Syntax
ECHO DatePart.bat, Version 3.20 for Windows XP Professional and later
ECHO Returns the specified part of the current date or time
ECHO.
ECHO Usage:   DATEPART   option
ECHO.
ECHO Option:  d    or Day          Returns:   day of month
ECHO          h    or Hour                    hour
ECHO          i    or DST                     DST (1 if true, 0 if not) **
ECHO          l    or LeapYear                leap year (1 if true, 0 if not)
ECHO          m    or Month                   month
ECHO          n    or Minute                  minutes
ECHO          q    or Quarter                 quarter
ECHO          s    or Second                  seconds
ECHO          w    or DayOfWeek               day of week
ECHO          ww   or WeekOfYear              ISO week number
ECHO          y    or DayOfYear               day of year
ECHO          yyyy or Year                    year
ECHO.
ECHO Notes:   All values are numeric, without leading zeros, and are returned
ECHO          on screen, as "errorlevel" and in variable %%DatePart%%.
ECHO          Week 0 means the last week (52 or 53) of the previous year.
ECHO          DST check will only work if PHP is installed.
ECHO.
ECHO Written by Rob van der Woude
ECHO http://www.robvanderwoude.com


pause
