@ECHO OFF

SETLOCAL ENABLEDELAYEDEXPANSION
FOR /F  %%A IN (C:\*.* /v sDate)DO (
SET lim=%%A)

PAUSE


	@rem CONTEGGIO FILE PDF SOLO POSTA
	@rem .................................................

		set /A Nro_TOT_FILE_Pdf=0
		for %%c in (c:\GESTIONI\GESTIONE_LLPP\01_POSTA\*Bozza*.PDF*) do ( set /A Nro_TOT_FILE_Pdf=Nro_TOT_FILE_Pdf+1 )

		echo ----------------------------------------------------
		echo "                            (PostInt.pdf)" 
		echo "Totale nro file SOLO POSTA INTERNA in pdf" 
		echo "       nro file in Pdf ------------->" %Nro_TOT_FILE_Pdf% 
		echo.
		
		@rem totalizza file 
		set /A TotFILE=TotFILE+Nro_TOT_FILE_Pdf

		@rem TOTALE_FILE_2016
		@rem .................................................

			echo. 
			echo ====================================================
			echo "				      (Tot)" 
			echo "TOTALE_FILE_2016------------->" %Nro_TOT_FILE_Pdf% 
			echo.
			echo ====================================================



		@rem TOTALE_FILE_2016 *** FINE ***
		@rem .................................................


	@rem *** FINE ***
	@rem CONTEGGIO FILE PDF
	@rem .................................................



		


@rem //STAMPO TUTTI L'ELENCO DEI FILE DELLA DIRECTORY CORRENT NEL FILE .TXT
@rem //==================================================================================================================
	
	REM .................Elenco tutti i file Pdf
	 >> Nro_TOT_FILE_Pdf.txt dir *.pdf /W
	


@rem // FINE
@rem //STAMPO TUTTI L'ELENCO DEI FILE DELLA DIRECTORY CORRENT NEL FILE .TXT
@rem //==================================================================================================================
