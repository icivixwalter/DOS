echo off
@REM  ************************************************************************************************************************
@REM					PARAMETRI ED OPZIONI DI GESTIONE
@REM  ************************************************************************************************************************

@REM 	01 PARAMETRO
@REM	Parametro unico per il cambio di tutte le impostazioni
@REM							:LaQuercia	


@REM
@REM    Tipo file batch per il salvataggio dei dati.    				
@REM    directory corrente 				:c:\Casa\CDM\LaQuercia\
@REM    file WinRAR completo				:LaQuercia_N01_2014_2015_Salvataggi.bat
@REM    file di salvataggio rinominato + file di lista
@REM							:LaQuercia_N01_2014_2015_CRIP.GE614
@REM							:-n@LaQuercia_N02_2014_2015_Lista.lst
@REM
@REM    directory di provenienza dei dati con parametro da sostituire LaQuercia
@REM							:c:\Casa\CDM\LaQuercia\2014_2015\*LaQuercia*



@REM				LE OPZIONI

@REM  Opzione -x Estrae file e cartelle con il percorso originale. 
@REM  Opzione -r considera le sottocartelle
@REM  Opzione -u Estrai solo i nuovi


@REM  ************************************************************************************************************************
@REM					PARAMETRI ED OPZIONI DI GESTIONE *** FINE ***
@REM  ************************************************************************************************************************






@REM //----------------------------------------------------------------------------------------------------------------
@REM  A.02)				SALVATAGGIO 
@REM //----------------------------------------------------------------------------------------------------------------
rem	La sintassi del comando è questa:
rem	FORFILES [/p <Path>] [/m <SearchMask>] [/s] [/c “<Command>“] [/d [{+|-}][{<Date>|<Days>}]]
rem 	p = path
rem	s = cerca anche nelle subdirectory del path principale
rem	m = file con criteri specificati (esempio.: *.img); di default assume *.*
rem	c = esegue il comando racchiuso tra apici doppi
rem	d = ultima modifica più vecchia di (giorni/data)
	
	  @REM FOR per tutti i file (DI AGOSTO) antecedenti o uguali alla 01/09/2016
	   forfiles /s /m *.* /d -31 /c "cmd /c echo @file is outdated." 
	   
	
@REM //----------------------------------------------------------------------------------------------------------------
@REM  A.02)				SALVATAGGIO *** FINE ***
@REM //----------------------------------------------------------------------------------------------------------------


pause
