
@echo 			SALVATAGGIO DATI ED ARCHIVI DELL'UFFICIO SU Y 
 @echo *************************************************************************************************************************
		@echo IMPOSTAZIONE FILE_COPIA_UFFICIO
			@REM	nome file 	: 		Zip_rar_SALVA_TUTTO_ARCHIVI_Y.bat
			@REM 	PATH_S		:		C:\Users\walter.rossi\Desktop

			Echo NOTE: la procedura dal file posto sul desktop

				@REM imposto echo e cls

					ECHO OFF
					CLS

		@echo MESSAGGIO OPERAZIONE
				@echo -----------------------------------------------------------------------------------------
				echo  "============================================================="
				echo.				INIZIO
				echo.	MSG - SALVATAGGIO DATI - tutto
				echo.  
				echo.
				echo  "============================================================="


				:---------------- salvataggio ARCHIVI LLPP MDB
				SET PATH_S=c:\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\LLPP_ARCHIVI_MDB\ 
				CD %PATH_S% 
				CALL Zip_rar_C.bat


				@echo.
				@echo."	02 SALVATAGIO ARCHIVI LLPP_ARCHIVI_MDB "
				@echo.

		:---------------- salvataggio ARCHIVI PRES300
				SET PATH_S=c:\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\PRES3000_GESTIONE\
				CD %PATH_S%
				DIR *Zip_rar_C.*"
				CALL Zip_rar_C.bat"

				@echo.
				@echo."	02 SALVATAGIO ARCHIVI PRES3000_GESTIONE "
				@echo.



				:---------------- salvataggio ARCHIVI WALTER ATTI
				SET PATH_S=c:\CASA\PRES3000_07\WALTER_ATTI\
				CD %PATH_S%
				DIR *Zip_rar_C.*"
				CALL Zip_rar_C.bat"


				@echo.
				@echo."	03 SALVATAGIO ARCHIVI WALTER_ATTI "
				@echo.

		:---------------- salvataggio TRIBUTI ARCHIVI 
				SET PATH_S=c:\Gestioni\GeTributi\GeTributi\TributiArchivi\
				CD %PATH_S%
				DIR *Zip_rar_C.*"
				CALL Zip_rar_C.bat"



				@echo.
				@echo."	04 SALVATAGIO ARCHIVI GeTributi "
				@echo.

		:---------------- salvataggio 01_POSTA_BOZZE
				SET PATH_S=c:\GESTIONI\GESTIONE_LLPP\01_POSTA_BOZZE\
				CD %PATH_S%
				DIR *Zip_rar_C.*"
				CALL Zip_rar_C.bat"


				@echo.
				@echo."	10 SALVATAGIO CARTELLA  01_POSTA_BOZZE "
				@echo.

		:---------------- salvataggio 10_LEGGI
				SET PATH_S=c:\GESTIONI\GESTIONE_LLPP\10_LEGGI\
				CD %PATH_S%
				DIR *Zip_rar_C.*"
				CALL Zip_rar_C.bat"

				@echo.
				@echo."	10 SALVATAGIO CARTELLA   10_LEGGI "
				@echo.
			
		@ECHO "--------------------------> USCITA DALLA PROCEDURA "

				
				@echo.
				@echo."=================================================================="
				@echo."			MSG - EXIT_PROCEDURA "
				@echo.
				@echo."ATTENZIONE '!!!' USCITA DALLA PROCEDURA : - USCITA - "			
				@echo."=================================================================="

				
					@REM 01)
					@REM sospensione per 1 secondo con crononometro 
					@REM ---->	timeout /t 2 /nobreak > NUL
					@REM ---->	
					@TIMEOUT /T 2 /NOBREAK



			@REM			SOSPENSIONE *** FINE ***
			@REM -----------------------------------------------------------------------------------------


			@REM 			SALVATAGGIO_ARCHIVI_LLPP_MDB *** FINE ***
			@REM *************************************************************************************************************************








