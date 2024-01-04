

  
goto salvataggi
	00) imposto le variabili di base path_partenza_s
	01) calcello il vecchio elenco
	02) creo il file vuoto .txt
	03) salvo nell'elenco i file vecchi di 5 gg
	04) attivo il rar con l'elenco creato in .txt
	

	
:salvataggi


@rem 00)
set path_partenza_s=c:\CASA\CDM\LaQuercia\LaQuercia_2021_2022\XLS\

@rem 01)
	del %path_partenza_s%lista_file.txt


@rem 02)
echo. > %path_partenza_s%lista_file.txt


@rem 03)
rem cd %path_partenza_s%
dir 



@rem 04)
	@rem ESEMPIO_04
	@rem		= utilizza la variabile path per il salvaggio della lista dei file nella path definita
	@rem	 	/m = accetta solo un parametro *.txt non due	+ d 0 = oggi d -10  = vecchio di 10 gg
	@rem		/c = è per il comando dos che deve essere ripetuto con "cmd ... "
	@rem		nel formato MM/GG/AAAA *** NON CI RIESCO ** 	questo esempio costruisce l'elenco 
	@rem		DEI modificati oltre 23 gg dalla data corrente

forfiles /P %path_partenza_s% /m *.* /d -23 /c "cmd /c echo @file" >> %path_partenza_s%lista_file.txt
  
  
  
c:\CASA\WinRAR\RAR.EXE a -r -u %path_partenza_s%RustSorgenti.rar %path_partenza_s%@lista_file.txt  
  
rem c:\CASA\7_Zip64bit\7z.EXE 7z a RustSorgenti.zip %path_partenza_s%@lista_file.txt  

rem c:\CASA\7_Zip64bit\7z a archive1.zip %path_partenza_s%@lista_file.txt  




DIR  
  PAUSE
  
 goto SALVATAGGI_RICORSIVI 
 
 SINTASSI FOR FILE
 forfiles [/P pathname] [/M searchmask] [/S] [/C command] [/D [+ | -] [{<date> | <days>}]]
 
 https://docs.microsoft.com/it-it/windows-server/administration/windows-commands/forfiles
 
 esempi preparati

@rem ESEMPIO_01
rem 		= salva - 22 gg
 		rem forfiles /P c:\CASA\CDM\LaQuercia\LaQuercia_2021_2022\XLS\ /m *.xls /d -22 /c "cmd /c echo @file" >> lista_file.txt 
		
		= salva - 1 gg	
		rem forfiles /P c:\CASA\CDM\LaQuercia\LaQuercia_2021_2022\XLS\ /m *.xls /d -1 /c "cmd /c echo @file" >> lista_file.txt 

@rem ESEMPIO_02
@rem 		= salva dalla directory corrente e le sottodirectory - 8gg
 		rem forfiles /s /m *.* /d -8 /c "cmd /c echo @file >> lista_file.txt" 

@rem ESEMPIO_03 		
@rem 		= stampa directory corrente + sottodirectory i nomi dei file
 		  forfiles /s /m *.* /d -5 /c "cmd /c echo @file is outdated." 


@rem ESEMPIO_04
	@rem		= utilizza la variabile path per il salvaggio della lista dei file nella path definita
	@rem	 	/m = accetta solo un parametro *.txt non due	+ d 0 = oggi d -10  = vecchio di 10 gg
	@rem		/c = è per il comando dos che deve essere ripetuto con "cmd ... "
	@rem		nel formato MM/GG/AAAA *** NON CI RIESCO ** 	questo esempio costruisce l'elenco 
	@rem		DEI modificati oltre 23 gg dalla data corrente

	forfiles /P %path_partenza_s% /m *.* /d -23 /c "cmd /c echo @file" >> %path_partenza_s%lista_file.txt
  

NOTE COMANDO
	/P 		= PATH DI PARTENZA 	Specifica il percorso da cui iniziare la ricerca. Per impostazione predefinita, la ricerca inizia nella directory di lavoro corrente.
	/S 		= SOTTODIRECTORY 
	/M *.* 		= maschera dati tutti 	Cerca i file in base alla maschera di ricerca specificati. La maschera di ricerca predefinita è *.
	/d		= - 22 file vecchio di 22 gg.
			/D [{+\|-}][{<date> | <days>}]	Seleziona i file con una data dell'ultima modifica nell'intervallo di tempo specificato:
			Seleziona i file con una data dell'ultima modifica successiva o uguale a (+) o precedente o uguale alla data- specificata, 
			dove + è nel formato MM/GG/AAAA.
			
			Seleziona i file con una data dell'ultima modifica successiva o uguale a (+) la data corrente 
			più il numero di giorni specificato oppure precedente o uguale a (-) la data corrente meno il numero di giorni specificato.
			I valori validi per i giorni includono qualsiasi numero compreso nell'intervallo 0-32.768. 
			Se non viene specificato alcun segno, + viene utilizzato per impostazione predefinita.
	
	/C 		= parametro comando cmd 	Esegue il comando specificato su ogni file. Le stringhe di 
			comando devono essere racchiuse tra virgolette doppie. Il comando predefinito è "cmd /c echo @file".
	 		"cmd /c echo @file = il comando cmdn in una striga + includi nel file >> = lista_file.txt


			È possibile usare le variabili seguenti nella stringa di comando come specificato dall'opzione della riga di comando /C :


Questo è un esempio di salvataggio ricorsivo che salva il file old di 5 gg creando 
cartelle ricorsive dove vengono inclusi di nuovo le 
	@REM SALVATAGGIO RICORSIVO
	 @REM forfiles /s /m *.* /d -1 /c "cmd /c c:\CASA\WinRAR\RAR.EXE a -r -u @file.rar *.*" 


COMANDO FORFILE
	/P 	= utilizare la path di partenza con percorso diretto ed ammette le variabili settate

:SALVATAGGI_RICORSIVI