@rem //Stampo tutti i file pdf .doc nella directory corrente
@rem //==================================================================================================================


@rem CONTEGGIO FILE PDF
@rem ...........................................................................................
	@ECHO OFF
	
	
	
	
	@rem CONTEGGIO FILE PDF
	@rem .................................................

		rem
			set /a ctr=0
		       
		rem for /r %%c in (*.0*) do ( 
		    for  %%c in (*.0*) do ( 
		    	
		    	REM Controllo esistenza file
		    	rem echo %%c 
	

			REM 06) RIUNISCO I FILE I UN NUOVO PDF
			rem risalvo i file in un nuovo .pdf
			
			echo %%c 
			copy /b *.0* A
				 
				

			
			REM copy /b %%C c:\CASA\Linguaggi\DOS\SPLIT_FILE_RICOSTRUISCI\C.PDF
			REM copy /b *.0* c:\CASA\Linguaggi\DOS\SPLIT_FILE_RICOSTRUISCI\prova.pdf
			PAUSE
			)
			
			
			echo "Totale nro file in Pdf ------------->" %ctr% 
			echo %inline% 
			pause
			
			REM copy /b *.0* c:\CASA\Linguaggi\DOS\SPLIT_FILE_RICOSTRUISCI\prova.pdf
			rem copy /b *.0* test2
		

	@rem *** FINE ***
	@rem CONTEGGIO FILE PDF
	@rem .................................................


@rem //Stampo tutti i file pdf .doc nella directory corrente *** FINE **
@rem //==================================================================================================================

