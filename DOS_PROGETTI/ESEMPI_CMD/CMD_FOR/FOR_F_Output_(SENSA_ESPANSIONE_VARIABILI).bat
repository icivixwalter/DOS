@echo off
 SETLOCAL EnableDelayedExpansion

SET count=1 
@REM attenzione  fino a %% G NON ESISTE LA ESPANSIONE della variabil che count e quindi non 
@rem NON VIENE AGGIORNATO IL CONTATORE, per l'aggiornamento o espansione occorre utilizzare 
@rem IL COMANDO di espansione delle variabili oppure chiamare una routine
 FOR /f "tokens=*" %%G IN ('dir /b') DO (
 @REM echo %count%:%%G
 echo !count!:%%G
 set /a count+=1 )


pause