
echo imposta la directory di salvataggio
echo
CD c:\TMP\tmp\
dir
pause


echo creo un file .txt solo con il nome senza attributi e percorso e lo assegno in un .txt
echo

DIR *.* /a /b >dirlist.txt

for /f "tokens=*" %%a in (dirlist.txt) do (
  CD "%%a"
  c:\casa\rar.exe a "K:\Casa\Linguaggi\DOS\DOS_IN_STUDIO\01_FOR_elencoFile\%%a.zip"
  CD..
)


  c:\casa\rar.exe a "K:\Casa\Linguaggi\DOS\DOS_IN_STUDIO\01_FOR_elencoFile\%%a.zip"

pause