ECHO OFF

@REM sembra CHE AGGIUNGE uno spazio piuttosto che eliminarlo solo se la stringa ne ha tanti

set str=15 Leading spaces to truncate
echo."%str%"
for /f "tokens=* delims=" %%a in ("%str%") do set str= %%a
echo."%str%"

PAUSE