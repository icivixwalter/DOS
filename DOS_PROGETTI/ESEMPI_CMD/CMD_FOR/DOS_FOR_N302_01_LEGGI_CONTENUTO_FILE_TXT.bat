@ECHO OFF
@REM  ************************************************************************************************************************
@REM					PARAMETRI ED OPZIONI DI GESTIONE
@REM  ************************************************************************************************************************

@REM 	01 PARAMETRO
@REM	Parametro unico per il cambio di tutte le impostazioni
@REM							:LaQuercia	


@REM
@REM    Tipo file batch per il salvataggio dei dati.    				
@REM    directory corrente 				:c:\CASA\LINGUAGGI\DOS\DOS_ESEMPI_BAT\
@REM    file WinRAR completo				:
@REM    file di salvataggio rinominato + file di lista
@REM							:
@REM							:
@REM
@REM    directory di provenienza dei dati con parametro da sostituire LaQuercia
@REM							:c:\CASA\LINGUAGGI\DOS\DOS_ESEMPI_BAT\*ScannerTmp*



@REM				LE OPZIONI

@REM  Opzione -x Estrae file e cartelle con il percorso originale. 
@REM  Opzione -r considera le sottocartelle
@REM  Opzione -u Estrai solo i nuovi


@REM  ************************************************************************************************************************
@REM					PARAMETRI ED OPZIONI DI GESTIONE *** FINE ***
@REM  ************************************************************************************************************************






echo  "-------------------------------------------------------------"
echo .	
echo  	SALVATAGGIO_DEGLI_ARCHIVI_DEL_2011
echo .
echo  "-------------------------------------------------------------"



	@REM CICLO FILTRO FILE
	@REM eseguo il cicolo for filtrando tutti i file dell'anno 2009
	@REM ed eseguendoli con il comando <<do (call %%c)>>.
	::_____________________________________________________________
		
	
	for  /F  %%c in (c:\CASA\LINGUAGGI\DOS\DOS_ESEMPI_BAT\DOS_FOR_N302_02_FILE_TXT.txt) do (
			 echo "%%c")

	::***fine***
	::_____________________________________________________________
		
	
	


PAUSE