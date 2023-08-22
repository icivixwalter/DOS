NOTE_DOS



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
		TUTORIAL IN PDF
			https://pages.di.unipi.it/milazzo/teaching/AA1314-ProgJava/extra/DOS.pdf

		TUTORIAL DEI COMANDI DOS
			https://comandi-dos-e-altro.jimdofree.com/i-comandi-dos/


A
B
C
	CHOICE
		Sintassi
			choice [/c [<choice1><choice2><…>]] [/n] [/cs] [/t <timeout> /d <choice>] [/m <text>]

		Parametri
			Parametro			Descrizione
			/C <choice1>
				<choice2><…>	Specifica l'elenco di scelte da creare. Le scelte valide includono-z, A-Z, 0-9 e 
								caratteri ASCII estesi (128-254). L'elenco predefinito è YN, visualizzato come [Y,N]?.
								/n	Nasconde l'elenco di scelte, anche se sono ancora abilitati le scelte disponibili e il testo del messaggio (se specificato da /m) è ancora visualizzato.
			/cs					Specifica che le opzioni di maiuscole e minuscole. Per impostazione predefinita, le 
								scelte non sono rilevanti.
			/T <timeout>		Specifica il numero di secondi di pausa prima di utilizzare l'opzione predefinita 
								specificata da /d. I valori accettabili sono compresi 0 a 9999. Se /t è impostato su 0, scelta non sospendere prima di restituire la scelta predefinita.
			/D <choice>			Specifica la scelta predefinita da utilizzare dopo un'attesa il numero di secondi 
								specificato da /t. La scelta predefinita deve essere nell'elenco di scelte specificato 
								da /c.
			/M <text>			Specifica un messaggio da visualizzare prima dell'elenco di scelte. Se /m non è 
								specificato, viene visualizzato solo il messaggio desiderato.
			/?					Visualizza la guida al prompt dei comandi.


		Commenti
		La variabile di ambiente ERRORLEVEL è impostata sull'indice della chiave selezionata dall'elenco di scelte. La prima scelta nell'elenco restituisce un valore di , il secondo valore di 12e così via. Se l'utente preme un tasto che non è una scelta valida, scelta emette un segnale acustico di avviso.

		Se scelta rileva una condizione di errore, restituisce un valore ERRORLEVEL di 255. Se l'utente preme CTRL+BREAK o CTRL+C, scegliere restituisce un valore ERRORLEVEL di 0.

		Esempi
			Es_01
				choice /c ync
					Per presentare le scelte Y, N e C, digitare la riga seguente in un file batch:

			Es_02
				[Y,N,C]?
					Il seguente messaggio viene visualizzato quando il file batch viene eseguito CON LA scelta comando


			Es_03
				choice /c ync /n /m "Yes, No, or Continue?"
					Per nascondere le scelte Y, N e C, ma visualizzare il testo Sì, No o Continua, digitare la riga seguente in un file batch

					nOTA
						Se si utilizza il /n parametro, ma non si utilizza /m, l'utente non è richiesto quando scelta è in attesa di input.
							choice /c ync /n ...


			Es_04

					choice /c ync /m "Yes, No, or Continue"
						Per visualizzare testo e le opzioni utilizzate negli esempi precedenti, digitare la riga seguente in un file batch:


			Es_05
					Per impostare un limite di cinque secondi e specificare N come valore predefinito, digitare la riga seguente in un file batch:
						choice /c ync /t 5 /d n


D
	DIR
		
		SINTASSI
					@DIR@sintassi_(Comandi dor tutta la sintassi di DIR)

				Visualizza l'elenco dei file e delle sottodirectory in una directory
			DIR [unità:][percorso][nomefile] [/P] [/W] [/O[[:]ordinamento]] 
				[/S] [/B] [/L] [/V]

				Parametri
				unità:   Specifica l’unità di cui si desidera visualizzare l’elenco.
				percorso Specifica la directory di cui si desidera visualizzare l’elenco.
				nomefile Specifica il file o il gruppo di file di cui si desidera visualizzare
				l’elenco.

		OPZIONI
			/P 		Visualizza l’elenco una schermata per volta. Per passare alla schermata
					successiva, è sufficiente premere un tasto.
			/W 		Visualizza l’elenco in formato ampio, elencando fino a cinque file 
					o directory per riga.
			/O 		Elenca i file secondo un ordinamento specificato
				ordinamento :
							N Per nome (alfabetico).
							S Per dimensione (dal più piccolo).
							E Per estensione (alfabetico).
							D Per data e ora (dal più recente).
							G Directory prima dei file. Prefisso “-“ per invertire
							l’ordine.

			/S Visualizza i file nella directory specificata e in tutte le sottodirectory.
			
			/B Usa il formato semplice (solo nomi, senza intestazioni).
			
			/L Usa le lettere minuscole.
			
			/V Visualizzazione completa

				Le opzioni possono essere preimpostate nella variabile d’ambiente DIRCMD

		PARAMETRI DIR
			In questa tabella ti elenco quali sono e a cosa servono.
			/A	Visualizza i file con gli attributi specificati ( 
				D per le directory, 
				R per i file di sola lettura, H per i file nascosti, 
				A per i file di archivio, 
				S per i file di sistema, 
				I per i file non indicizzati, 
				L per i Reparse point, - per negare l'attributo).
			/B Visualizza l'elenco senza intestazioni e informazioni di riepilogo.
			/C Visualizza il separatore delle migliaia nella dimensione dei files.
			/D Visualizza l'elenco in formato ampio con i file ordinati per colonna.
			/L Visualizza la lista con caratteri minuscoli.
			/N Visualizza la lisa in un formato lungo con i nomi dei file a destra.
			/O Elenca i files ordinandoli per nome in ordine alfabetico ( N ) 
				per le dimensioni a partire dal minore (S), per l'estensione (E), per la data a partire
				dal più vecchio (D), raggruppando le directory (G). 
				Il simbolo - davanti al parametro inverte l'ordine.
			/P Mostra l'elenco dividendoli in schermate successive.
			/Q Visualizza il proprietario dei files.
			/R Visualizza i flussi di dati alternativi del file.
			/S Visualizza anche l'elenco dei files nelle sottodirectory.
			/T Visualizza l'elenco in ordine di data di creazione (C), 
				ultimo accesso (A), ultima scrittura (W).
			/W Visualizza in formato ampio
			/X Mostra i nomi brevi generati dai nomi in formato lungo.
			/4 Mostra l'anno in formato a 4 cifre
	DATE
		date
			Note
				Per visualizzare la data senza modifica
					date /t
				Per impostare una nuova data, digitare “DATE” seguito dalla nuova data nel formato gg/mm/aa e premere INVIO.
						@dos@date_(Comando DATE: come visualizzare una data o impostare una nuova data)

				echo %DATE% %TIME% 
						@Time_( @ora@corrente: visualizza la data e time corrente)

						@data_(con forfile visualizzo la data e il time del file)

						forfiles /P C:\ /S /M week.bat /C "cmd /c echo @fdate @ftime	
						forfiles /P c:\CASA\LINGUAGGI\DOS\DATE_DOS\ /S /M week.bat /C "cmd /c echo @fdate @ftime



F 
	FIND
				@dos@find_(comando Finds)

		Sintax
			findstr [/b] [/e] [/l | /r] [/s] [/i] [/x] [/v] [/n] [/m] [/o] [/p] [/f:<File>] [/c:<String>] [/g:<File>] [/d:<DirList>] [/a:<ColorAttribute>] [/off[line]] <Strings> [<Drive>:][<Path>]<FileName>[ ...]
			Parameter 	Description

			/b
							Corrisponde il modello di testo se è all'inizio di una riga.
							Matches the text pattern if it is at the beginning of a line.

			/e
								Corrisponde il modello di testo se è alla fine di una linea.
								Matches the text pattern if it is at the end of a line.

			/l
								Processi stringhe di ricerca letteralmente.
								Processes search strings literally.

			/r
			Processi stringhe di ricerca come espressioni regolari. Questa è l'impostazione predefinita.
			Processes search strings as regular expressions. This is the default setting.

			/s
			Cerchi nella directory corrente e in tutte le sottodirectory.
			Searches the current directory and all subdirectories.

			/i
			Ignora il caso dei caratteri durante la ricerca della stringa (Maiuscole o minuscole).
			Ignores the case of the characters when searching for the string.

			/x
			Stampa le linee che corrispondono esattamente.
			Prints lines that match exactly.

			/v
			Stampa solo le righe che non contengono una corrispondenza.
			Prints only lines that do not contain a match.

			/n
			Stampa il numero di riga di ogni riga che corrisponde.
			Prints the line number of each line that matches.

			/m
			Stampa solo il nome del file se un file contiene una corrispondenza.
			Prints only the file name if a file contains a match.

			/o
			Stampa carattere  Offset prima di ogni riga corrispondente
			Prints character offset before each matching line.

			/p
			Ignora i file con caratteri non stampabili.
			Skips files with non-printable characters.

			/off[line]
			Non saltare i file che hanno l'attributo di linea set.
			Does not skip files that have the offline attribute set.

			/f:<File>
			Ottiene un elenco di file dal file specificato.
			Gets a file list from the specified file.

			/c:<String>
			Utilizza il testo specificato come stringa di ricerca letterale.
			Uses the specified text as a literal search string.

			/g:<File>
			Ottiene stringhe di ricerca dal file specificato.
			Gets search strings from the specified file.

			/d:<DirList>
			Cerchi l'elenco specificato di directory. Ogni directory deve essere separato con un punto e virgola (;), ad esempio dir1; dir2; dir3.
			Searches the specified list of directories. Each directory must be separated with a semicolon (;), for example dir1;dir2;dir3.

			/a:<ColorAttribute>
			Specifica attributi di colore con due cifre esadecimali. Tipo di colore /? per ulteriori informazioni.
			Specifies color attributes with two hexadecimal digits. Type color /? for additional information.

			<Strings>
			Specifica il testo da cercare nel nome del file. Richiesto.
			Specifies the text to search for in FileName. Required.

			[<Drive>:][<Path>]<FileName>[ ...]
			Specifica la posizione e il file oi file da ricercare. è richiesto almeno un nome di file.
			Specifies the location and file or files to search. At least one file name is required.

			/?
			Visualizza la Guida al prompt dei comandi.
			Displays Help at the command prompt.
		Remarks
		Osservazioni:

		    Tutte le opzioni di findstr della riga di comando devono precedere le stringhe e il nome nella stringa di comando.
		    All findstr command-line options must precede Strings and FileName in the command string.
		    
		    Le espressioni regolari utilizzano entrambi i caratteri letterali e metacaratteri per trovare modelli di testo, piuttosto che le stringhe esatte di caratteri. Un carattere letterale è un personaggio che non ha un significato speciale nella regular-expression sintassi corrisponde un evento di quel personaggio. Ad esempio, le lettere ed i numeri sono caratteri letterali. Un metacarattere è un simbolo con un significato speciale (un operatore o delimitatore) nella sintassi delle espressioni regolari.
		    Regular expressions use both literal characters and metacharacters to find patterns of text, rather than exact strings of characters. A literal character is a character that does not have a special meaning in the regular-expression syntax—it matches an occurrence of that character. For example, letters and numbers are literal characters. A metacharacter is a symbol with special meaning (an operator or delimiter) in the regular-expression syntax.
		    
		    Nella tabella seguente sono elencati i metacaratteri che findstr accetta.
		    The following table lists the metacharacters that findstr accepts.


		    Examples

				Utilizzare gli spazi per separare più stringhe di ricerca a meno che l'argomento è preceduto da / c.
				Use spaces to separate multiple search strings unless the argument is prefixed with /c.

				//--------------------------------------------------------------------------------------------------------------------------//

				Per verificare la "ciao" o "là" nel file X.Y, digitare:
				To search for "hello" or "there" in file x.y, type:

				findstr "hello there" x.y 

				//--------------------------------------------------------------------------------------------------------------------------//

				Per verificare la "ciao là" nel file X.Y, digitare:
				To search for "hello there" in file x.y, type:

				findstr /c:"hello there" x.y 

				//--------------------------------------------------------------------------------------------------------------------------//

				Per trovare tutte le occorrenze della parola "Windows" (con l'iniziale maiuscola W) nel file Proposal.txt, digitare:
				To find all occurrences of the word "Windows" (with an initial capital letter W) in the file Proposal.txt, type:

				findstr Windows proposal.txt 

				//--------------------------------------------------------------------------------------------------------------------------//

				Per cercare tutti i file nella directory corrente e tutte le sottodirectory che contenevano la parola di Windows, a prescindere dalla lettera caso, digitare:
				To search every file in the current directory and all subdirectories that contained the word Windows, regardless of the letter case, type:

				findstr /s /i Windows *.* 

				//--------------------------------------------------------------------------------------------------------------------------//

				Per trovare tutte le occorrenze di linee che iniziano con "FOR" e sono preceduti da zero o più spazi (come in un loop di programma per computer), e per visualizzare il numero di riga in cui si trova ogni occorrenza, tipo:
				To find all occurrences of lines that begin with "FOR" and are preceded by zero or more spaces (as in a computer program loop), and to display the line number where each occurrence is found, type:

				findstr /b /n /r /c:"^ *FOR" *.bas 

				//--------------------------------------------------------------------------------------------------------------------------//

				Per cercare più stringhe in una serie di file, creare un file di testo che contiene ogni criterio di ricerca su una riga separata. È inoltre possibile elencare i file esatto che si desidera cercare in un file di testo. Ad esempio, per utilizzare i criteri di ricerca nel file Stringlist.txt, la ricerca di file elencati nella filelist.txt, e quindi memorizzare i risultati nel file Results.out, digitare:
				To search for multiple strings in a set of files, create a text file that contains each search criterion on a separate line. You can also list the exact files that you want to search in a text file. For example, to use the search criteria in the file Stringlist.txt, search the files listed in Filelist.txt, and then store the results in the file Results.out, type:

				findstr /g:stringlist.txt /f:filelist.txt > results.out 


				//--------------------------------------------------------------------------------------------------------------------------//

				Per elencare tutti i file che contiene la parola "computer" all'interno della directory corrente e in tutte le sottodirectory, a prescindere dal caso, tipo:
				To list every file containing the word "computer" within the current directory and all subdirectories, regardless of case, type:

				findstr /s /i /m "\<computer\>" *.*

				//--------------------------------------------------------------------------------------------------------------------------//

				Per elencare tutti i file che contiene la parola "computer" e tutte le parole che iniziano con "comp", (come ad esempio "complimento" e "competizione"), digitare:
				To list every file containing the word "computer" and any other words that begin with "comp", (such as "compliment" and "compete"), type:

				findstr /s /i /m "\<comp.*" *.*

				//--------------------------------------------------------------------------------------------------------------------------//

				Additional references
				Command-Line Syntax Key = Della riga di comando chiave Sintassi


				TESTO SENZA PARENTESI []{}
				Text without brackets or braces = Testo senza parentesi quadre o graffe
				Items you must type as shown = I prodotti che è necessario digitare come mostrato

				PARENTESI ANGOLARI <>
				<Text inside angle brackets> = <Testo all'interno di parentesi angolari>
				Placeholder for which you must supply a value = Segnaposto per il quale è necessario fornire un valore

				PARENTESI []
				[Text inside square brackets] = [Testo all'interno di parentesi quadre]
				Optional items = elementi facoltativi

				PARENESTI {}
				{Text inside braces}= {Testo} all'interno bretelle
				Set of required items; choose one = Set di elementi richiesti; sceglierne uno

				BARRE  VERTICCALI
				Vertical bar (|) = barre verticali
				Separator for mutually exclusive items; choose one = Separatore per gli elementi si escludono a vicenda; sceglierne uno

				PUNTINI DI SOSPENSIONE
				Ellipsis (...) = Puntini di sospensione (...) 
				Items that can be repeated = Gli elementi che possono essere ripetuti

		@Dos@Find@Esempi.2_TrovaOccorrenze_(Find trova le occorrenze che iniziano con COMP)

				@REM FINDSTR
				@REM ------------------------------------------------------------------------------------------- 
				@REM Sintassi 	findstr [/b] [/e] [/l | /r] [/s] [/i] [/x] [/v] [/n] [/m] [/o] [/p] [/f:<File>] [/c:<String>] [/g:<File>] [/d:<DirList>] [/a:<ColorAttribute>] [/off[line]] <Strings> [<Drive>:][<Path>]<FileName>[ ...]
				@REM Opzioni
				@REM /b /e /l /r /s /i /x /v /n /m /o /p /off[line] /f:<File> /c:<String> /g:<File> /d:<DirList> /a:<ColorAttribute> <Strings> [<Drive>:][<Path>]<FileName>[ ...] /? 

				@REM FINDSTR
				@REM -------------------------------------------------------------------------------------------


				@ECHO.
				@ECHO. "Per trovare tutte le occorrenze di linee che iniziano con "COMP" e sono preceduti da zero o più 
				@ECHO. "spazi (come in un loop di programma per computer), e per visualizzare il numero di riga in cui si trova ogni occorrenza, tipo:"
				@ECHO. "TROVA LE OCCORRENZE CHE INIZIANO CON  <<COMP>> IN TUTTI I FILE DELLA DIRECTORY CORRENTE"
				@ECHO.
				findstr /s /i /m "\<comp.*" *.*

				PAUSE




	FORFILES

		Aggiornamento: aprile 2007 
			Il comando forfiles consente di eseguire un comando su o passare argomenti a più file. Ad esempio, è possibile eseguire il tipo comando su tutti i file in una struttura ad albero con l’estensione del nome file con estensione txt.
			
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
				@EXT 				Estensione nome file. 
				@IL 				PERCORSO  Percorso completo del file. 
				@RELPATH 			Restituisce true se un tipo di file è una directory. In caso contrario, 
									questa variabile restituisce FALSE. 
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
							forfiles /P c:\ /S /M *.bat /C "cmd /c echo @file is a batch file"


						
						Per elencare tutte le directory sull'unità C, digitare:
						forfiles /P c:\ /S /M * /C "cmd /c if @isdir==TRUE echo @file is a directory"

						Per elencare tutti i file nella directory corrente che sono almeno un GIORNO, digitare:

							forfiles /S /M *.* /D -1 /C "cmd /c echo @file is at least one year old."

						Per elencare tutti i file nella directory corrente che sono almeno un anno fa, digitare:
							forfiles /S /M *.* /D -365 /C "cmd /c echo @file is at least one year old."


						Per visualizzare il file di testo non aggiornato per ogni file nella directory corrente precedente al 1° gennaio 2007, digitare:

						forfiles /S /M *.* /D -01/01/2007 /C "cmd /c echo @file is outdated."

						Per elencare le estensioni di file di tutti i file nella directory corrente in formato
						 colonna e aggiungere una scheda prima dell'estensione, tipo: 
						
						 forfiles /S /M *.* /C "cmd /c echo The extension of @file is 0x09@ext"


						 es.
						 forfiles /P "c:\CASA\LINGUAGGI\DOS\" /S /M *.* /C "cmd /c echo @fdate @fdate"


					 


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

T
	timeout /t 8 /nobreak 
		@timeout_(sospensione tempo  )
		@sospensione@time_(Qui si trova un esempio sospensione del tempo in dos)

X
	XCOPY
		comando di copia nuovo. Per un esempio di digitare questo codice di ricerca:
			@XCOPY_(Nota comandi dos)



FAQ_DOS

	CONTROLLO DISCO
		@dos@controllo@disco_(Come controllare l'esistenza di un disco)


			@ECHO OFF
			@REM.-- Prepare the Command Processor
			@REM SETLOCAL ENABLEEXTENSIONS
			@REM SETLOCAL ENABLEDELAYEDEXPANSION

			@REM ----------------------------------------------------------------------------------------------------------------------------------------------	
			@REM		MODALITA DI ARCHIVIAZIONE E NOTE
			@REM ----------------------------------------------------------------------------------------------------------------------------------------------	
			@REM n.b se non vengono indicate la directory di partenza non vengono trovati i dati da archiviare
			@REM n.b se non  viene indicata la directory di arrivo i dati vengono archiviati nella directory winrar

			@REM parametri directory di partenza	directory di arrivo  parametri  + lista parametri 
			@REM a -r -U   c:\GESTIONI\SALVATAGGI\brs\file.rar	c:\GESTIONI\SALVATAGGI\brs\         -n           A03_Salvataggi_BRS_LISTA_01_TUTTO.lst


			@REM  PARAMETRI OPZIONI:
			@REM  Opzione -x Estrae file e cartelle con il percorso originale. 
			@REM  Opzione -r considera le sottocartelle (processa gli archivi delle sottocartelle)
			@REM  Opzione -u Estrai solo i nuovi
			@REM  Opzione -y Assumi la risposta 'Si' a tutte le domande



			@REM ------------ ESEMPIO CON WINRAR --------------------
			@REM ma deve essere correttamente settato altrimenti da errore nella ricerca del
			@REM file lista.lst perche i comandi dos di rar non riconoscono la path ed il file dove risiede
			@REM lista.lst. In alternativa salvare nella direttory gli eseguibili rar.exe e unrar.exe ed
			@REM utilizzare i comandi dos.
			@REM WinRAR.lnk a -r -U c:\GESTIONI\SALVATAGGI\provaLista -n@lista.lst


			@REM ------------ ESEMPIO CON I COMANDI DOS CON RAR.EXE ED UNRAR.EXE ------------------------------
			@REM alternativo a winrar che non è settato correttamente. Utilizzare gli eseguibili rar.exe e unrar.exe

			@REM rar.exe a -r -U c:\GESTIONI\SALVATAGGI\provaLista -n@lista.lst

			@REM ------------- ESEMPIO LISTA.LST -----------------------------
			@REM salvataggio dei file *.mdb + *.xls nella sottodirectory brs
			@REM brs\*.mdb 
			@REM brs\*.xls


			@REM  ***************************************************************
			@REM  Utilizzo alternativo di varie estrazioni che viene eseguita quella
			@REM  con il disco esterno lexar attivo : es. se è attivo il disco g viene
			@REM  effettuata la procedura di estrazione LEXAR_G mentre viene saltata la LEXAR_G


			@REM//ESTRAI PARZIALI SOLO ARCHIVI TRIBUTI DISCO LEXAR_G
			@REM Unrar.exe x -y -r -U G:\GESTIONI\SALVATAGGI\A01_01_N03_Salvataggi_del_Menu_Principale.rar *.* 


			@REM ----------------------------------------------------------------------------------------------------------------------------------------------	
			@REM		MODALITA DI ARCHIVIAZIONE E NOTE *** FINE ***
			@REM ----------------------------------------------------------------------------------------------------------------------------------------------	



			@REM ----------------------------------------------------------------------------------------------------------------------------------------------	
			@:DISCO_LEXAR_E


			@IF ERRORLEVEL 1 (GOTO ERRORE_DISCO_E)
			@DIR E:

			@:ERRORE_DISCO_E

			echo.
			echo.
			echo."=================================================================="
			echo."				MSG_ERRORE_LEXAR_E:"
			echo.
			echo."---------------> "ERRORE DISCO_E VADO AL DISCO_G" "			
			echo.
			echo.
			echo."=================================================================="

			@REM Ritardo per /T:2 secondi
			@choice /C:X /N /T:2 /D:X > NUL

			GOTO DISCO_LEXAR_G

			@REM ----------------------------------------------------------------------------------------------------------------------------------------------


			@REM ----------------------------------------------------------------------------------------------------------------------------------------------

			@:DISCO_LEXAR_G


			@IF ERRORLEVEL 2 (GOTO ERRORE_DISCO_G)
			@DIR G:

			@:ERRORE_DISCO_G
			echo.
			echo.
			echo."=================================================================="
			echo."				MSG_ERRORE_LEXAR_G:"
			echo.
			echo."---------------> "ERRORE DISCO_G VADO AL DISCO_I" "			
			echo.
			echo.
			echo."=================================================================="

			@REM Ritardo per /T:2 secondi
			@choice /C:X /N /T:2 /D:X > NUL
			GOTO DISCO_LEXAR_I

			@REM ----------------------------------------------------------------------------------------------------------------------------------------------




			@REM ----------------------------------------------------------------------------------------------------------------------------------------------
			@:DISCO_LEXAR_I

			@IF ERRORLEVEL 3 (GOTO ERRORE_DISCO_I)
			@DIR I:

			echo.
			echo.
			echo."******************************************************************"
			echo."				MSG_LEXAR_I:"
			echo.
			echo.">>>>>>>>>>>>>>>> "ESISTE_DISCO_I" "			
			echo.
			echo. "FINE PROCEDURA"
			echo.
			echo."******************************************************************"

			@REM Ritardo per /T:2 secondi
			@choice /C:X /N /T:2 /D:X > NUL
			@REM USCITA BATCH
			EXIT /W

			@:ERRORE_DISCO_I


			echo.
			echo."=================================================================="
			echo."				MSG_ERRORE_LEXAR_G:"
			echo.
			echo."---------------> "ERRORE DISCO_G VADO AL DISCO_I" "			
			echo.
			echo."	FINE DEI CONTROLLI - DISCO LEXAR NON TROVATO CONTROLLARE	"
			echo.
			echo."=================================================================="

			@REM Ritardo per /T:2 secondi
			@choice /C:X /N /T:2 /D:X > NUL

			@REM Uscita dalla procedura batch
			EXIT /B
				

			@REM ----------------------------------------------------------------------------------------------------------------------------------------------



	CONTROLLO_DRIVER
	
		@dos@driver@query_(scrivere l'elenco dei driver su csv)
			faccio l'elenco dei driver e si salvo su un .csv
				driverquery /fo CSV > drivers.csv
		@dos@driver@query_(definizione del comando DriverQuery)

			Driverquery
			Il comando driverquery genera un elenco di tutti i driver hardware installati in Windows.
			Questo è utile per salvare la lista in un foglio stampabile.
			Come al solito, ci sono delle opzioni:
				driverquery /S 
						consente di specificare il nome o l'indirizzo IP di un computer remoto in modo da indagare sui driver installati.
				driverquery /SI 
						mostra le informazioni di firma digitale per i driver.
				driverquery /fo 
					consente di specificare il formato in cui vengono visualizzate le informazioni in modo da poterle salvare in una tabella.

				Dopo avere digitando 
					/fo aggiungere 
					TABLE per salvare la lista in una tabella, 
					LIST per un elenco e 
					CSV per visualizzare i dati come valori separati da virgola.
			Alla fine, aggiungere un simbolo > seguito dal nome del file in cui salvare la lista.

				Ad esempio: driverquery /fo CSV > drivers.csv
		@dos@controllo@driver_(come individuare i driver presenti sul sistema)

				@ECHO OFF
				REM.-- Prepare the Command Processor
				REM SETLOCAL ENABLEEXTENSIONS
				REM SETLOCAL ENABLEDELAYEDEXPANSION

				REM  ***************************************************************
				rem     file batch : Salvataggio.rar
				REM     directory = c:\Casa\LEGGI\PAUS
				rem     file WinRAR


				rem  Opzione -x Estrae file e cartelle con il percorso originale. 
				rem  Opzione -r considera le sottocartelle (processa gli archivi delle sottocartelle)
				rem  Opzione -u Estrai solo i nuovi
				REM  ***************************************************************





				@REM 					LE SOSTITUZIONI GENERALI
				@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

				@REM  		Disco e codice Disco
				@REM .......................................................
				@REM -----> 	Y:
				@REM -----> 	_I
				@REM ----->	DISCO_Y_LLPP
				@REM .......................................................


				@REM		directory y dove archiviare i dati
				@REM .......................................................
				@REM ----->	Y:\Valter\Scanner\Backup\BackUp_TRIBUTI_LOCALI\
				@REM .......................................................



				@REM 		Il file di archivio dei dati
				@REM .......................................................
				@REM ----->	TRIBUTI_LOCALI_C01_S01_S01_S01_03_Archivi.*

				@REM .......................................................

				@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
				@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



				@REM 				ELIMINA_DUE_CARATTERI_DAL_NOME
				@REM //**********************************************************************************************************************
					
				@:ELIMINA_DUE_CARATTERI_DAL_NOME
						
				ECHO OFF
						@REM IF SALVATAGGI SU ELIMINA_DUE_CARATTERI_DAL_NOME	
						@REM=================================================================================================
						@REM NOTE : Elimina due caratteri dal nome.
						@REM	    controllo if.

						
							@REM 01) If exist E: = SE ESISTE IL FILE.RAR AGGIORNA QUELLO ESISTENTE
							@REM --------------------------------------------------------------------------------------
								
								@rem  Consente a un amministratore di visualizzare un elenco dei 
				    				@rem driver di dispositivo installati.	

								 DRIVERQUERY 
								
								pause
								
								@REM fine procedura
								:eof
								
									@REM Ritardo per 3 secondi
									@choice /C:X /N /T:3 /D:X > NUL
									EXIT

								 @REM ----> PAUSE
								 
								 
								
							@REM 01) If exist E: = SE ESISTE IL FILE.RAR AGGIORNA QUELLO ESISTENTE  *** FINE ***
							@REM --------------------------------------------------------------------------------------
							
							

							
							


						@REM ELIMINA_DUE_CARATTERI_DAL_NOME	*** FINE ***
						@REM=================================================================================================




				@:ERR_ELIMINA_DUE_CARATTERI_DAL_NOME

					echo.
					echo."=================================================================="
					echo."			MSG - ERR_ELIMINA_DUE_CARATTERI_DAL_NOME "
					echo.
					echo."ATTENZIONE '!!!' NON ESISTE ELIMINA_DUE_CARATTERI_DAL_NOME - USCITA - "			
					echo."=================================================================="
					
					@REM Ritardo per 3 secondi
					@choice /C:X /N /T:3 /D:X > NUL


					@REM RESTITUISCE AL CHIAMANTE
					


				@REM 				ELIMINA_DUE_CARATTERI_DAL_NOME		*** FINE ***
				@REM //**********************************************************************************************************************

	COME_ESEGUIRE_COMANDI_IN_LINEA
		@dos@comandi@multipli_(come eseguire in dos dei comandi multipli sulla stessa linea di comando)
			Per eseguire due comandi, detto @comando@multiplo, insieme nella stessa riga, basta separarli con && .
			Quello a sinistra delle E commerciali viene eseguito prima, l'altro subito dopo senza chiedere conferma.
				@esempio_@camando_@multiplo_(il @comando @multipo in dos si scrive con la &&)

				DIR *.TXT && DIR *.BAT



		ES_02_COMANDO_MULTIPLO
			Comando multiplo in dos per aprie la path + file.pdf e la variabile di ambiente impostata.
				@dos@comando@multiplo_(con il comando @set che @imposta la @variabile)


			SET PATH_S=c:\\CASA\\LINGUAGGI\\DOS\\DOS_TUTORIAL\\ && START "APRI in dos pdf + path in unico comando" %PATH_S% && START "APRI IL FILE" CALL "%PATH_S%\DOS_BATCH_{TUTORIAL_batch-file-it}.pdf"