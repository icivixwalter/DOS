

@REM Mappa e Lookup - Utilizza elenco coppia chiave-valore per ricerca e tradurre i valori
@REM Descrizione: 	Questo esempio mostra un approccio di mappare un nome di un mese in `s corrispondente numero a due cifre. 
@REM Le coppie chiave-valore sono elencati nella variabile mappa separati da virgola. 
@REM Chiave e valore stesso sono separati da un carattere trattino. 
@REM Lo stesso può essere utilizzato per tranlate una breve stringa giorno-of-the-settimana in una stringa 
@REM lunga giornata-of-the-settimana cambiando solo il contenuto della mappa.


ECHO OFF


REM ---- Example 1: Translate name of month into two digit number ----
SET v=Mai

@REM mappo il mese con il nome - mese 
SET map=Jan-01;Feb-02;Mar-03;Apr-04;Mai-05;Jun-06;Jul-07;Aug-08;Sep-09;Oct-10;Nov-11;Dec-12

CALL SET v= %%map:*%v%-=%%

@REM estrae il II parametro il numero del mese
SET v=%v:;=& rem.%

echo I parte

echo.
echo mappo il mese con il muero es. 05 = Mai (ritorna mese esteso)	
ECHO.
ECHO.%v%
echo.

@REM TRADUCO da abbreviato a stringa intera
REM ---- Example 2: Translate abbreviation into full string ----
SET v=sun

set map=mon-Monday;tue-Tuesday;wed-Wednesday;thu-Thursday;fri-Friday;sat-Saturday;sun-Sunday
CALL SET v= %%map:*%v%-=%%
SET v=%v:;=& rem.%

echo.
echo II parte
echo Mappo il giorno abbreviato tipo sum = Sunday
echo.
ECHO.%v%
echo.

PAUSE



non funziona ????