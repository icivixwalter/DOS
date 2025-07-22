@echo off
setlocal enabledelayedexpansion

:: ==================================================================================
:: SCRIPT DI VERIFICA INTEGRITA ARCHIVIO .7z CON HASH SHA-256
:: Funziona sia dentro FILE_DA_INVIARE sia nella cartella superiore,
:: esplorando correttamente la cartella FILE_DA_INVIARE quando serve.
:: ==================================================================================

:: 1) Controllo nome della directory corrente
for %%I in ("%CD%") do set "CURRENT_DIR_NAME=%%~nI"

if /i "%CURRENT_DIR_NAME%"=="FILE_DA_INVIARE" (
    set "TARGET_DIR=%CD%"
) else if exist "%CD%\FILE_DA_INVIARE\" (
    set "TARGET_DIR=%CD%\FILE_DA_INVIARE"
) else if exist "..\FILE_DA_INVIARE\" (
    pushd "..\FILE_DA_INVIARE" >nul 2>&1
    if errorlevel 1 (
        echo [ERRORE] Cartella FILE_DA_INVIARE non trovata o non accessibile.
        pause
        exit /b 1
    )
    set "TARGET_DIR=%CD%"
    popd >nul
) else (
    echo [ERRORE] Cartella FILE_DA_INVIARE non trovata nella directory corrente o superiore.
    pause
    exit /b 1
)

:: 2) Entro nella cartella TARGET_DIR
pushd "%TARGET_DIR%" || (
    echo [ERRORE] Impossibile entrare in %TARGET_DIR%.
    pause
    exit /b 1
)

set "HASH_FILE=%TARGET_DIR%\hash_sha256_DA_INVIARE.TXT"
set "ARCHIVIO_FILE="
set "CALCULATED_HASH="
set "STORED_HASH="

echo.
echo ================================
echo VERIFICA INTEGRITA ARCHIVIO
echo Directory usata: %TARGET_DIR%
echo Directory corrente (CD): %CD%
echo ================================
echo.

:: 3) Controllo presenza file hash
if not exist "%HASH_FILE%" (
    echo [ERRORE] File "%HASH_FILE%" non trovato.
    popd
    pause
    exit /b 1
)

:: 4) Cerco un file .7z nella directory corrente
for %%F in (*.7z) do (
    if not defined ARCHIVIO_FILE set "ARCHIVIO_FILE=%%F"
)

if not defined ARCHIVIO_FILE (
    echo [ERRORE] Nessun file .7z trovato nella directory corrente.
    popd
    pause
    exit /b 1
)

echo [INFO] File .7z trovato: %ARCHIVIO_FILE%
echo [INFO] File hash: %HASH_FILE%

:: 5) Calcolo SHA-256 del file .7z
for /f "skip=1 tokens=1" %%H in ('certutil -hashfile "%ARCHIVIO_FILE%" SHA256 ^| findstr /r /v "^$"') do (
    if not defined CALCULATED_HASH set "CALCULATED_HASH=%%H"
)

:: 6) Leggo hash previsto dal file hash
for /f "tokens=1" %%L in ('findstr /r "^[0-9A-Fa-f][0-9A-Fa-f]*$" "%HASH_FILE%"') do (
    if not defined STORED_HASH set "STORED_HASH=%%L"
)

echo.
echo Hash calcolato:  %CALCULATED_HASH%
echo Hash previsto:   %STORED_HASH%
echo.

:: 7) Confronto
if /i "%CALCULATED_HASH%"=="%STORED_HASH%" (
    echo [OK] Il file è INTEGRO: gli hash coincidono.
) else (
    echo [ATTENZIONE] Il file è CORROTTO o ALTERATO: gli hash NON coincidono!
)

popd
pause
exit /b
