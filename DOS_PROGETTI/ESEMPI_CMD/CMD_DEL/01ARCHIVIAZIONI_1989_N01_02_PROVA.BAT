@echo off
rem for %%a in (c:\CASA\LINGUAGGI\DOS\02ARCHIVIAZIONI_1989_N02_LISTA_MESE_08_LISTA.LST) do (

for %%a in (*.bat) do (call :STAMPA_ELEMENTI_FILE "%%a")

:STAMPA_ELEMENTI_FILE
rem echo " stampo il parametro solo nome file parametro: %%~n1%%  ------------>" %~n1

SET file=%~n1 			
echo "Name " %file%
echo %~nI  >> aa.txt 
echo %~xI >> ab.txt 

rem if %~n1 EQL "ECHO disattivato."(
@REM usare il comando echo per stampare il nome sul file txt
rem echo %~n1 >> aa.txt )

