@REM  ************************************************************************************************************************
@REM					PARAMETRI DA CAMBIARE
@REM --------> 2015
@REM  ************************************************************************************************************************


echo off

@REM CANCELLO_LISTE_2015 + CREO SEPARATORE
::_____________________________________________________________
echo.
echo. ......................................................
echo "Cancello_le_liste_2015+Creo_il_separatore_Liste_2015
echo. .....................................................

@REM cancello le liste MENSILI + liste SALVATAGGI FILE
DEL 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_*.LST
DEL 02ARCHIVIAZIONI_2015_N02______________________Liste_2015.*
DEL 05ARCHIVIAZIONI_2015_N02_LISTA_MESE_*.TXT

@REM creo il separatore
DIR *2015*.TXT /B /O  >> 02ARCHIVIAZIONI_2015_N02______________________Liste_2015.txt

@REM --> PAUSE

@REM CANCELLO_LISTE_2015 + CREO SEPARATORE *** FINE ***
::_____________________________________________________________

pause


@REM CICLO CALCOLO INTERVALLO
@REM Intervallo di valore di partenza 1; step 1 massimo 6
@REM con filtro if finale per la stampa fino a 6-1
::_____________________________________________________________

@REM /L = parametro intervallo numerico
for /L %%f in (1989,1,2017) do (
	echo %f%
	call :CICLO_FOR "%%f")


::***fine***
::_____________________________________________________________
		
	

:CICLO_FOR

pause
	@REM CICLO FILTRO FILE
	@REM eseguo il cicolo for filtrando tutti i file dell'anno 2005
	@REM ed eseguendoli con il comando <<do (call %%c)>>.
	::_____________________________________________________________
		
	
	for %%c in (c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\
	ATT_IMP_*%Anno%*.*
	CERT_COLL_*%Anno%*.* 
	CIG_*%Anno%*.* 
	CUP_*%Anno%*.* 
	CITAZ_*%Anno%*.* 
	Civilia_*%Anno%*.* 
	CONTR_*%Anno%*.* 
	CONV_*%Anno%*.* 
	DCC_*%Anno%*.* 
	DGC_*%Anno%*.* 
	DET_*%Anno%*.* 
	DUP*.* 
	FaldoneCasaleno_*%Anno%*.* 
	FATTURE_*%Anno%*.* 
	FAX_*%Anno%*.* 
	Folium_*%Anno%*.* 
	LPDD_*%Anno%*.* 
	LPDG_*%Anno%*.* 
	LPX_*%Anno%*.* 
	MIN_BCULT_*%Anno%*.* 
	Mutuo_*%Anno%*.* 
	OrdDirig_*%Anno%*.* 
	OrdSind_*%Anno%*.* 
	POSTA_*%Anno%*.* 
	PROC_*%Anno%*.* 
	PROG_*%Anno%*.* 
	REG_LAZ_*%Anno%*.* 
	RELAZ_*%Anno%*.* 
	RICOR_*%Anno%*.* 
	TRIB_*%Anno%*.* 
	VALUT_RISCHIO_*%Anno%*.* 
	VERB_*%Anno%*.* 
	VERB_GF_*%Anno%*.* 
	VERB_PiazzaRisorgimento_*%Anno%*.* 
	Faldone*2015*
	) do (call :STAMPA_ELEMENTI_FILE "%%c")

	
	::***fine***
	::_____________________________________________________________
		
		
	

:STAMPA_ELEMENTI_FILE 



@REM ***************************************************************************************************************
@REM		IMPOSTO LE VARIABILI INIZIALI E RECUPERO LA DATA NEL FORMATO GG,MM,AAA
@REM
@REM ***************************************************************************************************************

@REM IMPOSTO LE VARIABILI INIZIALI
@REM -------------------------------------------------------------------------------
	@REM salvo estensione del file
	set ESTENSIONE_FILE="Estensione_Salvata= "%~x1

	@REM recupero nella variabile la data passata con il parametro %%c in questo caso indicato con la maschera di Dos
	@REM %~t1 = alla identificazione della data del file.
	set DATA_TUTTA=%~t1

@REM IMPOSTO LE VARIABILI INIZIALI *** FINE ***
@REM -------------------------------------------------------------------------------




@REM RECUPERO LA DATA SENZA LE FINCATURE
@REM -------------------------------------------------------------------------------
@REM ---> %DATA_TUTTA:~0,2% 	= IL GIORNO (da destra)
@REM ---> %DATA_TUTTA:~3,2% 	= IL MESE (da destra)
@REM ---> %DATA_TUTTA:~-10,4%  	= L'ANNO (da sinistra il segno meno (-))

	@rem RECUPERO LA DATA filtrata dagi separatori / ed in inserita nella variabile.
	set data_COMPLETA=%DATA_TUTTA:~0,2%%DATA_TUTTA:~3,2%%DATA_TUTTA:~-10,4% 

@REM RECUPERO LA DATA SENZA LE FINCATURE *** fine ***
@REM -------------------------------------------------------------------------------

@REM SEPARO I COMPOMENTE GG,MM,AAAA DELLA DATA
@REM -------------------------------------------------------------------------------
	@rem SEPARO dalla variabile data completa il giorno il mese e l'anno come
	@rem è previsto con la maschera di formattazione %variabile::~0,2% elementi da estrarre
	set solo_GIORNO=%Data_COMPLETA:~0,2%
	set solo_MESE=%Data_COMPLETA:~2,2%
	set solo_ANNO=%Data_COMPLETA:~4,4%

	echo.
	echo "controllo variabile DATA_TUTTA------------->":%DATA_TUTTA%
	echo "controllo variabile_data_COMPLETA---------->":%data_COMPLETA%
	echo "controllo variabile solo_GIORNO------------>":%solo_GIORNO%
	echo "controllo variabile solo_MESE------------>":%solo_MESE%
	echo "controllo variabile solo_ANNO------------>":%solo_ANNO%
	
	@REM IF di controllo per vedere se con il cambio di mese vi appare il messaggio.
	IF %SOLO_MESE%==08 (ECHO "%SOLO_MESE% ---> MESE DI AGOSTO")
	IF %SOLO_MESE%==07 (ECHO "%SOLO_MESE% ---> MESE DI LUGLIO")
	

@REM SEPARO I COMPOMENTE GG,MM,AAAA DELLA DATA *** fine ***
@REM -------------------------------------------------------------------------------

@REM ***************************************************************************************************************
@REM		IMPOSTO LE VARIABILI INIZIALI E RECUPERO LA DATA NEL FORMATO GG,MM,AAA
@REM			**** FINE ****
@REM ***************************************************************************************************************




			echo "					FASE 02 SALVATAGGIO FILE FILTRATI E CONTROLLO MESE"
			echo "*******************************************************************************"
			echo ricevo il parametro %%1%%
			echo il quale contiene il nome del file e lo passo la 
			echo 	PROCESSO DI VISUALIZZAZIONE PROCEDURA :PROCESS	
			echo ----------------------------------------------------
			echo .
			echo "Il file trovato
			echo " stampo il parametro %%1%% completo  ------------------------------->" %1
			echo " stampo il parametro solo nome file parametro: %%~n1%%  ------------>" %~n1
			echo " stampo il parametro estensione del file parametro: %%~x1%%  ------->" %~x1
			echo " stampo il parametro DATA del file parametro: 	  %%~tx1%% ------->" %~t1
			echo . 
			
			
			
			
			@REM per salvare il parametro in una variabile non occorrono le %%
			set ESTENSIONE_FILE="Estensione_Salvata= "%~x1
			echo " stampo VARIABILE SALVATA : ESTENSIONE_FILE  ------------------->" 
			echo %ESTENSIONE_FILE%
			
			@REM la variabile data
			set DATA_TUTTA=%~t1
			
			echo " stampo VARIABILE SALVATA : DATA_TUTTA  ------------------------>" %DATA_TUTTA%
			
			echo ............................................
			echo "CONTROLLO ILGIORNO DALLA DATA "
			echo "controllo variabile SOLO_GIORNO------>":%SOLO_GIORNO%
			
			echo "CONTROLLO ILMESE DALLA DATA "
			echo "controllo variabile SOLO_MESE---------->":%SOLO_MESE%
			
			echo "CONTROLLO L'ANNO DALLA DATA "
			echo "controllo variabile SOLO_ANNO---->":%SOLO_ANNO%
			
			echo "PROVA RICOSTRUZIONE DELLA DATA CON LE VARIABILI "
			echo .
			echo "ricostruzione della data -------->":%SOLO_GIORNO%/%SOLO_MESE%/%SOLO_ANNO%
	
		echo ..................................
	
			@REM DIR ORDINAMENTO_ALFABETICO_DECRESCENTE_PER_DATA_DI_CREAZIONE
			@REM ------------------------------------------------------------------------------------------- 
			@REM Sintassi 	DIR  [unità:][percorso][nomefile] [/P] [/W] [/O[[:]ordinamento]] [/S]
			@REM      	[/B] [/L] [/V]
				
			
			@REM  /A          Visualizza i file con gli attributi specificati.
			@REM  attributo	a:-d  (-d) = non le directory
			@REM		-h = non i file nascosti
			@REM /O		 Elenca file ordinandoli.
			@REM attributo	o:-n (-n) = escluso ordine alfabetico
			@REM /T		Controlla campo data visualizzato o utilizzato per ordinare.
			@REM attributo   t:c (:c)= ordina per creazione
			
				
				
				SET FILE =%~n1
				REM PAUSE
				ECHO "NOME DEL FILE -->" %~n1
				REM PAUSE
				
				
				@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
				@REM ordinati alfabaticamente /O
				@REM DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N03_LISTA_MESE_03.LST
				
				
				
				@REM DIR ORDINAMENTO_ALFABETICO_DECRESCENTE_PER_DATA_DI_CREAZIONE *** fine ***
			@REM -------------------------------------------------------------------------------------------
	





IF %SOLO_MESE%==01 (

	echo "IL_DEL_MESE_DI-------->GENNAIO_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_01.LST
			  
				
	REM -------->PAUSE
	)

	
IF %SOLO_MESE%==02 (

	echo "IL_DEL_MESE_DI-------->FEBBRAIO_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_02.LST
				
	REM -------->PAUSE
	)



IF %SOLO_MESE%==03 (

	echo "IL_DEL_MESE_DI-------->MARZO_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_03.LST
			  
				
	REM -------->PAUSE
	)



IF %SOLO_MESE%==04 (

	echo "IL_DEL_MESE_DI-------->APRILE_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_04.LST
				
	REM -------->PAUSE
	)


IF %SOLO_MESE%==05 (

	echo "IL_DEL_MESE_DI-------->MAGGIO_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_05.LST
				
	REM -------->PAUSE
	)

IF %SOLO_MESE%==06 (

	echo "IL_DEL_MESE_DI-------->GIUGNO_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_06.LST
				
	REM -------->	PAUSE
	)


IF %SOLO_MESE%==07 (

	echo "IL_DEL_MESE_DI-------->LUGLIO_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_07.LST
				
	REM -------->	PAUSE
	)

IF %SOLO_MESE%==08 (

	echo "IL_DEL_MESE_DI-------->AGOSTO_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_08.LST
				
	REM -------->	PAUSE
	)


IF %SOLO_MESE%==09 (

	echo "IL_DEL_MESE_DI-------->SETTEMBRE_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_09.LST
				
	REM -------->PAUSE
	)


IF %SOLO_MESE%==10 (

	echo "IL_DEL_MESE_DI-------->OTTOBRE_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_10.LST
				
	REM -------->PAUSE
	)


IF %SOLO_MESE%==11 (

	echo "IL_DEL_MESE_DI-------->NOVEMBRE_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_11.LST
				
	REM -------->PAUSE
	)


IF %SOLO_MESE%==12 (

	echo "IL_DEL_MESE_DI-------->DICEMBRE_2015 "
	echo.
	@REM Inserisco nel file.txt tutti i nomi dei file filtrati senza directory o estensione
	@REM ordinati alfabaticamente /O
	DIR /B /O  %1  >> 02ARCHIVIAZIONI_2015_N02_LISTA_MESE_12.LST
				
	REM -------->PAUSE
	)



echo.
echo. ================FINE CICLO ========================= 	

