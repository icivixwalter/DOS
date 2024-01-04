@echo off
cls
set id=12345678
setlocal enabledelayedexpansion

for /f "tokens=*" %%1 in (c:\CASA\LINGUAGGI\DOS\DOS_ESEMPI_BAT\UnRAR.exe) do (
    set inline=%%1
    ::---------------------------------- comprendere il funzionamento ------------------------
    if /i "!inline:~0,12!" == "ID= %id%" (
	set /a ctr+=1
       set outfile=%id%_!ctr!.txt
       )
       echo !inline!>>!outfile!
)

PAUSE