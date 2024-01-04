
@REM ********************************************************************************
@REM Echo on 

set  %1 "UnNomeLungo.txt"

@echo off
echo ********************************************************
echo ================================
echo Il comando............... %%0    : %0
echo Drive corrente........... %%~d0  : %~d0
echo Percorso corrente........ %%~p0  : %~p0
echo Drive e percorso corrente %%~dp0 : %~dp0
echo e ancora il file bat..... %%~nx0 : %~nx0
echo Solo il nome............. %%~n0  : %~n0
echo Solo l'estensione........ %%~x0  : %~x0
echo ================================

@REM Dati del paramtri che vengono visualizzati con il comando diretto C:\BAT>test.bat "UnNomeLungo.txt" se il file viene denominato
@REM UnNomeLungo.txt
echo ================================
echo Il parametro............. %%1    : %1
echo senza le virgolette...... %%~1   : %~1
echo Il percorso completo..... %%~f1  : %~f1
echo Il nome del file......... %%~nx1 : %~nx1
echo e nel formato breve...... %%~snx1: %~snx1
echo Gli attributi del file... %%~a1  : %~a1
echo La data e ora del file... %%~t1  : %~t1
echo La dimensione del file... %%~z1  : %~z1
echo Riga stile comando DIR... %%~ftza: %~ftza1


PAUSE