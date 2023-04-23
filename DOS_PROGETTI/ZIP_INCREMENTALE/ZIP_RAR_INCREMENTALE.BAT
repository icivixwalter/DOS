


	ECHO OFF
	@REM  ***************************************************************
	
	@REM     file batch : Salva-C UN FILE INCREMENTALE
	@REM     directory 		= c:\Casa\CDM\LaQuercia\2022_2023\SALVATAGGI_2022_2023\
	@REM     file WinRAR
	@REM 		Nome_file_bat	= ZIP_N70_RAR_INCREMENTALE.BAT
	@REM    @ZIP_N70_RAR_INCREMENTALE.BAT_(questo è il codice bat per il suo funzionamento) 
	@REM    @ZIP@INCREMENTALE_(codice bat di funzionamento) 
			
	@REM  ***************************************************************
	
	SET PATH_DEST_S=c:\Casa\CDM\LaQuercia\2022_2023\SALVATAGGI_2022_2023\
	
	
	

@REM 					LE SOSTITUZIONI GENERALI
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


@REM		directory y dove archiviare i dati = path di destinazione + nome file
@REM .......................................................
SET PATH_DEST_S=c:\CASA\CDM\LaQuercia\2022_2023\SALVATAGGI_2022_2023\
SET NOME_FILE_S=_ZIP_SALVATAGGI_ARCHIVI.RAR


@REM		directory y dove archiviare i dati = path di destinazione
@REM .......................................................
SET PATH_SALV_S=c:\CASA\CDM\LaQuercia\2022_2023\SALVATAGGI_2022_2023\


@REM .......................................................



@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@







@REM CICLO FOR I E II CASO PER LA GESTIONE DELLA DATA
@REM ========================================================================================================================
:----------------------------CICLO FOR I CASO per la gestione della data con le sottostringhe ma aggiunge lo 0 se <10
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
echo solo il giorno:
echo %MyDate:~6,2%

echo I CASO la data con le sottostringhe con separataore l'undescore (_)
set today=%MyDate:~0,4%_%MyDate:~4,2%_%MyDate:~6,2%

echo.
echo today in formato stringa: 
echo %today%
echo.

:----------------------------CICLO FOR  II CASO cicolo for per per la data AAA MM GG senza sottostringhe

ECHO E' possibile ottenere la data corrente in modo indipendente dalle impostazioni locali utilizzando
ECHO SENZA armeggiare con le sottostringhe
echo vedi il link: https://qastack.it/programming/10945572/windows-batch-formatted-date-into-variable
echo .

echo. II CASO la data senza le sottostringhe solo numerico e con separatore il trattino (-)

@REM for /f %%x in ('wmic path win32_localtime get /format:list ^| findstr "="') do set %%x
@REM set today=%Year%_%Month%_%Day%

echo.
ECHO %TODAY%
echo.

@REM CICLO FOR I E II CASO PER LA GESTIONE DELLA DATA  *** FINE ***
@REM ========================================================================================================================


goto DECODIFICA
@REM //------------------------------------------------------------------------------------//

1) pulisci lo schermo 

2) devi prima andare nella directory salvataggi POI tornoare  indietro di 1 posizione nella directory
in questo modo non ci sono salvataggi duplicati
 attivi il bat DECODIFICA  e subito e torni alla path di origine 
3) chiama il bat DECODIFICA
4) controllo dir con la variabile today*.* per estrarre quelli della data corrente
5) torna indietro di una posizione da salvataggi alla directory corrente.
6) ATTIVO il salvataggio con rar + il file .txt elenco dei file salvati che viene insieme
	alla compressione. IL file .txt non può essere fatto in modo seprato in quanto l'operazione
	è legata alla compressione, per cui si deve cancellare tutto e rifare la compressione rar +
	l'elenco dei file salvati in .txt

7) nuova pulizia con cls
8) devi prima andare nella directory salvataggi per poter attiva i windows-batch-formatted-date-into-variable
9) attivi il bat CRIPTA e torni all'origine di una posizione alla directory principale.
:DECODIFICA

@rem 1)
cls
@rem 2)
cd  %PATH_DEST_S%
@rem 3)
call Zip_N70_DECODIFICA.bat
@rem 4)
dir %today%*.*

@rem 5)
CD..


@REM     ATTIVO IL SALVATAGGIO DEL RAR + IL FILE .TXT ELENCO DEI FILE SALVATI
@REM //------------------------------------------------------------------------------------//


@rem 6)
c:\CASA\RAR.EXE U -r -ac -X -logf=%PATH_DEST_S%%today%_ZIP_SALVATAGGI_ARCHIVI_elencofile.txt %PATH_DEST_S%%today%%NOME_FILE_S% @Zip_N70_ElencoFile.txt 

@rem 7)
cls
@rem 8) 
cd  %PATH_DEST_S%

@rem 9) 
call Zip_N70_CRIPTA.bat
dir %today%*.*




@REM .......................................................



@ECHO "--------------------------> USCITA DALLA PROCEDURA "

	
	@echo.
	@echo."=================================================================="
	@echo."			MSG - EXIT_PROCEDURA "
	@echo.
	@echo."ATTENZIONE '!!!' USCITA DALLA PROCEDURA : - USCITA - "			
	@echo."=================================================================="

	
		@REM 01)
		@REM sospensione per 1 secondo con crononometro 
		@REM ---->	timeout /t 2 /nobreak > NUL
		@REM ---->	
		@TIMEOUT /T 2 /NOBREAK

EXIT




@REM			SOSPENSIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM 			INDIVIDUA_ANNO_cORRENTE *** FINE ***
@REM *************************************************************************************************************************



NOTE
	  quest note servo per l'utilizzo del DOS

@REM DIR ORDINAMENTO_ALFABETICO_DECRESCENTE_PER_DATA_DI_cREAZIONE
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

	
	@REM ORDINA tutti i file escluso le directory ed i file nascosti in ordine alfabetico
	@REM decrescente e per data di creazione e salva nel file di testo.
	dir "c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\" /a:-d -h /o:-n /t:c >>DOS_DIR_N01.txt

@REM DIR ORDINAMENTO_ALFABETICO_DECRESCENTE_PER_DATA_DI_cREAZIONE *** fine ***
@REM ----------------------------------------------------






@REM				PARAMETRI DOSE CON VARI ESEMPI DI COMANDO 
@REM *************************************************************************************************************************

GOTO NoteDos


	le opzioni principali sono: 
	/p per vedere l’elenco a schermate 
	/w per vedere l’elenco formato solo dai nomi dei file 
	/a:h mostra i file nascosti 
	/a:s mostra i file di sistema 
	/a:d mostra solo le subdirectory 
	/a:-d mostra solo i file 
	/o:n mostra in ordine alfabetico 
	/o:-n mostra in ordine alfabetico inverso 
	/o:d mostra in ordine di data 
	/o:-d mostra in ordine di data inverso 
	/o:s mostra in ordine di grandezza 
	/o:-s mostra in ordine di grandezza inverso 
	/s mostra tutto il disco 
	>prn stampa l’elenco 
		Esempio: 
		c:\> DIR c:\LETTERE\ROSSI /a:-d/o:n >prn

		stampa l’elenco, in ordine alfabetico, di tutti i file contenuti nella 
		subdirectory \LETTERE\ROSSI, omettendo i nomi delle eventuali subdirectory presenti. 




		@REM DIR ORDINAMENTO_ALFABETICO_DECRESCENTE_PER_DATA_DI_cREAZIONE
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


			@REM ORDINA tutti i file escluso le directory ed i file nascosti in ordine alfabetico
			@REM decrescente e per data di creazione e salva nel file di testo.
			dir "c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\" /a:-d -h /o:-n /t:c >>DOS_DIR_N01.txt

		@REM DIR ORDINAMENTO_ALFABETICO_DECRESCENTE_PER_DATA_DI_cREAZIONE *** fine ***
		@REM ----------------------------------------------------





		@REM DOS STRINGHE CONCATENA
		@REM ----------------------------------------------------

			:-------------------------------imposto le variabili set
			set str1="Hello"
			set str2="World"
			set str3= "1"

			:-------------------------------unisco le stringhe su una variabile 
			set "str3=%str1% %str3% %str2%"
			set "str4=%str1% %str2%"

			@REM qui scrivo str1 + la parola dos  + str2
			set "str1=%str1% DOS %str2%"

			:-------------------------------controllo concatenamento
			echo "str3 concatenata ->" %str3%
			echo "str4 concatenata ->" %str4%
			echo "str1 concatenata ->" %str1%




		@REM DOS STRINGHE CONCATENA	*** fine ***
		@REM ----------------------------------------------------





:NoteDos

@REM *************************************************************************************************************************
