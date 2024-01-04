@ECHO OFF



	@rem ELENCO FILE DA STAMPARE
	@rem .................................................

	 SET count=1
	 FOR /f "tokens=*" %%G IN ('dir /b') DO (call :subroutine "%%G")
	 GOTO :eof

	@rem *** FINE ***
	@rem CONTEGGIO FILE PDF
	@rem .................................................



		




 :subroutine


@rem //PROCEDURA_PROCESS
@rem //==================================================================================================================
	
	REM .................Elenco tutti i file Pdf
		
		ECHO. SUB_ROUTINE
		ECHO.
			
		  echo "il parametro  %%1%%--------------------->" %1
		  echo "il contatatore  %%count%%--------------->" %count%
		  echo "il contatore + il parametro=" %count%:%1
		  
		  
		  set /a count+=1

PAUSE
goto :eof	


@rem // FINE
@rem //PROCEDURA_PROCESS
@rem //==================================================================================================================


