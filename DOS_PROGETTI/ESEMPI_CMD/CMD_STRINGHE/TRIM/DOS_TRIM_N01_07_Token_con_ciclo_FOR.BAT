


@REM Mappa e Lookup - Utilizza elenco coppia chiave-valore per ricerca e tradurre i valori
@REM Descrizione: 	Questo esempio mostra un approccio di mappare un nome di un mese in `s corrispondente numero a due cifre. 
@REM Le coppie chiave-valore sono elencati nella variabile mappa separati da virgola. 
@REM Chiave e valore stesso sono separati da un carattere trattino. 
@REM Lo stesso può essere utilizzato per tranlate una breve stringa giorno-of-the-settimana in una stringa 
@REM lunga giornata-of-the-settimana cambiando solo il contenuto della mappa.


ECHO OFF


@REM CICLO CALCOLO INTERVALLO
@REM Intervallo di valore di partenza 1; step 1 massimo 6
@REM con filtro if finale per la stampa fino a 6-1
::_____________________________________________________________

SET /A LimiteSup_i=4

@REM /L = parametro intervallo numerico
for /L %%f in (1,1,%LimiteSup_i%) do (
	echo %f%
	call :CICLO_FOR "%%f")


::***fine***
::_____________________________________________________________
		
:CICLO_FOR		


echo.
echo.		CICLO FOR
ECHO. ****************************************************
echo.		
echo.

echo la stringa = Folium_1000_2016

set /A Pos_1=%1%

set Deliminatore_s=_
set StringaDiRicerca_s="Folium_1000_2016_fine"




EcHO quanto e il contatore %1%

IF %1% GEQ "4" (echo. 
ECHO "IF DI CONTROLLO il contatore %1%  E' >=3") ELSE ( echo.

	ECHO. 	
	echo.	CONTROLLO FOR DI ESTRAZIONE DI PARTI DEL FILE
	ECHO. ****************************************************

	echo "Parametri utilizzati : variabile Pos_1 = "%Pos_1% " 
	echo "variabile stringa Deliminatore_s =  %Deliminatore_s%
	echo "Variabile stringa di ricerca StringaDiRicerca_s=  %StringaDiRicerca_s%"
	echo.

	echo.
	echo   RISULTATO RICERCA
	echo.


	FOR /F "tokens=%Pos_1% delims=_" %%G IN ("%StringaDiRicerca_s%") DO (%%e echo. 
	
	SET CodiceVariabile_s = %2%
	echo.
	echo. "della variabile --->  %StringaDiRicerca_s%  "
	echo.  
	echo.
	echo "Ilcontatore contiene --->: " %Pos_1%
	echo "delimitatore usato ----->: " %Deliminatore_s%
	echo "La striga estratta ----->: " %%G
	echo.
		IF %1% == "1" ( echo.
			
			echo.
			echo "La variabile Primi4Caratteri_s contiene "  %CodiceVariabile_s%
			echo. %%G
		)
		
	
	ECHO. ****************************************************
	echo.
	echo.


	)

PAUSE


)

echo fine
pause

