@REM  ***************************************************************

@REM      file batch : Salva-C rar
@REM      directory = C:\CASA\LINGUAGGI\ ; \DOC  e \STAMPE
@REM      file WinRAR

@REM	COMANDI
@REM //------------------------------------------------------------------------
@REM COMANDI SULLA STESSA RIGA ESEGUITI INSIENE
@REM Per eseguire due comandi insieme nella stessa riga, basta separarli con && .
@REM Quello a sinistra delle E commerciali viene eseguito prima, l'altro subito dopo senza chiedere conferma.
@REM //------------------------------------------------------------------------

@REM   ***************************************************************


@REM 					LE SOSTITUZIONI GENERALI
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

@REM  		Disco e codice Disco
@REM .......................................................
@REM -----> 	C:
@REM -----> 	_C
@REM .......................................................


@REM		directory y dove archiviare i dati
@REM .......................................................
@REM ----->	C:\CASA\LINGUAGGI\
@REM .......................................................


@REM 		Il nome di tutti i file di archivio dei dati
@REM .......................................................
@REM ----->	Linguaggi_


@REM 		Il file di archivio dei dati
@REM .......................................................
@REM ----->	Linguaggi_N05_ARCHIVI_BAT.GE614


@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@




ECHO OFF
CLS


@REM 			INDIVIDUA_ANNO_CORRENTE
REM *************************************************************************************************************************

@REM			MESSAGGIO OPERAZIONE
@REM -----------------------------------------------------------------------------------------
echo  "============================================================="
echo.				INIZIO
echo.	MSG - INDIVIDUA_ANNO_CORRENTE_2016
echo.  
echo.
echo  "============================================================="

@REM			MESSAGGIO OPERAZIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM			CHIAMA_ANNO_CORRENTE
@REM -----------------------------------------------------------------------------------------

	
	@REM//CANCELLA *.BAK
	CALL Linguaggi_N60_CANCELLA_BAK.bat



	@REM//DECODIFICA I FILE G614 IN RAR
	echo.
	echo. "01"	
	echo. "MSG --->call Linguaggi_N70_DECODIFICA.bat"
	call Linguaggi_N70_DECODIFICA.bat

	echo.
	:===========================================================================
	:		INDIVIDUA_ANNO_CORRENTE_2016
	echo.
	echo. "03"	
	echo. "MSG ---> SALVATAGGIO Linguaggi_N05_ANNO_CORRENTE.rar"
	rem C:\CASA\LINGUAGGI\RAR.EXE a -r -U Linguaggi_N05_ASSEMBY.rar 			@Linguaggi_N02_ASSEMBY_Lista.lst
	rem C:\CASA\LINGUAGGI\RAR.EXE a -r -U Linguaggi_N05_DOS.rar 				@Linguaggi_N02_DOS_Lista.lst
	rem C:\CASA\LINGUAGGI\RAR.EXE a -r -U Linguaggi_N05_VISUAL_BASIC_Lista.rar 		@Linguaggi_N02_VISUAL_BASIC_Lista.lst
	rem C:\CASA\LINGUAGGI\RAR.EXE a -r -U Linguaggi_N05_VISUAL_STUDIO.rar 			@Linguaggi_N02_VISUAL_STUDIO_Lista.lst
	
	
	

		:FINESTRA SALVATAGGIO_ASSEMBY 
		:---------------------------------------------------------
		 @REM Comando|Nome finestra------------|/D percorso----------------------|il file --------------------------------------------------------|^& exit=USCITA FINESTRA	
		 @START  "SALVATAGGIO_ASSEMBY"/D C:\CASA\LINGUAGGI\ CALL RAR.EXE a -r -U Linguaggi_N05_ASSEMBY.rar @Linguaggi_N02_ASSEMBY_Lista.lst ^&/B ^& exit
		:---------------------------------------------------------

	
		:FINESTRA SALVATAGGIO_DOS 
		:---------------------------------------------------------
		 @REM Comando|Nome finestra------------|/D percorso----------------------|il file --------------------------------------------------------|^& exit=USCITA FINESTRA	
		 @START  "SALVATAGGIO_DOS"/D C:\CASA\LINGUAGGI\ CALL RAR.EXE a -r -U Linguaggi_N05_DOS.rar @Linguaggi_N02_DOS_Lista.lst ^& exit 
		:---------------------------------------------------------

		
		:FINESTRA SALVATAGGIO_ACCESS 
		:---------------------------------------------------------
		 @REM Comando|Nome finestra------------|/D percorso----------------------|il file --------------------------------------------------------|^& exit=USCITA FINESTRA	
		 @START  "SALVATAGGIO_ACCESS"/D C:\CASA\LINGUAGGI\ CALL RAR.EXE a -r -U Linguaggi_N05_ACCESS.rar @Linguaggi_N02_ACCESS_Lista.lst ^& exit 
		:---------------------------------------------------------

		
		:FINESTRA SALVATAGGIO_VISUAL_BASIC 
		:---------------------------------------------------------
		 @REM Comando|Nome finestra------------|/D percorso----------------------|il file --------------------------------------------------------|^& exit=USCITA FINESTRA	
		 @START  "SALVATAGGIO_VISUAL_BASIC"/D C:\CASA\LINGUAGGI\ CALL RAR.EXE a -r -U Linguaggi_N05_VISUAL_BASIC.rar @Linguaggi_N02_VISUAL_BASIC_Lista.lst ^& exit
		:---------------------------------------------------------

		
		:FINESTRA SALVATAGGIO_VISUAL_STUDIO 
		:---------------------------------------------------------
		 @REM Comando|Nome finestra------------|/D percorso----------------------|il file --------------------------------------------------------|^& exit=USCITA FINESTRA	
		 @START  "SALVATAGGIO_VISUAL_STUDIO"/D C:\CASA\LINGUAGGI\ CALL RAR.EXE a -r -U Linguaggi_N05_VISUAL_STUDIO.rar @Linguaggi_N02_VISUAL_STUDIO_Lista.lst ^& exit
		 
		   
		:---------------------------------------------------------
		
		
	echo.
	:===========================================================================
	echo.
	
	@REM --> PAUSE
	
	@REM//CRIPTA I FILE RAR IN GG614
	echo.
	echo. "04"	
	echo. "MSG ---> all Linguaggi_N70_CRIPTA.bat"
	call Linguaggi_N70_CRIPTA.bat


@REM			CHIAMA_ANNO_CORRENTE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM			SOSPENSIONE
@REM -----------------------------------------------------------------------------------------

	@REM 01)
	@REM sospensione per 1 secondo con crononometro 
	@REM timeout /t 2 /nobreak > NUL
	@REM ---->	TIMEOUT /T 2 /NOBREAK


@REM			SOSPENSIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM 			INDIVIDUA_ANNO_CORRENTE *** FINE ***
@REM *************************************************************************************************************************








