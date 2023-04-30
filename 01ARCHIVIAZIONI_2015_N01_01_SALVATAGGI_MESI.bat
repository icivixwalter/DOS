@ECHO OFF
@REM  ************************************************************************************************************************
@REM					PARAMETRI ED OPZIONI DI GESTIONE
@REM  ************************************************************************************************************************

@REM 	01 PARAMETRO
@REM	Parametro unico per il cambio di tutte le impostazioni
@REM							:LaQuercia	


@REM
@REM    Tipo file batch per il salvataggio dei dati.    				
@REM    directory corrente 				:c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\
@REM    file WinRAR completo				:
@REM    file di salvataggio rinominato + file di lista
@REM							:
@REM							:
@REM
@REM    directory di provenienza dei dati con parametro da sostituire LaQuercia
@REM							:c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\*ScannerTmp*



@REM				LE OPZIONI

@REM  Opzione -x Estrae file e cartelle con il percorso originale. 
@REM  Opzione -r considera le sottocartelle
@REM  Opzione -u Estrai solo i nuovi


@REM  ************************************************************************************************************************
@REM					PARAMETRI ED OPZIONI DI GESTIONE *** FINE ***
@REM  ************************************************************************************************************************






echo  "-------------------------------------------------------------"
echo .	
echo  	SALVATAGGIO_DEGLI_ARCHIVI_DEL_2015
echo .
echo  "-------------------------------------------------------------"


@REM Cancello il file .lst old
del 02ARCHIVIAZIONI_2015_*.LST


@REM  01) Filtra_archivi_del_2015	
CALL 01ARCHIVIAZIONI_2015_N01_02_FILTRA_MESI.bat



@REM  03) De codifica
cd\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\SALVATAGGI\
CALL 70_N01_ArchiviScannerTMP_DECODIFICA.bat
cd\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\

@REM  04) Archivia
CALL 01ARCHIVIAZIONI_2015_N01_03_ARCHIVIA_MESI.bat


@REM  05) Cripta
cd\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\SALVATAGGI\
CALL 70_N01_ArchiviScannerTMP_CRIPTA.bat
cd\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\
