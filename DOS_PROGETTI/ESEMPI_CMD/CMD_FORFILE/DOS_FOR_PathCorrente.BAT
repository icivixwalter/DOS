@REM DOS_FOR_PathCorrente.md

@REM CICLO FOR F PER TROVARE LA PATH CORRENTE SALVANDOLA IN UNA VARIABILE

@ECHO @path@corrente_(bat per il recupero della path corrente)

	@ECHO per la path corrente viene utilizata la procedur for F
	@for %%f in ("CurrentDIR.bat") DO @SET currDir_=%%~df%%~pf
	@ECHO.
	@ECHO La Directory corrente = %currDir_%
	@ECHO.
		@SET PATH_CORR_S=%currDir_%
	@ECHO.
	@ECHO path salvata nella variabile PATH_CORR_S 
	@ECHO %PATH_CORR_S%
	@ECHO.



   @REM 01)
	@REM sospensione per 1 secondo con crononometro 
	@REM ---->	timeout /t 8 /nobreak > NUL
	@REM ---->	
	@TIMEOUT /T 8 /NOBREAK
