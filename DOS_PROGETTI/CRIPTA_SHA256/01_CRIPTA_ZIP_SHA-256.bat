@echo off
setlocal enabledelayedexpansion

:: =========================================================================== 
:: [SCRIPT DI CRIPTAZIONE, COMPRESSIONE E VERIFICA FILE PDF]
:: =========================================================================== 
:: ATTIVITÀ PRINCIPALI ESEGUITE DALLO SCRIPT (NUMERATE E PER ARGOMENTO)
::
:: === CONFIGURAZIONE INIZIALE ===
:: [1.1] Definizione variabili di configurazione
:: [1.2] Inizializzazione file di log
::
:: === LETTURA FILE INPUT ===
:: [2.1] Lettura del nome del file PDF da criptare
:: [2.2] Verifica esistenza file
::
:: === GESTIONE PASSWORD ===
:: [3.1] Lettura della password da file
:: [3.2] Verifica validità
::
:: === PREPARAZIONE DESTINAZIONE ===
:: [4.1] Creazione cartella FILE_DA_INVIARE se non esiste
::
:: === CREAZIONE FILE PASSWORD ===
:: [5.1] Salvataggio della password su file
:: [5.2] Copia file password nella cartella di destinazione
::
:: === COMPRESSIONE + CIFRATURA ===
:: [6.1] Costruzione nome archivio
:: [6.2] Compressione/cifratura con 7z AES-256
::
:: === SHA256 ===
:: [7.1] Calcolo SHA-256
:: [7.2] Salvataggio su file
::
:: === TEST INTEGRITÀ ARCHIVIO ===
:: [8.1] Verifica archivio con password
::
:: === CONTROLLO FILE HASH ===
:: [9.1] Verifica file hash in cartella corrente o superiore
::
:: === CONCLUSIONE ===
:: [10.1] Apertura cartella FILE_DA_INVIARE
:: [10.2] Fine log e messaggio
::
:: ===========================================================================

:: [1.1] CONFIGURAZIONE
set "LOG_FILE=00_CRIPTA_CRIPTA_ZIP_SHA-256_LOG.TXT"
set "DEST_FOLDER=FILE_DA_INVIARE"
set "ZIP_EXE=C:\Program Files\7-Zip\7z.exe"
set "PASSWORD_FILE=00_CREA_LEGGI_PASSWORD.TXT"
set "FILE_DA_LEGGERE=C:\Casa\LINGUAGGI\DOS\DOS_PROGETTI\CRIPTA_SHA256\FILE_DA_CRIPTARE\00_INSERISCI_NOME_FILE_DA_CRIPTARE.TXT"
set "PATH_FILE_DA_CRIPTARE=C:\Casa\LINGUAGGI\DOS\DOS_PROGETTI\CRIPTA_SHA256\FILE_DA_CRIPTARE"
set "HASH_FILE=hash_sha256_DA_INVIARE.TXT"

:: [1.2] INIZIO LOG
echo === LOG AVVIATO: %DATE% %TIME% === > "%LOG_FILE%"

:: [2.1] LETTURA NOME FILE DA CRIPTARE
set "FILE_NAME="
for /f "usebackq delims=" %%F in ("%FILE_DA_LEGGERE%") do (
    if defined FILE_NAME (
        rem già letto
    ) else (
        echo %%F | findstr /b /c:"//" >nul
        if errorlevel 1 (
            set "FILE_NAME=%%F"
        )
    )
)
echo Nome file da criptare letto: "!FILE_NAME!" >> "%LOG_FILE%"
echo Nome file da criptare letto: "!FILE_NAME!"

:: [2.2] VERIFICA FILE
set "PDF_FILE=%PATH_FILE_DA_CRIPTARE%\!FILE_NAME!"
if not exist "!PDF_FILE!" (
    echo [ERRORE] Il file non esiste: "!PDF_FILE!" >> "%LOG_FILE%"
    echo ERRORE: Il file "!PDF_FILE!" non esiste.
    pause
    exit /b 1
) else (
    echo [OK] File trovato: "!PDF_FILE!" >> "%LOG_FILE%"
)

:: [3.1] LETTURA PASSWORD
set "PASSWORD="
for /f "usebackq delims=" %%A in ("%PASSWORD_FILE%") do (
    if defined PASSWORD (
        rem già trovata
    ) else (
        echo %%A | findstr /b /c:"//" >nul
        if errorlevel 1 (
            set "PASSWORD=%%A"
        )
    )
)

:: [3.2] VERIFICA PASSWORD
if not defined PASSWORD (
    echo [ERRORE] Password non trovata. >> "%LOG_FILE%"
    echo ERRORE: Nessuna password trovata.
    pause
    exit /b 1
) else (
    echo [OK] Password caricata. >> "%LOG_FILE%"
)

:: [4.1] CREAZIONE CARTELLA DESTINAZIONE
if not exist "%DEST_FOLDER%" (
    mkdir "%DEST_FOLDER%" >> "%LOG_FILE%" 2>&1
    echo [OK] Cartella %DEST_FOLDER% creata. >> "%LOG_FILE%"
) else (
    echo [INFO] Cartella %DEST_FOLDER% già presente. >> "%LOG_FILE%"
)

:: [5.1] CREAZIONE FILE PASSWORD
echo %PASSWORD% > "03_PASSWORD_DA_INVIARE.TXT"
echo [OK] File password creato. >> "%LOG_FILE%"

:: [5.2] COPIA FILE PASSWORD
copy /Y "03_PASSWORD_DA_INVIARE.TXT" "%DEST_FOLDER%\03_PASSWORD_DA_INVIARE.TXT" >nul
if errorlevel 1 (
    echo [ERRORE] Copia file password fallita. >> "%LOG_FILE%"
) else (
    echo [OK] File password copiato in %DEST_FOLDER%. >> "%LOG_FILE%"
)

:: [6.1] COSTRUZIONE NOME ARCHIVIO
set "ARCHIVIO_FILE=!FILE_NAME!"
for %%x in ("!ARCHIVIO_FILE!") do set "ARCHIVIO_FILE=%%~nx"
set "ARCHIVIO_FILE=!ARCHIVIO_FILE:.=!.7z"

:: [6.2] COMPRESSIONE + CIFRATURA
echo [INFO] Compressione in corso... >> "%LOG_FILE%"
"%ZIP_EXE%" a -t7z -mhe=on -p"%PASSWORD%" "%DEST_FOLDER%\!ARCHIVIO_FILE!" "!PDF_FILE!" >> "%LOG_FILE%" 2>&1
if errorlevel 1 (
    echo [ERRORE] Compressione fallita. >> "%LOG_FILE%"
    echo ERRORE: Compressione fallita.
    pause
    exit /b 1
) else (
    echo [OK] Compressione completata. >> "%LOG_FILE%"
)

:: [7.1] CALCOLO SHA-256
echo [INFO] Calcolo SHA-256... >> "%LOG_FILE%"
certutil -hashfile "%DEST_FOLDER%\!ARCHIVIO_FILE!" SHA256 > "%DEST_FOLDER%\%HASH_FILE%" 2>> "%LOG_FILE%"

:: [7.2] VERIFICA HASH
if errorlevel 1 (
    echo [ERRORE] SHA-256 fallito. >> "%LOG_FILE%"
    echo ERRORE SHA-256
) else (
    echo [OK] Hash salvato in %DEST_FOLDER%\%HASH_FILE% >> "%LOG_FILE%"
)

:: [8.1] TEST ARCHIVIO
echo [INFO] Verifica archivio... >> "%LOG_FILE%"
"%ZIP_EXE%" t -p"%PASSWORD%" "%DEST_FOLDER%\!ARCHIVIO_FILE!" >> "%LOG_FILE%" 2>&1
if errorlevel 1 (
    echo [ERRORE] Verifica archivio fallita. >> "%LOG_FILE%"
    echo ERRORE: Archivio corrotto.
    pause
    exit /b 1
) else (
    echo [OK] Archivio verificato. >> "%LOG_FILE%"
)

:: [9.1] CONTROLLO FILE HASH IN ALTRE CARTELLE (non strettamente necessario ora)
if exist "%DEST_FOLDER%\%HASH_FILE%" (
    echo [OK] SHA-256 trovato in %DEST_FOLDER% >> "%LOG_FILE%"
) else (
    echo [ERRORE] SHA-256 non trovato. >> "%LOG_FILE%"
)

:: [10.1] APRI CARTELLA DESTINAZIONE
start "" "%DEST_FOLDER%"

:: [10.2] FINE SCRIPT
echo === FINE LOG: %DATE% %TIME% === >> "%LOG_FILE%"
echo Operazione completata con successo.
pause
