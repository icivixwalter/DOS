
			echo  "-------------------------------------------------------------"
			echo  "		00_SALVATAGGI			     "	
			echo  "-------------------------------------------------------------"
			echo.
			echo.	"COPIO LA CARTELLA/CARTELLE DA --> Y:\Valter\OPERE_PUBBLICHE\"
			echo.	"                           IN --> J:\GESTIONE_LLPP\Y_VALTER_OPERE_PUBBLICHE\"
			echo.		@MODELLO@XCOPY_@DOS@ESEMPIO_(esempio di XCopy con gli attribut /S/E/C/H/O ec..)
			echo.  "-------------------------------------------------------------"

			@REM Copy all files/folders and file attribute  + ignore errors + overwrite older + skip existing
			@REM ATTRIBUTI 
			@REM "../S           Copia directory e sottodirectory tranne quelle vuote."
			@REM "../E           Copia directorye sottodirectory, comprese quelle vuote."
			@REM "../C           Continua a copiare anche in caso di errori."
			@REM "../H           Copia anche i file nascosti e di sistema."
			@REM "../O           Copia le informazioni di proprietÓ e ACL."
			@REM "../R           Sovrascrive i file di sola lettura."
			@REM "../D:m-d-y     Copia i  file modificati a partire dalla data"
			@REM "../V           Verifica ogni nuovo file."


			@REM per far uscire la finestra alla fine del processo utilizzare il seguente comando ^& exit

			START XCOPY "y:\Valter\OPERE_PUBBLICHE\*.*" "J:\GESTIONE_LLPP\Y_VALTER_OPERE_PUBBLICHE\" /S /E /C /H /O /R /Y /D /V  



			@REM		OPERAZIONE DI COPIA 00_SALVATAGGI   *** FINE ***			     
			@REM -------------------------------------------------------------------------------------


