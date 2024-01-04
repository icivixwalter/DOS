echo off

:----------------------------SET DELLE VARIABILI PATH DI PARTENZA ED ARRIVO

@REM Se non esiste la cartella AA_SALVATAGGI, la crea.
if not exist "%cd%\AA_SALVATAGGI\" (
	echo Crea la cartella AA_SALVATAGGI
	mkdir %cd%\AA_SALVATAGGI
)

set PATH_ARRIVO_s="%cd%\AA_SALVATAGGI\"

echo. 
echo controllo della path di ARRIVO:
echo "PATH ARRIVO: " %PATH_ARRIVO_s%


:----------------------CICLO_FOR= Ciclo For su ogni riga del comando DIR (senza dettagli con le sottocartelle)
echo Prova DIR

@REM L'unico modo per salvare SOLO le cartelle e non i file. Se vuoi salvare anche i file RIMUOVI /A:d
for /f "tokens=*" %%G in ('dir /B /A:d %cd%') do (

	@REM Per ogni cartella diversa da AA_SALVATAGGI...
	echo controllo directory in esame %%G
	echo controllo path da escludere %PATH_ARRIVO_s%
		IF NOT %%~nG==AA_SALVATAGGI (
		echo --------------  Estraggo "%%~nG" e salvo nella path di arrivo.
		C:\CASA\Rar.exe a -ep1 "%PATH_ARRIVO_s% %%~nG" "%%~fG"
	)
)
eof


@REM //NOTE DI FUNZIONAMENTO
@REM //============================================================================//
@REM attenzione per il salvataggio sono stati utilizzati questi parametri:
@REM dir 	/b = elenca il contenuto della cartella corrente senza dettagli
@REM 	/s = Mostra il percorso completo di ogni file/cartella E DELLE SOTTOCARTELLE!!!!
@REM 	/a:d = include SOLO LE CARTELLE (escluso perche altrimenti salvava ogni singolo
@REM 	file della sottocartella in un zip)
@REM COMANDO rar
@REM rar.exe	-ep1= esclude la path nel .zip e inserisce solo il nome della sottocartella nell'archivio.	

