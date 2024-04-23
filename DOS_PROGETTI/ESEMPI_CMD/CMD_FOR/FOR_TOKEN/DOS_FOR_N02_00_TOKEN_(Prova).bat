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


PAUSE