
@REM TasKill_N50_ANALISI_PROCESSI.bat
@REM
@REM         |
@REM         |
@REM         +--> rileva i processi attivi del PC
@REM         |
@REM         +--> estrae informazioni utili
@REM         |
@REM         +--> crea un elenco analizzabile
@REM         |
@REM         +--> genera il report
@REM         |
@REM         +--> permette di scegliere cosa inserire nel .lst N51
@REM


@REM                  PC WINDOWS
@REM                      |
@REM                      |
@REM                      v
@REM         +----------------------------+
@REM         | N50 ANALISI PROCESSI       |
@REM         |                            |
@REM         | TasKill_N50_ANALISI_       |
@REM         | PROCESSI.bat               |
@REM         +----------------------------+
@REM                      |
@REM                      |
@REM                      v
@REM         TasKill_N50_ANALISI_PROCESSI_REPORT.txt
@REM                      |
@REM                      |
@REM                      v
@REM         valutazione manuale processi
@REM                      |
@REM                      |
@REM                      v
@REM         TasKill_N51_PROCESSI_DA_KILLARE.lst
@REM                      |
@REM                      |
@REM                      v
@REM         TasKill_N51_KILL_SOLO_PROCESSI.bat
@REM                      |
@REM                      |
@REM                      v
@REM         LOG + REPORT FINALE





@echo off
setlocal EnableExtensions EnableDelayedExpansion

REM ###########################################################################
REM ##
REM ##  PROCEDURA : TasKill_N50_ANALISI_PROCESSI.bat
REM ##
REM ##  SCOPO
REM ##  -----------------------------------------------------------------------
REM ##  Analizza i processi attivi del computer.
REM ##
REM ##  Il BAT:
REM ##
REM ##  - rileva i processi Windows attivi
REM ##  - estrae nome processo e PID
REM ##  - crea un report analizzabile
REM ##  - permette la selezione dei processi
REM ##    da inserire nel file N51:
REM ##
REM ##      TasKill_N51_PROCESSI_DA_KILLARE.lst
REM ##
REM ##  ATTENZIONE:
REM ##
REM ##  Questo BAT NON chiude processi.
REM ##  Effettua solamente una fase di analisi.
REM ##
REM ###########################################################################



REM ===========================================================================
REM 01 - INIZIALIZZAZIONE
REM ===========================================================================
REM
REM Definisce:
REM
REM - cartella base
REM - file REPORT
REM - data analisi
REM
REM ===========================================================================

set "BASE=%~dp0"

set "REPORT=%BASE%TasKill_N50_ANALISI_PROCESSI_REPORT.txt"

set "DATA=%date% %time%"



REM ===========================================================================
REM 02 - CREAZIONE INTESTAZIONE REPORT
REM ===========================================================================
REM
REM Crea il file report con informazioni generali.
REM
REM ===========================================================================


echo =============================================================== > "%REPORT%"
echo TasKill_N50_ANALISI_PROCESSI_REPORT                      >> "%REPORT%"
echo =============================================================== >> "%REPORT%"
echo. >> "%REPORT%"

echo Data analisi : %DATA% >> "%REPORT%"
echo Computer     : %COMPUTERNAME% >> "%REPORT%"
echo Utente       : %USERNAME% >> "%REPORT%"

echo. >> "%REPORT%"
echo =============================================================== >> "%REPORT%"
echo PROCESSI ATTIVI RILEVATI >> "%REPORT%"
echo =============================================================== >> "%REPORT%"
echo. >> "%REPORT%"



REM ===========================================================================
REM 03 - ANALISI PROCESSI
REM ===========================================================================
REM
REM tasklist restituisce:
REM
REM - nome processo
REM - PID
REM - sessione
REM - memoria utilizzata
REM
REM ===========================================================================


tasklist >> "%REPORT%"



REM ===========================================================================
REM 04 - SEZIONE INFORMATIVA
REM ===========================================================================
REM
REM Inserisce indicazioni per la fase successiva N51.
REM
REM ===========================================================================


echo. >> "%REPORT%"
echo =============================================================== >> "%REPORT%"
echo FASE SUCCESSIVA >> "%REPORT%"
echo =============================================================== >> "%REPORT%"
echo. >> "%REPORT%"

echo Valutare i processi da inserire nel file: >> "%REPORT%"
echo. >> "%REPORT%"
echo TasKill_N51_PROCESSI_DA_KILLARE.lst >> "%REPORT%"

echo. >> "%REPORT%"
echo ATTENZIONE: >> "%REPORT%"
echo inserire solamente processi conosciuti. >> "%REPORT%"



REM ===========================================================================
REM 99 - FINE PROGRAMMA
REM ===========================================================================
REM
REM Visualizza il report creato.
REM
REM ===========================================================================


echo.
echo =====================================================
echo Analisi completata.
echo =====================================================
echo.

echo Report creato:
echo %REPORT%

echo.
pause

start "" "%REPORT%"


endlocal
exit /b
