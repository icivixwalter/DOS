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





@echo off
chcp 65001 >nul
cd /d "%~dp0"

title Esportazione e Correzione Testate CSV
echo 1. Estrazione dati dal sistema...
schtasks /query /v /fo CSV > "Analisi_Grezza.csv"

echo 2. Ricostruzione intestazioni e pulizia memoria...
:: PowerShell carica tutto, definisce le testate mancanti e pulisce i duplicati
powershell -Command ^
    "$linee = Get-Content 'Analisi_Grezza.csv';" ^
    "$titoliOriginali = $linee[0].Trim();" ^
    "$nuovaIntestazione = $titoliOriginali + ',\"Ripeti_Ogni\",\"Ripeti_Fino_Ora\",\"Ripeti_Fino_Durata\",\"Ripeti_Interrompi\"';" ^
    "$datiPuliti = $linee | Where-Object { $_ -ne $linee[0] -and $_ -ne '' };" ^
    "$risultato = @($nuovaIntestazione) + $datiPuliti;" ^
    "$risultato | Set-Content 'Analisi_Attivita.csv' -Encoding UTF8"

:: Pulizia file temporaneo
if exist "Analisi_Grezza.csv" del "Analisi_Grezza.csv"

echo.
echo 3. Generazione Lista Rapida...
echo NOME ATTIVITA  ---  FILE ESEGUITO > Lista_Rapida.txt
echo ------------------------------------------ >> Lista_Rapida.txt
for /f "usebackq tokens=2,9 delims=," %%A in ("Analisi_Attivita.csv") do (
    if not "%%~A"=="Nome attività" echo %%~A --- %%~B >> Lista_Rapida.txt
)

echo.
echo OPERAZIONE COMPLETATA!
echo Il file 'Analisi_Attivita.csv' ha ora le testate corrette anche per le ultime colonne.
pause
