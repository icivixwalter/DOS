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
	
	
	@REM // Utilizzo in aternativa rar.exe al posto di win.rar collegato - 4 SCELTE.
	
	
	@REM 01) ESISTE SOLO RAR.EXE - Utilizzo l'alternativa di rar.exe
	@If exist c:\SALVATAGGI\A01\Rar.exe If not exist c:\SALVATAGGI\A01\WinRAR.lnk (
		 @echo. "//=====================> 01) ESISTE SOLO Rar.exe - non esiste winrar.lnk"	
		 PAUSE
		 )
		 
	@REM 02) ESISTE SOLO WINRAR.LNK - Utilizzo WinRar.lnk
	@If NOT exist c:\SALVATAGGI\A01\Rar.exe If exist c:\SALVATAGGI\A01\WinRAR.lnk (
		 @echo. "//=====================> 02) ESISTE SOLO WINRAR.lnk - non esiste rar.exe"	
		 
		 GOTO CompattaCon_RAR
	 	
		 )
	 
			
	@REM 03) NON ESISTE RAR.EXE + WINRAR.LNK - BAT NON ESEGUITO
	@If not exist c:\SALVATAGGI\A01\Rar.exe If not exist c:\SALVATAGGI\A01\WinRAR.lnk (
		 @echo. "//=====================> 03) NON ESISTE NESSU COMPATTATORE (manca winrar.lnk e manca rar.exe)- BAT NON ESEGUITO"	
		 PAUSE
		 )
	 
				
	@REM 04) ESISTE RAR.EXE + WINRAR.LNK - UTILIZZO SOLO WinRar.lnk
	@If exist c:\SALVATAGGI\A01\Rar.exe If exist c:\SALVATAGGI\A01\WinRAR.lnk (
		 @echo. "//=====================> 03) ESISTE RAR.EXE + WINRAR.LNK (VIENE UTILIZATTO IL SECONDO)"	
	 	
	 	GOTO CompattaCon_WINRAR
	 	
			 		 
		 )
		 

:CompattaCon_RAR

	 @REM //Salvataggio LaQuercia_N03_2014_2015
	 RAR.EXE a -r -U LaQuercia_N01_2014_2015_CRIP_compattato_con_rar -n@LaQuercia_N02_2014_2015_Lista.lst c:\Casa\CDM\LaQuercia\2014_2015\*LaQuercia*


:CompattaCon_WINRAR

 @REM //Salvataggio LaQuercia_N03_2014_2015
 WinRAR.lnk a -r -U LaQuercia_N01_2014_2015_CRIP -n@LaQuercia_N02_2014_2015_Lista.lst c:\Casa\CDM\LaQuercia\2014_2015\*LaQuercia*
	EXIT


@REM //----------------------------------------------------------------------------------------------------------------
@REM  A.02)				SALVATAGGIO *** FINE ***
@REM //----------------------------------------------------------------------------------------------------------------


pause
