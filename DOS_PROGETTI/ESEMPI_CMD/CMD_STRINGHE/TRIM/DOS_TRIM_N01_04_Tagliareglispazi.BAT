
@REM Trim Destra - Tagliare gli spazi a partire dalla fine di una stringa tramite "FOR" comando
@REM Taglio spazi alla fine di una variabile sembra un po 'difficile. 
@REM L'esempio seguente mostra come utilizzare un ciclo for per tagliare fino a 31 spazi a partire dalla fine di una stringa. 
@REM Si presuppone che Espansione ritardata è attivata.


ECHO OFF


set str="  15 Trailing Spaces to truncate + prova "
echo."%str%"
for /l %%a in (1,1,31) do if "!str:~-1!"=="  "set str=!str:~0,-3!"
echo."%str%"


PAUSE



non funziona ????