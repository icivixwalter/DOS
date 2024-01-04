
@REM ========================================================================================================= 
@REM 					SPLIT FILE
@REM ========================================================================================================= 

@echo off
setlocal ENABLEDELAYEDEXPANSION
REM Edit this value to change the name of the file that needs splitting. Include the extension.
REM Modifica questo valore per modificare il nome del file che deve dividere. Includere l'estensione.
rem SET BFN=BigFile.csv
SET BFN=a2.pdf

REM Modifica questo valore per modificare il numero di linee per file.
REM Edit this value to change the number of lines per file.
SET LPF=5000

REM Modifica questo valore per modificare il nome di ogni file breve. Sarà seguita da un numero che indica dove è nell'elenco.
REM Edit this value to change the name of each short file. It will be followed by a number indicating where it is in the list.
SET SFN=SplitFile

REM Non modificare oltre questa linea.
REM Do not change beyond this line.

SET SFX=%BFN:~-3%

SET /A LineNum=0
SET /A FileNum=1

For /F "delims==" %%l in (%BFN%) Do (
SET /A LineNum+=1

echo %%l >> %SFN%!FileNum!.%SFX%

if !LineNum! EQU !LPF! (
SET /A LineNum=0
SET /A FileNum+=1
)

)
endlocal
Pause