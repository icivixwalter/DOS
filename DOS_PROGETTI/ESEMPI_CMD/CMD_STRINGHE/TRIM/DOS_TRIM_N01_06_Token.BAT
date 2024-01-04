

@REM Mappa e Lookup - Utilizza elenco coppia chiave-valore per ricerca e tradurre i valori
@REM Descrizione: 	Questo esempio mostra un approccio di mappare un nome di un mese in `s corrispondente numero a due cifre. 
@REM Le coppie chiave-valore sono elencati nella variabile mappa separati da virgola. 
@REM Chiave e valore stesso sono separati da un carattere trattino. 
@REM Lo stesso può essere utilizzato per tranlate una breve stringa giorno-of-the-settimana in una stringa 
@REM lunga giornata-of-the-settimana cambiando solo il contenuto della mappa.


ECHO OFF


REM ---- Example 1: Translate name of month into two digit number ----

echo la stringa deposit,$4500,123.4,12-AUG-09
echo.

FOR /F "tokens=4 delims=," %%G IN ("deposit,$4500,123.4,12-AUG-09") DO @echo Date paid %%G

PAUSE




echo.
ECHO. ****************************************************
echo.		esempio nro 2 tutto parametrico
echo.

echo la stringa = Folium_1000_2016

set /A Pos_1=2
set Deliminatore_s=_
set StringaDiRicerca_s=Folium_1000_2016_fine




echo.
echo "Parametri utilizzati : variabile Pos_1 = "%Pos_1% " 
echo "variabile stringa Deliminatore_s =  %Deliminatore_s%
echo "Variabile stringa di ricerca StringaDiRicerca_s=  %StringaDiRicerca_s%"
echo.

echo.
echo   RISULTATO RICERCA
echo.

FOR /F "tokens=%Pos_1% delims=%Deliminatore_s%" %%G IN ("%StringaDiRicerca_s%") DO (echo.
echo.
echo. "della variabile --->  %StringaDiRicerca_s%  "
echo.  
echo.
echo "Estraggo la Posizione : %Pos_1% di %Deliminatore_s% uguale a:  %%G"
echo.
)

echo.

PAUSE



non funziona ????