@rem //Stampo tutti i file pdf .doc nella directory corrente
@rem //==================================================================================================================


@rem CONTEGGIO FILE PDF
@rem ...........................................................................................
	@ECHO OFF
	
	
	
	
	@rem CONTEGGIO FILE PDF
	@rem .................................................

		rem 01) Itera nell'elenco dei file *.pdf
		set /A NPdf=0
		
		rem 02) Pulisco la directory i file *.0...
		del *.0*
		
		rem 03) itero nei file .pdf
		for /r %%c in (*.PDF* *.RAR) do ( 
			
			
			rem 02) copia il file in test
			rem copia il file caricato in test
			copy %%c test
			
			rem 03) OPERAZIONE SPLIT
			rem chiama lo splits e divide file test in vari file con estensione 0.*
			call 099_splits.exe %%c
			
			
			rem 04) del TEST
			del test
			
			
						)
			
			MOVE *.PDF c:\casa\LINGUAGGI\DOS\FILE\

		echo ----------------------------------------------------
		echo "                        *.PDF* *.RAR)"
		echo "Totale nro file -------------------->" %NroFile% 
		echo.
		
		


	@rem *** FINE ***
	@rem CONTEGGIO FILE PDF
	@rem .................................................


@rem //Stampo tutti i file pdf .doc nella directory corrente *** FINE **
@rem //==================================================================================================================

