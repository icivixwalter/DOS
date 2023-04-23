NOTE_DOS
				@git@salvataggio@progetto_(comandi git per il @salvataggio@rapido)


					@dove@si@trova.il.DOS_(questo è il file dei comandi DOS)
					@dove@si@trova@DOS@Comand@tutti_(tutti i comandi del DOS)
					@dove@si@trova@DOS@Cmd@Comandi.tutti_(file di tutti  i comandi del DOS)
					@comandi@dos_(file DI TUTTI I COMANDI DOS)
					CODICE_COMANDO_DOS ------> @<comando>@CMD.DOS_(Comando <nome del comando>)+@Sintassi+Parametri


				@APRI_COMANDI_DOS_(la path ed il comando per aprire il progetto DOS)
				START "apri il progetto dei comani dos" sublimetex.exe C:\CASA\LINGUAGGI\DOS\Progetti_DOS.sublime-project"


		Per le note in dos si puo usare i due punti
			:-----------------------------------------
		il comando rem 
			@REM  questo comando è nascosto con la chiocciola quindi non viene stampato con echo ON

		e puoi usare il segnalibro come questo esempio di segnaligro Note attivato con Goto  
		@GOTO note
			questo segnalibro viene utilizzato per le note multiple e viene saltato in dos.

						@dos@note_@esempi_(esempi in dos dei commenti con REM, : e segnalibro)		
		@:note


		Il tutorial di dos si trova sul web in questa pagina:
			@dos@tutorial@web_(Il tutorial web del DOS si trova in questo indirizzo https:
					https://learn.microsoft.com/it-it/windows-server/administration/windows-commands/forfiles)


A
B
C
D
F 
	FORFILES
		Aggiornamento: aprile 2007 
			Si Applica a: Windows Server 2008, Windows Vista 
			Seleziona ed esegue un comando su un file o un insieme di file. Questo comando è utile per l'elaborazione batch. 
			Per alcuni esempi di come usare questo comando, vedere gli esempi . 
				@FORFILES@CMD.DOS_(Comando ForFile + sintassi + parametri)+@Sintassi
					
		Sintassi 
 			forfiles [/ p <Percorso>] [/ m <SearchMask>] [/ s] [/ c "<Command>"] [/ d [{+ | -}] [{<data> | <Giorni>}]]
		
 		parametri

 			Parametro 													Descrizione 
			/ P <Percorso>											Specifica il percorso da cui iniziare la ricerca. 
																					Per impostazione predefinita, la ricerca inizia nella directory di lavoro corrente.
			/ M <SearchMask>										Cerchi i file in base alla maschera di ricerca specificata. La maschera di ricerca predefinito è *. *.
			/S																	Indica al forfiles comando per cercare in sottodirectory in modo ricorsivo.
			/ C "<comando>"											Esegue il comando specificato su ogni file. stringhe di comando devono essere racchiusi tra virgolette. 
																					Il comando di default è "cmd / c eco @file".
			/ D [{+ | -}] [{<Data> | <Giorni>}]	Seleziona i file con una data dell'ultima modifica entro il lasso di tempo specificato.
				
																					Seleziona i file con una data dell'ultima modifica successiva o uguale a 
																					(+) o precedente o uguale a (-) alla data specificata, dove data è nel formato MM / DD / YYYY.
																					Seleziona i file con una data dell'ultima modifica successiva o uguale a 
																					(+) la data corrente più il numero di giorni specificato, o prima di o uguale a (-) 
																					la data corrente meno il numero di giorni specificato.
																					I valori validi per Days includono qualsiasi numero nell'intervallo 0-32,768. 
																					Se non viene specificato alcun segno, + viene utilizzato per impostazione predefinita. 
			/?	Visualizza la Guida al prompt dei comandi.

		Osservazioni 
				·	Forfiles è più comunemente usato nei file batch. 
				·	Forfiles / s è simile a dir / s. 
				·	È possibile utilizzare le seguenti variabili nella stringa di comando, come specificato dall'opzione della riga di comando / c. 

				@FILE 				Nome del file. 
				@FNAME  			nome del file senza estensione. 
				@EXT 					Estensione nome file. 
				@IL PERCORSO  Percorso completo del file. 
				@RELPATH 			Restituisce true se un tipo di file è una directory. In caso contrario, questa variabile restituisce FALSE. 
				@FSIZE 				dimensione del file, in byte. 
				@FDATE 				Ultima modifica timbro data sul file. 
				@FTIME 				Ultima modifica di data e ora sul file. 


				·	Con forfiles, è possibile eseguire un comando o passare argomenti a più file.
				Ad esempio, è possibile eseguire il comando tipo su tutti i file in un albero con l'estensione txt. 
				Oppure si potrebbe eseguire ogni file batch (* .bat) sull'unità C, con il nome del file "Myinput.txt" come primo argomento. 


				·	Con forfiles, si può fare una delle seguenti: 
					o	Selezionare i file da una data assoluta o una data relativa utilizzando il parametro / d. 

					o	Costruire un albero di archivio dei file utilizzando variabili come @FSIZEand @FDATE. 

					o	Differenziare i file da directory utilizzando il @ISDIRvariable. 

					o	Includere caratteri speciali nella riga di comando utilizzando il codice 
					esadecimale per il carattere, in formato 0x HH (ad esempio, 0x09 per una scheda). 


				·	Forfiles funziona implementando la bandiera sottodirectory recurse su strumenti che sono progettati per elaborare solo un singolo file. 



				Esempi 
						Per elencare tutti i file batch sull'unità C, digitare: 
						forfiles / pc: \ / s / m * .bat / c "cmd / c eco @file è un file batch"
						Per elencare tutte le directory sull'unità C, digitare: 
						 forfiles / pc:. \ / s / m * * / c "cmd / c se @ isdir == true eco @file è una directory"
						Per elencare tutti i file nella directory corrente che sono almeno un anno di età, tipo: 
						 forfiles / s / m *. * / D -365 / C "cmd / c eco @file è di almeno un anno di età."
						Per visualizzare il testo "File è obsoleto" per ognuno dei file nella directory corrente che sono più vecchi di 1 ° gennaio 2007, digitare: 
						 forfiles / s / m *. * / D -01/01/2007 / c "cmd / c eco @file è obsoleto." 
						Per elencare le estensioni di file di tutti i file nella directory corrente in formato colonna e aggiungere una scheda prima dell'estensione, tipo: 
						 forfiles / s / m *. * / c "cmd / c eco L'estensione della @file è 0x09 @ ext" 


					 


	 	@Esempi@FORFILES
	 				@Esempio@ForFile@apri@file_(Sintassi Dos di Esempio di apertura collettiva dei file delle pulizie con il comando ForFile)
	 				@apri@pulizie@condominio.LaQuercia_(Dos apro tutti i file delle pulizie cdm ForFile)
	 				@Esempi@FORFILES.sintassi_(sintassi e ricerca file collettivi)

			@ForFiles@Esempi.1_APRI_LaQuercia_(Apri la quercia)
 				SintassiForFiles
					@REM //NOTE DI FUNZIONAMENTO
					@REM //============================================================================//
					@REM APRE TUTTI I FILE  @APERTURA@COLLETTIVA@PULIZIE@CONDOMINIO_(apro tutti i file delle pulizie del condominio esempio con ForFile)
				@REM @APRI@GRUPPO@FILE_(esempio dos di apertura collettiva tutte le pulizie del condominio)

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
				rem	m = file con criteri specificati (esempio.: *.img); di default assume *.*
				rem		dopo /m puoi applicare s = cerca anche nelle subdirectory del path principale	
				rem	c = esegue il comando racchiuso tra apici doppi
				rem	d = ultima modifica più vecchia di (giorni/data)
					
					  @REM FOR per tutti i file (DI AGOSTO) antecedenti o uguali alla 01/09/2016
					  @REM 	forfiles /s /m *.* /d -31 /c "cmd /c echo @file is outdated." 
					   
				:--------------------------------- imposto le variabili del FILE e della PATH, attenzione
				@REM  per far funzionare la path + file occorre applicare un'altro comando SET per unire le due variabili
				@REM  in una terza variabile chiamata (Unisci_s) che permetterà di creare il file LOG.txt


				@REM File_s= Questo è il file o il gruppo di file da aprire. Attenzione a come  viene rappresentato, può essere
				@REM identificato con gli *. Esempio per estrarre il gruppo del banco posta può essere rappresentato in questo
				@REM modo -> *87**BANCO_POSTA_ESTRATTO_CONTO*. Oppure per le pulizie *N16**PULIZIE**FATTURA*; mentre per il
				@REM singolfo file può essere LaQuercia_2019_2020_N87_01_BANCO_POSTA_ESTRATTO_CONTO_(2020)_(02)_R011.zip

				SET File_s=*N16**PULIZIE**FATTURA*

				@REM per la path ATTENZIONE agli spazzi nascosti, in questo caso per avere una migliore visibilita
				@REM della path è meglio racchiuderla tra virgolette come in questo caso.
				SET Path_s=c:\Casa\CDM\LaQuercia\2019_2020\DOC\


				@REM unisco PATH + FILE Attenzione agli spazzi
				SET Unisci_s=%Unisci_s%%Path_s%%File_s%


					@REM creo ed apro il file log	
					ECHO ELENCO FILE INTERESSATI 		> LOG.TXT
					echo.					>>log.txt 
					echo %Unisci_s%				>>log.txt 
					echo.					>>log.txt 
					rem 
					DIR %Unisci_s% >> LOG.TXT
					
					
					@REM II  controllo dei file aperti con un secondo file .txt
					FORFILES /P  %Path_s% /M %File_s% >> CONTROLLO_FILE_APERTI.txt
					
					
					@REM parametri: /M = file con questi criteri MA DEVONO ESSERE PRECISI
					@REM Parametri: /P = la directory della variabile; SENZA /S = per evitare le sottodirectory 2018 e 2019
					@REM		/m = maschera comando, visualizza solo il mome del file e puoi utilizzare anche /s = sottodirectory
					@REM                 ma in questo caso l'opzione /S = sub è stata sospesa perchè prende anche gli anni del 2017 e del 2018
					@REM		/C = esegue il comando all'interno delle "" ed utilizzare una delle seguenti opzioni:
					@REM				·	@FILE  = NOME FILE
					FORFILES /P %Path_s% /M %File_s% /C "cmd /c START call @file"&^exit
					
					
					
					
					
				@REM //----------------------------------------------------------------------------------------------------------------
				@REM  A.02)				SALVATAGGIO *** FINE ***
				@REM //----------------------------------------------------------------------------------------------------------------


				@REM -> pause

			@ForFiles@Esempi.2_APRI_Vittoria_(apro con maschera /M  + file)
					/s=sottodirectory /M=il file mdb /p=la path
				 FORFILES /S /M VITTORIA_770_GE_NUOVO.mdb /P c:\CASA\CDM\Vittoria\770_2022_2021\ /C "cmd /c START call @file"

			@ForFiles@Esempi.3_APRI_Mdb_( prima /P=con path +/S +/M =specifico il "file"
					SintassiForFiles
						FORFILES /S /M "c:\CASA\CDM\Vittoria\770_2022_2021\VITTORIA_770_GE_NUOVO.mdb" /C "cmd /c START call @file"
					FORFILES /S /M "COMANDI_DOS_TUTTI.MD" /C "cmd /c START call @file" &^EXIT
					
					@REM parametri =  S/ = RICERCA RICORSIVA NELLE sottodirectory
					@REM parametri =  M/ = Maschera di ricerca base  *.*
					@REM parametri =  P/ = percorso di ricerca defualt se non indicato la directory corrente
					@REM parametri =  C/ = esegui il comando per ogni file 
					@REM attenzione & commerciale non consentita , la path /P = c:\tmp senza virgolette ""
					@REM @forfiles@path_(forfile ricerca nella path ma non devi inserire le virgolette)
					
					FORFILES /P c:\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\LLPP_ARCHIVI_MDB\ /S /M "GE_MODELLI_DbBase.mdb" /C "cmd /c START call @file"

			@ForFiles@Esempi.4_(Elencare le directory nell'unita corrente)
				SintassiForFiles
					Qui fai la ricerca delle directory e stampi a video

					forfiles /P c:\CASA\LINGUAGGI\DOS\ /S /M * /C "cmd /c if @isdir==TRUE echo @file is a directory"

			@ForFiles@Esempi.5_(Elenca i file batch della directory corrente)	
					tutti i file .bat
					forfiles /P c:\ /S /M *.bat /C "cmd /c echo @file is a batch file"

			@ForFiles@Esempi.6_(Elenca i file data + di 3 gg nella directory corrente @elenco@file@old)	

					Per elencare tutti i file nella directory corrente che sono almeno un anno fa, digitare:

					forfiles /S /M *.* /D -0 /C "cmd /c echo @file is at least one year old."

			@ForFiles@Esempi.7_(@Elenco@formato@colonna)	
					Per elencare le estensioni di tutti i file nella directory corrente nel formato di colonna e aggiungere una scheda prima dell'estensione, digitare:
					
					forfiles /S /M *.* /C "cmd /c echo The extension of @file is 0x09@ext"

X
	XCOPY
		comando di copia nuovo. Per un esempio di digitare questo codice di ricerca:
			@XCOPY_(Nota comandi dos)