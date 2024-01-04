


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




ECHO quanto e il contatore %1%

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
	ECHO ****************************************************
	echo.


	FOR /F "tokens=%Pos_1% delims=_" %%G IN ("%StringaDiRicerca_s%") DO (call:PROVA %%f,%%h) 

:PROVA
(echo "---------"



	ECHO "mi trovo all'inizio DELLA ROUTINE PROVA"
	ECHO "parametro 01 passato '%%f' ----->:"%~1
	ECHO "parametro 02 passato '%%h' ----->:"%~2
		
		
	@REM imposto il codice variabile di 4 caratteri
	@REM passata come parametro
	SET /A CodiceVariabile_s  =%~1
	SET  CodiceVariabile2_s =%~2
	

	
	echo.
	echo. "La variabile StringaDiRicerca_s-->:  %StringaDiRicerca_s%  "
	echo.  
	echo.
	echo "Il contatore Pos_1 contiene ------>: " %Pos_1%
	echo "delimitatore Deliminatore_s------->: " %Deliminatore_s%
	echo "codice della variabile------------>: " %CodiceVariabile_s%
	echo "codice della variabile2----------->: " %CodiceVariabile2_s%
	
	echo "La striga estratta F ------------->: " %1
	echo.



		IF %1% == "1" ( echo.
		
			echo.
			echo. CONTROLLO IF SUI PRIMI 4 CARATTERI DELLA VARIABILE PARAMETRO G = %g%
			echo.
			echo G contiene %%G
			echo "La variabile CodiceVariabile_s contiene "  %CodiceVariabile_s%
			echo "La variabile CodiceVariabile2_s contiene "  %CodiceVariabile2_s%
			echo. %%G
		)
		
	
	ECHO. ****************************************************
	echo.
	echo.

@REM reset
SET /A CodiceVariabile_s=0
SET  CodiceVariabile2_s =""
	

)

PAUSE