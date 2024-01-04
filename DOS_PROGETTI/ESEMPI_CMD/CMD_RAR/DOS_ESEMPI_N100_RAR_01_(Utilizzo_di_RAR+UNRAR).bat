REM  ***************************************************************
ista
rem     file batch : Salvataggio.rar
REM     directory = c:\Casa\LEGGI\PAUS
rem     file WinRAR


rem  Opzione -x Estrae file e cartelle con il percorso originale. 
rem  Opzione -r considera le sottocartelle (processa gli archivi delle sottocartelle)
rem  Opzione -u Estrai solo i nuovi



@REM ESEMPIO DI SALVATAGGIO DEL MESE DI OTTOBRE
@REM ------------------------------------------------------------------------------------------------------------

@REM -ta2015:10 = indica after ottobre mentre -tb2015:11 = before novembre
@REM Winrar.lnk a -r -U -ta2015:10 -tb2015:11 ViaDeiMille50_OTTOBRE *PDF

@REM ------------------------------------------------------------------------------------------------------------



rem		MODALITA DI ARCHIVIAZIONE E NOTE
rem ------------------------------------------------------------------------------------------------------------
rem n.b se non vengono indicate la directory di partenza non vengono trovati i dati da archiviare
rem n.b se non  viene indicata la directory di arrivo i dati vengono archiviati nella directory winrar

rem parametri directory di partenza	directory di arrivo  parametri  + lista parametri 
rem a -r -U   c:\casa\brs\file.rar	c:\casa\brs\         -n           A03_Salvataggi_BRS_LISTA_01_TUTTO.lst



	rem ------------ ESEMPIO CON WINRAR --------------------
	rem ma deve essere correttamente settato altrimenti da errore nella ricerca del
	rem file lista.lst perche i comandi dos di rar non riconoscono la path ed il file dove risiede
	rem lista.lst. In alternativa salvare nella direttory gli eseguibili rar.exe e unrar.exe ed
	rem utilizzare i comandi dos.
	rem WinRAR.lnk a -r -U c:\casa\provaLista -n@lista.lst


	REM ------------ ESEMPIO CON I COMANDI DOS CON RAR.EXE ED UNRAR.EXE ------------------------------
	rem alternativo a winrar che non è settato correttamente. Utilizzare gli eseguibili rar.exe e unrar.exe
	
	REM rar.exe a -r -U c:\casa\provaLista -n@lista.lst
	
	rem ------------- ESEMPIO LISTA.LST -----------------------------
	rem salvataggio dei file *.mdb + *.xls nella sottodirectory brs
	rem brs\*.mdb 
	rem brs\*.xls
	


rem ------------------------------------------------------------------------------------------------------------


REM  ***************************************************************
	rem  Utilizzo alternativo di rar con i comandi dos.
	rar.exe a -r -U c:\CASA\Linguaggi\DOS\DOS_ESEMPI_BAT\05_DOS_ARCHIVI_BAT *.bat *.txt






