DOS_PROGETTI.MD
	Note
		tutti i progetti in dos vengono divisi per lettera di inizio, gli esempi sono riportati qui nei progetti e divisi per cartella. Alcune volte vengon richiamati i comandi dos riportati nel file .md denominato COMANDI_DOS_TUTTI.md
	F
		FORFILE
			Dove_si_trova
				File dos che apre tutte le pulizie del condominio con il comando forFile si trova
				qui ----> @dove.si.trova@apri@pulizie@condominio.LaQuercia_(indirizzo Dos per aprire tutti apro tutti i file delle pulizie del condominio con il cdm ForFile)
					digita ----> @Esempi@FORFILES_(chiave di ricerca)
	Z
		ZIP_INCREMENTALE
				Note
		
					Questo è un file .bat per il @SALVATAGGIO@INCREMENTALE, che si basa DATA CORRENTE come nome
					inziale dell'archivio, composta in formato AAAMMGG_<nome_file>rar, esempio
					 				2023_04_18_ZIP_SALVATAGGI_ARCHIVI.GE614  				----> file rar criptato
					 				2023_04_18_ZIP_SALVATAGGI_ARCHIVI_elencofile.txt   ----> elenco file salvati

					Vengono utilizzati 4 file :

						ZIP_N70_RAR_INCREMENTALE.BAT  = contiene il codice dos e rar il 
																	salvataggio ed utiliza il file
					 												.txt per le cartelle. 
						Zip_N70_ElencoFile.txt 			= qui vengono indicate le cartelle da salvare con i file.
						Zip_N70_CRIPTA.bat 				= qui cripto da rar in GE614
						Zip_N70_DECODIFICO.bat 			= qui cripto da GE614 A rar

					Il compressore effettua il  salvataggio della cartella LaQuercia 2023
					con la discriminazione delle sole cartelle indicate nel file .txt che esclude l'archiviazione dei file gia compressi.
					La path del progetto principale è LA CARTELLA PRINCIPALE con le sue
					sottodirectory:
								c:\CASA\CDM\LaQuercia\2022_2023\
								c:\CASA\CDM\LaQuercia\2022_2023\DOC\
								c:\CASA\CDM\LaQuercia\2022_2023\XLS\
								c:\CASA\CDM\LaQuercia\2022_2023\SALVATAGGI_2022_2023\
										@bat@incrementale@LaQuercia.2023_(esempio bat incrementale)
										@2023@zip_(bat incrementale salvo la quercia)

			

					FUNZIONAMENTO
						Il file prima decripta, poi comprime e dopo cripta il risultato
							vedi codice ----> @ZIP_N70_RAR_INCREMENTALE.BAT_(descrizione del codice)
							@ZIP@INCREMENTALE_(descrizione di funzionamento) 




TROVARE_TUTTI_I_PROGETTI
      
        //@DOVE@SI@TROVANO.I@PROGETTI   
        //@TUTTI.I.PROGETTI_(tutti i progetti Dos, React, SublimeTex, Java, C++, Powershell ecc.)
        //----------------------------------------------------------------------------------------//
        
            Se vuoi trovare tutti progetti devi aprire la path in cui c'e il riepilo di tutti i progetti
            quali il DOS, PAWERSHELL, REACT ecc..

            Per aprire questa cartella fare riferimento a queste chiavi di ricerca:
        
            Questo è il progetto di TUTTI@PROGETTI 
            TROVA_PROGETTI.MD
            @TUTTI@I@PROGETTI_(questo è il file contiene i riferimenti a tutti progetti)
            
            Apro il progetto con TUTTI i progetti con il DOS
            Invoke-Item "c:\\CASA\\LINGUAGGI\\TROVA_PROGETTI\\TROVA_PROGETTI.sublime-project"
            
            Apro tutti i progetti con powershell
            START "apri il progetto dei comandi di TUTTI@PROGETTI" "c:\\CASA\\LINGUAGGI\\TROVA_PROGETTI\\TROVA_PROGETTI.sublime-project"
            
        //----------------------------------------------------------------------------------------//
