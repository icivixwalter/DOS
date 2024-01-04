@REM **********************************************************************************

@REM Modifica il valore 2000 con altri valori fino a che non trovi il valore giusto.
@REM Ora ti spiego a cosa serve questo: 2000 in questo caso è 1 secondo circa nella realtà. 
@REM Per far passare 45 secondi basta impostare un contatore e inizializzare una variabile a 2000*45.
@REM In C si dice: controllare una iterazione da un valore sentinella che in questo caso è 2000*45, 
@REM se invece i secondi erano variabili per esempio eri te che dovevi decidere dopo quanti secondi avviare il programma, 
@REM si definiva iterazione controllata da un contatore.

@REM FUNZIONAMENTO :digita ad es. 5 secondi, alla seconda domanda quale comando eseguire
@REM 			digita DIR (n.b. il comando non viene rilevato in nessuna variabile, ma
@REM 			viene memorizzato in memoria ed eseguito quando finisce il ciclo
@REM 			del conteggio dei secondi)


@REM **********************************************************************************

@echo off
cls

@REM START
@REM ================================================================================

    :start
    echo.
    set /P tempo=Inserisci i second (Es. 4):
    echo.
    
    
    @REM resetto le variabili : com = comando; cont = contatore costante, var = contatore secondi
    set /P com=Inserisci il comando che vuoi eseguire allo scadere dei %tempo% secondi:
    set /A cont=60 * %tempo%
    set /A var=0

@REM TIMER
@REM ================================================================================
@NOTE	:Il ciclo finisce quando var=cont

:timer
		
    set /A var=%var% + 1

    if %var% EQU %cont%  (
    goto finish
    ) else (
    cls
    echo "secondi" %var%
    goto timer
    
    )
@REM ================================================================================
    
@REM FINE
@REM ================================================================================
    
:finish
    
    @REM  esegue il comando memorizzato nella variabile com
    %com%
    
    @REM attesa scelta
    echo.
    echo.
    set /P continuare=Vuoi continuare? s/n:
    if %continuare% EQU s (
    goto start
    ) else (
    exit
    )

