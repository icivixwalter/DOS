COMANDI_DOS_TUTTI_GLI_ESEMPI.MD


	@ESEMPI@DIR
		@DIR.01
			@DIR@/D_(@Dir@Esempio.1 solo cartelle directory corrente solo il nome senza dettagli)_@DIR/D
				dir /d
			
			@DIR@Ordinamento@Decrescente_(ordina in formato decrescente e in tutte le sottodirectory sala su file)

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

					
					@REM ORDINA tutti i file escluso le directory ed i file nascosti in ordine alfabetico
					@REM decrescente e per data di creazione e salva nel file di testo.
					@REM effettua il controll /S = in tutte le sottodirectory
					dir /S "c:\CASA\LINGUAGGI\" /a:-d -h /o:-n /t:c >>DOS_DIR_N01.txt

				@REM DIR ORDINAMENTO_ALFABETICO_DECRESCENTE_PER_DATA_DI_CREAZIONE *** fine ***
				@REM -------------------------------------------------------------------------------------------

				@REM /O		 Elenca file ordinandoli.
				@REM attributo	o:-n (-n) = escluso ordine alfabetico
				@REM /T		Controlla campo data visualizzato o utilizzato per ordinare.
				@REM attributo   t:c (:c)= ordina per creazione

					
					@REM ORDINA tutti i file escluso le directory ed i file nascosti in ordine alfabetico
					@REM decrescente e per data di creazione e salva nel file di testo.
					dir "c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\" /a:-d -h /o:-n /t:c >>DOS_DIR_N01.txt

				@REM DIR ORDINAMENTO_ALFABETICO_DECRESCENTE_PER_DATA_DI_CREAZIONE *** fine ***




			@DIR@OrdinamentoAlfabetico_(per data di creazione)



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

						
						@REM ORDINA tutti i file escluso le directory ed i file nascosti in ordine alfabetico
						@REM decrescente e per data di creazione e salva nel file di testo.
						REM dir "c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\" /a:-d -h /o:-n /t:c >>DOS_DIR_N01.txt

					REM for/F "tokens = *" %%G IN ('c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\*.*^|find "/"') DO %% eco G 
					REM FOR /f "tokens=*" %% G IN ('dir c:\02_SCANNER\*.* ^| find "/"') DO echo %% G

					@REM DIR ORDINAMENTO_ALFABETICO_DECRESCENTE_PER_DATA_DI_CREAZIONE *** fine ***
					@REM -------------------------------------------------------------------------------------------


					@dir "C:\GESTIONI\GESTIONE_LLPP\02_SCANNER\\*" /S/b

					@ECHO. "Quando si utilizza l'opzione / s (le sottodirectory recurse) con il comando DIR, otteniamo il percorso completo del file in uscita:"
					@ECHO.

					@PAUSE

					@dir "C:\GESTIONI\GESTIONE_LLPP\02_SCANNER\\*" / b
					@ECHO. "Tuttavia, senza l'opzione / s, abbiamo solo i nomi dei file:"
					@ECHO.


			@DIR@Ordinamento@Per@Anni_(Ordindamento A-z per data di creazione per anni 2016 e 2017)
				
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
				@REM ------------------------------------------------------------------------------------------- 



				REM	- -------> l'attributo senza il trattino (-) significa che elimina solo i file con quegli attributi.
						   l'attributo con il trattino vengono eliminati tutti i file tranne quelli con gli attributi specificati.
						   Esempi :??
						   
				REM	/T:C ----> CONTROLLO CAMPO DATA VISUALIZZATO con l'attributo c = data di creazione.    	

				dir *_2015.* /a:-d -h /o:-n /t:c >>FILE_2015.txt
				dir *_2016.* /a:-d -h /o:-n /t:c >>FILE_2016.txt
				dir "c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\*2016*" /a:-d -h /o:-n /t:c >>FILE_2016_MOD.txt
				@REM ------------------------------------------------------------------------------------------- 

	@SEMPI@IF
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





	@ESEMPI@BAT_INCREMENTALE
		Note:
			Questo file bat incrementale prevede l'utilizzo di una lista.txt da creare denominata
				Zip_N70_ElencoFile.txt
			con la quale vengono filtrati i file e le directory da salvare.
			Viene utilizzato una condizione IF THEN ELSE in cui IF = se esiste gia un G614 allora viene
			solo aggiornato, ELSE = non esiste viene creato tutto nuovo.
			Attenzione che viene utilizzato solo per la quercia, cambiare le directory di destinazione

			@REM 					LE SOSTITUZIONI GENERALI
			@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
			@REM @esempio.di@bat@incrementale_(BAT INCREMENTALE con If = esiste Ge614 oppure no)
			@REN c:\CASA\CDM\LaQuercia\2022_2023\SALVATAGGI_2022_2023\    
			@REM  		Disco e codice Disco
			@REM .......................................................
			@REM -----> 	c:
			@REM -----> 	_c
			@REM .......................................................



			@REM		directory y dove archiviare i dati = path di destinazione + nome file
			@REM .......................................................
			SET PATH_DEST_S=c:\CASA\CDM\LaQuercia\2022_2023\SALVATAGGI_2022_2023\

			@REM 	IL file viene prima salvatato i RAR
			SET NOME_FILE_RAR_S=_ZIP_SALVATAGGI_ARCHIVI.RAR

			@REM 	IL file viene prima salvatato i RAR
			SET NOME_ELENCO_FILE_S=_ElencoFile_ZIP_SALVATAGGI_ARCHIVI.TXT

			@REM 	IL file viene prima salvatato i RAR
			SET NOME_ELENCO_FILE_Agg_S=_ElencoFile_ZIP_SALVATAGGI_ARCHIVI_Aggiornato.TXT


			@REM  se esiste il file rar viene trasformato in ge614
			SET NOME_FILE_GE614_S=_ZIP_SALVATAGGI_ARCHIVI.GE614


			@REM		directory y dove archiviare i dati = path di destinazione
			@REM .......................................................
			SET PATH_SALV_S=c:\CASA\CDM\LaQuercia\2022_2023\SALVATAGGI_2022_2023\

			@REM .......................................................





			@REM 		Il nome di tutti i file di archivio dei dati
			@REM .......................................................
			@REM ----->	ZIP_SALVATAGGI_ARCHIVI


			@REM 		Il file di archivio dei dati
			@REM .......................................................
			@REM ----->	ZIP_SALVATAGGI_ARCHIVI.RAR


			@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
			@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


			:------------------------------ CHIAMO DECODIFICA
			CALL Zip_N70_DECODIFICA.bat




			---------------imposta i file da salvare su diverse variabili (ATTENZIONE AGLI SPAZI DOPO VARIABILE=*.XLS ... NO CI DEVONO ESSERE
			@REM								ERRATO VARIABILE e spazio es. --> TipoFile_Office_S =*.MDB)
			@SET TipoFile_TEXT_S=*.AUX *GZ *.LOG *.OUT *.TEX *.Tws
			@SET TipoFile_JAVA_S=*.CLASS *.EXE *HTLM *.IML *.JAR *.JAVA *.LOG *.MF *.LNK *.XML
			@SET TipoFile_TXT_S=*.TEX *.TWS *.TXT *BAT
			@SET TipoFile_Office_S=*.MDB *.XLS *.PDF

			:------------------------CONCATENA controlla ED ESEGUI
			SET TIPO_FILE_S=%TipoFile_TEXT_S% %TipoFile_JAVA_S% %TipoFile_TXT_S% %TipoFile_Office_S%

			ECHO.	
			ECHO. "--------------------------------------------------"
			ECHO. "ELENCO FILE CON ESTENSIONE DA SALVARE "
			ECHO. %TIPO_FILE_S%
			ECHO DIR  %TIPO_FILE_S%



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



			:------------------------------ SALVO TUTTI I FILE NELLE SOTTOCARTELLE /S +  
			@rem  /A:-d mostra solo i file    /O:n  mostra i file in ordine alfabetico   /W  per vedere l’elenco formato solo dai nomi dei file 

			@REM BLOCCATO -----> DIR /S /A:-D /O:n /W %TIPO_FILE_S%> %PATH_DEST_S%%today%_ZIP_SALVATAGGI_ARCHIVI_ARCHIVIO_TIPO_FILE_SALVATI.TXT


			:------------------------------ CREO IL FILE .ZIP --> Attenzione per espandere la variabile occorre utilizzare ! ! altrimenti non funziona!!!
			@REM reimposto la destinazione

			SET PATH_DEST_S=c:\CASA\CDM\LaQuercia\2022_2023\SALVATAGGI_2022_2023\

			cls

			@REM    FACCIO IL CONTROLLO IF ESISTENZA GE614
			@REM //------------------------------------------------------------------------------------//

			@REM stampa di CONTROLLO IL nome che viene creato con .rar
			ECHO stampa di controllo : %PATH_DEST_S%%today%%NOME_FILE_S%

			echo II stampa il nome gia trasformato in GE614

			ECHO stampa di controllo : %PATH_DEST_S%%today%%NOME_FILE_GE614_S%

			::--------------------controllo con la if se esiste il ge614  @if_(qui se gia esiste i ge614 aggiorno + nuovo file.txt)
			@If exist %PATH_DEST_S%%today%%NOME_FILE_GE614_S% (

			 @echo. "//=====================> esiste il file ge614 "	

				
			@REM priva vado nella path del ge614 e poi faccio il raname dei due file da .G4614 A .RAR
			cd %PATH_DEST_S%
			RENAME %today%%NOME_FILE_GE614_S% %today%%NOME_FILE_RAR_S%

			@REM CONTORLLO ---> 
			@REM dalla destinazione torni indietro di 1 posizione cd..
			cd..
			echo torno indietro di una posizione
			dir 


			c:\CASA\RAR.EXE U -r -ac -X -logf=%PATH_DEST_S%%today%%NOME_ELENCO_FILE_Agg_S% %PATH_DEST_S%%today%%NOME_FILE_RAR_S% @Zip_N70_ElencoFile.txt 


			 )
			(
			@REM    RAMO ELSE PARTE DA ZERO  @else_(creo tutti i file da zero)
			@REM //------------------------------------------------------------------------------------//

			:------------------------------ CREO IL FILE .ZIP --> Attenzione per espandere la variabile occorre utilizzare ! ! altrimenti non funziona!!!
			@REM U -r -ac -X = Nuovi file  + sottodirectory + quelli aggiornati
			@REM -logf=%PATH_DEST_S%%today%_ZIP_SALVATAGGI_ARCHIVI_elencofile.txt = salvo l'elenco dei file in un .txt
			@REM %PATH_DEST_S%%today%%NOME_FILE_RAR_S% @Zip_N70_ElencoFile.txt  = salo tutti i file in uno zip

			c:\CASA\RAR.EXE U -r -ac -X -logf=%PATH_DEST_S%%today%%NOME_ELENCO_FILE_S% %PATH_DEST_S%%today%%NOME_FILE_RAR_S% @Zip_N70_ElencoFile.txt 

			)

			:------------------------------ CHIAMO CRIPTA
			cd  %PATH_DEST_S%
			call Zip_N70_CRIPTA.bat

			cd..
				
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











			******

			NOTE
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
