@REM....Copia i file elencati nella cartella di partenza con il comando ricorsivo
@REM... prova:


@ECHO OFF


echo ELENCO file elencati doc txt in una cartella CORRENTE
echo ........................................

@REM sali di un ramo nella directory
FOR %%n in (..\DOS_FOR_N22*.* TEST*.*) do FOR /F "delims=." %%a in ("%%n") DO echo %%a
PAUSE



FOR %%n in (..\DOS_FOR_N22*.* TEST*.*) DO copy c:\tmp %%n
pause







