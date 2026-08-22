@REM FILE BAT TasKill_N51_KILL_SOLO_PROCESSI.bat
@REM file principale che chiude i processi il cui funzionamento si base
@REM su questa multi struttura dei file:


@REM STRUTTURA DI FUNZIONAMENTO DEI 5 FILE
@REM
@REM TasKill\
@REM │
@REM ├── TasKill_N49_COORDINA_PROCESSI_KILL.bat        (00)  ✅ CREATO
@REM │       |
@REM │       +--> bat di coordinamento di tutti e 6 file.
@REM │       |
@REM ├── TasKill_N50_ANALISI_PROCESSI.bat              (01)  ✅ CREATO
@REM │       |
@REM │       +--> analizza processi attivi
@REM │       +--> genera report analisi
@REM │
@REM ├── TasKill_N50_ANALISI_PROCESSI_REPORT.txt       (02)  ⚠️ GENERATO AUTOMATICAMENTE DAL BAT 01
@REM │       |
@REM │       +--> elenco processi rilevati
@REM │       +--> dati utili alla valutazione
@REM │
@REM ├── TasKill_N51_KILL_SOLO_PROCESSI.bat            (03)  ✅ CREATO
@REM │       |
@REM │       +--> genera LOG
@REM │       +--> REPORT finale da integrare)
@REM │
@REM ├── TasKill_N51_PROCESSI_DA_KILLARE.lst           (04)  ✅ CREATO
@REM │       |
@REM │       +--> elenco processi autorizzati
@REM │       +--> commenti con ::
@REM │
@REM ├── TasKill_N51_KILL_SOLO_PROCESSI_REPORT.txt     (05)  ⚠️ GENERATO AUTOMATICAMENTE DAL BAT 03
@REM │       |
@REM │       +--> riepilogo esecuzione
@REM │
@REM └── LOG\
@REM       |
@REM       └── TasKill_N51_KILL_SOLO_PROCESSI.log      (06)  ⚠️ GENERATO AUTOMATICAMENTE DAL BAT 03






@REM =========================================================
@REM 01) TasKill_N50_ANALISI_PROCESSI.bat
@REM =========================================================
@REM
@REM Funzione:
@REM
@REM fotografa i processi attivi del sistema
@REM crea un elenco dei processi attualmente in esecuzione
@REM raccoglie informazioni utili per la selezione dei processi
@REM individua i processi eventualmente eliminabili
@REM prepara i dati per la costruzione del file .LST
@REM
@REM Output:
@REM
@REM TasKill_N50_ANALISI_PROCESSI_REPORT.txt
@REM
@REM ---------------------------------------------------------



@REM =========================================================
@REM 02) TasKill_N50_ANALISI_PROCESSI_REPORT.txt
@REM =========================================================
@REM
@REM Funzione:
@REM
@REM contiene il risultato dell'analisi effettuata dal BAT N50
@REM
@REM contiene:
@REM
@REM - elenco processi attivi
@REM - nome eseguibile processo
@REM - PID processo
@REM - informazioni utili alla valutazione
@REM
@REM Utilizzo:
@REM
@REM viene utilizzato per decidere quali processi inserire
@REM nel file:
@REM
@REM TasKill_N51_PROCESSI_DA_KILLARE.lst
@REM
@REM ---------------------------------------------------------



@REM =========================================================
@REM 03) TasKill_N51_KILL_SOLO_PROCESSI.bat
@REM =========================================================
@REM
@REM Funzione:
@REM
@REM esegue la chiusura controllata dei soli processi
@REM presenti nella lista autorizzata.
@REM
@REM Flusso operativo:
@REM
@REM TasKill_N51_PROCESSI_DA_KILLARE.lst
@REM                 |
@REM                 |
@REM                 +--> inizializza ambiente
@REM                 |
@REM                 +--> controlla esistenza file LISTA
@REM                 |
@REM                 +--> crea cartella LOG
@REM                 |
@REM                 +--> apre file LOG
@REM                 |
@REM                 +--> legge file .LST riga per riga
@REM                 |
@REM                 +--> ignora righe vuote
@REM                 |
@REM                 +--> ignora righe commento ::
@REM                 |
@REM                 +--> legge solo i processi autorizzati
@REM                 |
@REM                 +--> esegue procedura :KILL_PROCESS
@REM                 |
@REM                 +--> esegue TASKKILL
@REM                 |
@REM                 +--> registra risultato nel LOG
@REM                 |
@REM                 +--> visualizza REPORT finale
@REM
@REM ---------------------------------------------------------



@REM =========================================================
@REM 04) TasKill_N51_PROCESSI_DA_KILLARE.lst
@REM =========================================================
@REM
@REM Funzione:
@REM
@REM contiene esclusivamente i processi autorizzati
@REM alla chiusura.
@REM
@REM Caratteristiche:
@REM
@REM - file configurabile dall'utente
@REM - non contiene comandi BAT
@REM - contiene solamente nomi processo .EXE
@REM - permette modifiche senza modificare il BAT
@REM - supporta righe commento con ::
@REM
@REM Esempio:
@REM
@REM :: Browser
@REM msedge.exe
@REM chrome.exe
@REM
@REM ---------------------------------------------------------



@REM =========================================================
@REM 05) TasKill_N51_KILL_SOLO_PROCESSI_REPORT.txt
@REM =========================================================
@REM
@REM Funzione:
@REM
@REM contiene il riepilogo finale dell'esecuzione.
@REM
@REM Contiene:
@REM
@REM - data e ora esecuzione
@REM - elenco processi richiesti
@REM - processi terminati correttamente
@REM - processi non trovati
@REM - eventuali errori
@REM
@REM Utilizzo:
@REM
@REM permette una verifica rapida del risultato
@REM senza aprire il file LOG tecnico.
@REM
@REM ---------------------------------------------------------



@REM =========================================================
@REM 06) LOG\TasKill_N51_KILL_SOLO_PROCESSI.log
@REM =========================================================
@REM
@REM Funzione:
@REM
@REM contiene lo storico tecnico delle operazioni effettuate.
@REM
@REM Registra:
@REM
@REM - avvio procedura
@REM - processi analizzati
@REM - processi terminati
@REM - processi non presenti
@REM - esito comando TASKKILL
@REM
@REM Utilizzo:
@REM
@REM serve per controlli successivi,
@REM diagnosi e verifica anomalie.
@REM
@REM ---------------------------------------------------------






REM ###########################################################################
REM ##
REM ##  VANTAGGI DELLA PROCEDURA
REM ##
REM ###########################################################################
REM ##
REM ##  01 - SEPARAZIONE TRA DATI E CODICE
REM ##  -----------------------------------------------------------------------
REM ##  Il BAT contiene esclusivamente la logica di elaborazione.
REM ##
REM ##  L'elenco dei processi NON è scritto nel codice ma viene letto dal file:
REM ##
REM ##      TasKill_N51_PROCESSI_DA_KILLARE.lst
REM ##
REM ##  In questo modo il programma rimane semplice e facilmente modificabile.
REM ##
REM ###########################################################################
REM ##
REM ##  02 - MANUTENZIONE SEMPLIFICATA
REM ##  -----------------------------------------------------------------------
REM ##  Per aggiungere o rimuovere un processo non è necessario modificare
REM ##  il codice della procedura BAT.
REM ##
REM ##  È sufficiente aprire il file .LST ed inserire oppure eliminare il
REM ##  nome del processo desiderato.
REM ##
REM ###########################################################################
REM ##
REM ##  03 - CODICE ORGANIZZATO E DOCUMENTATO
REM ##  -----------------------------------------------------------------------
REM ##  L'intera procedura è suddivisa in sezioni numerate.
REM ##
REM ##      01 - Inizializzazione
REM ##      02 - Controlli preliminari
REM ##      03 - Apertura LOG
REM ##      04 - Lettura lista processi
REM ##      05 - Terminazione processo
REM ##      99 - Fine procedura
REM ##
REM ##  Ogni sezione è completamente commentata per facilitarne la comprensione
REM ##  e la manutenzione futura.
REM ##
REM ###########################################################################
REM ##
REM ##  04 - GESTIONE COMMENTI NEL FILE .LST
REM ##  -----------------------------------------------------------------------
REM ##  Il file TasKill_N51_PROCESSI_DA_KILLARE.lst può contenere:
REM ##
REM ##      - righe vuote
REM ##      - commenti preceduti dal carattere '#'
REM ##
REM ##  Entrambe vengono automaticamente ignorate durante la lettura.
REM ##
REM ##  Ciò permette di documentare il file senza influenzarne l'esecuzione.
REM ##
REM ###########################################################################
REM ##
REM ##  05 - REGISTRAZIONE AUTOMATICA DELLE OPERAZIONI
REM ##  -----------------------------------------------------------------------
REM ##  Tutte le operazioni effettuate vengono registrate nel file LOG.
REM ##
REM ##  Per ogni processo viene indicato:
REM ##
REM ##      [TERMINATO]
REM ##      [NON TROVATO]
REM ##
REM ##  Il LOG consente di verificare con precisione le operazioni svolte.
REM ##
REM ###########################################################################
REM ##
REM ##  06 - STRUTTURA MODULARE
REM ##  -----------------------------------------------------------------------
REM ##  La procedura utilizza la subroutine:
REM ##
REM ##      :KILL_PROCESS
REM ##
REM ##  In questo modo il codice rimane ordinato, riutilizzabile ed espandibile.
REM ##
REM ##  Sarà possibile aggiungere facilmente nuove funzionalità, quali:
REM ##
REM ##      - richiesta di conferma prima della chiusura
REM ##      - verifica del consumo di RAM
REM ##      - verifica del consumo della CPU
REM ##      - esclusione automatica dei processi protetti
REM ##      - classificazione dei processi
REM ##      - priorità di terminazione
REM ##      - statistiche finali
REM ##      - report dettagliato delle operazioni
REM ##
REM ###########################################################################
REM ##
REM ##  OBIETTIVO DEL PROGETTO
REM ##  -----------------------------------------------------------------------
REM ##  Realizzare una procedura modulare, facilmente manutenibile, sicura,
REM ##  completamente documentata e riutilizzabile per la gestione dei
REM ##  processi utente non indispensabili.
REM ##
REM ###########################################################################



@echo off
setlocal EnableExtensions EnableDelayedExpansion

REM ###########################################################################
REM ##
REM ##  PROCEDURA : TasKill_N51_KILL_SOLO_PROCESSI.bat
REM ##
REM ##  SCOPO
REM ##  -----------------------------------------------------------------------
REM ##  Arresta solamente i processi definiti nel file:
REM ##
REM ##      TasKill_N51_PROCESSI_DA_KILLARE.lst
REM ##
REM ##  La lista può essere modificata senza intervenire sul BAT.
REM ##
REM ##  Tutte le operazioni vengono registrate nel LOG.
REM ##
REM ###########################################################################


REM ===========================================================================
REM 01 - INIZIALIZZAZIONE
REM ===========================================================================
REM
REM In questa fase vengono definite:
REM
REM - cartella corrente
REM - file lista
REM - cartella LOG
REM - file LOG
REM
REM ===========================================================================

set "BASE=%~dp0"

set "LISTA=%BASE%TasKill_N51_PROCESSI_DA_KILLARE.lst"

set "LOGDIR=%BASE%LOG"

if not exist "%LOGDIR%" mkdir "%LOGDIR%"

set "LOGFILE=%LOGDIR%\TasKill_N51_KILL_SOLO_PROCESSI.log"



REM ===========================================================================
REM 02 - CONTROLLO ESISTENZA FILE LISTA
REM ===========================================================================
REM
REM Il programma non può proseguire se manca la lista.
REM
REM ===========================================================================

if not exist "%LISTA%" (

    echo.
    echo ERRORE
    echo.
    echo File lista non trovato:
    echo %LISTA%
    echo.
    pause
    exit /b

)



REM ===========================================================================
REM 03 - INTESTAZIONE LOG
REM ===========================================================================
REM
REM Viene creato il file di LOG.
REM
REM ===========================================================================

echo ===============================================================> "%LOGFILE%"
echo TasKill_N51_KILL_SOLO_PROCESSI>>"%LOGFILE%"
echo ===============================================================>>"%LOGFILE%"
echo.>>"%LOGFILE%"



REM ===========================================================================
REM 04 - LETTURA DEL FILE .LST
REM ===========================================================================
REM
REM Il comando FOR legge il file riga per riga.
REM
REM Le righe che iniziano con:
REM
REM      #
REM
REM sono considerate commenti.
REM
REM Le righe vuote vengono ignorate.
REM
REM ===========================================================================

for /f "usebackq delims=" %%P in ("%LISTA%") do (

    set "PROCESSO=%%P"

    REM ---------------------------------------------------------------
    REM Ignora righe vuote
    REM ---------------------------------------------------------------

    if not "!PROCESSO!"=="" (

        REM -----------------------------------------------------------
        REM Ignora commenti
        REM -----------------------------------------------------------

        if not "!PROCESSO:~0,2!"=="::" (

            call :KILL_PROCESS "!PROCESSO!"

        )

    )

)

goto :FINE



REM ===========================================================================
REM 05 - PROCEDURA DI TERMINAZIONE PROCESSO
REM ===========================================================================
REM
REM Riceve:
REM
REM      nome processo
REM
REM Effettua:
REM
REM      taskkill
REM
REM registra:
REM
REM      ESITO
REM
REM ===========================================================================

:KILL_PROCESS

set "PROC=%~1"

echo Arresto %PROC%

taskkill /F /IM %PROC% >nul 2>&1

if errorlevel 1 (

    echo [NON TROVATO] %PROC%>>"%LOGFILE%"

) else (

    echo [TERMINATO ] %PROC%>>"%LOGFILE%"

)

exit /b



REM ===========================================================================
REM 99 - FINE PROGRAMMA
REM ===========================================================================
REM
REM Visualizza il LOG prodotto.
REM
REM ===========================================================================

:FINE

echo.
echo =====================================================
echo Operazione completata.
echo =====================================================
echo.

type "%LOGFILE%"

echo.
pause
