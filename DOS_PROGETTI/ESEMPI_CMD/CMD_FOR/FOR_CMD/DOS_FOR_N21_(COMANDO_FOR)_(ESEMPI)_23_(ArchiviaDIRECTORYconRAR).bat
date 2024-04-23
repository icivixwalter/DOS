echo off

GOTO:notaMultiriga

.. nota multiriga...

:notaMultiriga




rem 01) mi posizione su tmp dove si trovano i file
rem 02) creo un un file di testo con il file da memoerizzare mediante
rem    dir e con i parametri /a /b per avere solo un'elenco dei file
rem 03) faccio un ciclo for  = per inserire i parametri di questo significato:

	rem "tokens=*" 	= ??? definire
	rem (dirlist.txt)	= leggo l'elenco dei file in .txt	
	rem CD "%%a"	= nella directory %%a ??
	
	rem c:\casa\rar.exe a "K:\Casa\Linguaggi\DOS\DOS_IN_STUDIO\01_FOR_elencoFile\%%a.zip" =
	rem attivo il rar. exe e salvo in k:.... il file .zip  che chiama dirlist.txt.zip ?? perche??
	rem cd.. cosa fa ???




echo imposta la directory di salvataggio
echo
set %DirectoryPrelevaDATI%="K:\Casa\Linguaggi\VISUAL_STUDIO_2005\VISUAL_CPP\PROGETTI_JON_BATES_VISUAL_C++6\"	

cls
echo controllo directoryu

dir %DirectoryPrelevaDATI% /b


dir
pause

CD K:\Casa\Linguaggi\VISUAL_STUDIO_2005\VISUAL_CPP\PROGETTI_JON_BATES_VISUAL_C++6\


echo creo un file .txt solo con il nome senza attributi e percorso e lo assegno in un .txt
echo

DIR %DirectoryPrelevaDATI% *.* /a /b >dirlist.txt

PAUSE

:------ESEGUO IL SALVATAGGIO SUL DISCO K

for /f "tokens=*" %%a in (dirlist.txt) do (
  CD "%%a"
  c:\casa\rar.exe a "K:\Casa\Linguaggi\DOS\DOS_IN_STUDIO\01_FOR_elencoFile\%%a.zip"
  CD..
)





pause

