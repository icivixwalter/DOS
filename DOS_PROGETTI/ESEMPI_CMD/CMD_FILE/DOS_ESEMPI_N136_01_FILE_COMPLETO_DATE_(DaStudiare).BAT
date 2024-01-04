@ECHO OFF
:: Batch file for Windows XP
:: Written by Justin
IF NOT "%~1"=="" (
	ECHO No arguments are required "%~nx0" will leave
	ECHO an errorlevel set in the following format: yyyymmdd
	EXIT /B
)

SETLOCAL ENABLEDELAYEDEXPANSION
FOR /F "skip=4 tokens=3" %%A IN ('REG Query "HKEY_CURRENT_USER\Control Panel\International" /v sDate') DO SET lim=%%A
FOR /F "skip=4 tokens=2,*" %%A IN ('REG Query "HKEY_CURRENT_USER\Control Panel\International" /v sShortDate') DO (
	SET sdf=%%B
	SET now=!date!
	IF DEFINED lim (
		FOR /F %%D IN ("!lim!") DO (
			SET sdf=!sdf:%%~D= !
			SET now=!date:%%~D= !
		)
	)
)
FOR %%A IN ("jan=1" "feb=2" "mar=3" "apr=4" "may=5" "jun=6" "jul=7" "aug=8" "sep=9" "oct=10" "nov=11" "dec=12") DO SET now=!now:%%~A!
FOR %%A IN (m o n t u e w d h r f i s a) DO SET now=!now:%%A=!
FOR %%A IN (%sdf%) DO (
	SET tester=%%A
	IF "!tester:ddd=!"=="!tester!" (
		IF NOT "!tester:d=!"=="!tester!" (
			SET ndf=!ndf! tday
		) ELSE (
			IF NOT "!tester:m=!"=="!tester!" (
				SET ndf=!ndf! tmonth
			) ELSE (
				SET ndf=!ndf! tyear
			)
		)
	)
)
CALL :Match %now%
FOR %%A IN (tyear tmonth tday) DO IF NOT DEFINED %%A (
	>&2 ECHO An Error Occured - Check if it is EVEN POSSIBLE to work out what
	>&2 ECHO the date is from the %%date%% variable^("%date%"^).
	ENDLOCAL
	EXIT /B 1
)
IF %tyear% LSS 99 SET tyear=20%tyear%
IF NOT "%tmonth:~0,1%"=="0" IF %tmonth% LSS 10 SET tmonth=0%tmonth%
IF NOT "%tday:~0,1%"=="0" IF %tday% LSS 10 SET tday=0%tday%
ENDLOCAL & EXIT /B %tyear%%tmonth%%tday%


:Match
FOR %%A IN (%ndf%) DO (
	CALL SET %%A=%%1
	SHIFT
)
