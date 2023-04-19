DOS_PROGETTI.MD
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
