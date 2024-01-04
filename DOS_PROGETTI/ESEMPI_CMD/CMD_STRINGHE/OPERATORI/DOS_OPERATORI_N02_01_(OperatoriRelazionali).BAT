ECHO off

@REM esempio degli operatori relazionali


set /A a=5
set /A b=10

echo.
if %a% EQU %b% ( echo "1) A is equal to than B - A=B Verifica l'uguaglianza tra due oggetti (2 EQU 2 darà vero)"  )

echo.
if %a% NEQ %b% ( echo "2) A is equal to than B - A<>B Test la differenza tra due oggetti  (3 NEQ 2 darà vero )"  )

echo.
if %a% LSS %b% ( echo "3) A is less than B - A<B Verifica se l'oggetto sinistra è minore l'operando di destra" )

echo.

if %a% LEQ %b% ( echo "4) A is less than or equal B - A<=B Verifica se l'oggetto sinistra E' minore o uguale al secondo operando (2 LEQ 3 dara vero) ") 

echo.
if %a% GTR %b% ( echo "5) A is greater than B - A>B Verifica se l'oggetto sinistro è maggiore dell'operando destra (3 GTR 2 darà vero) ")  

echo.
if %a% GEQ %b% ( echo "6) A is greater than or equal to B - A>=B Verifica se l'oggetto sinistra è maggiore o uguale al secondo operando (3 GEQ 2 dara vero )")

echo.

PAUSE