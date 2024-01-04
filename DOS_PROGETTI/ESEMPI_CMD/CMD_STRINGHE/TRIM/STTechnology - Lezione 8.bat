@echo off
title PING
color F0

:Rifai
echo Inserisci un indirizzo IP oppure un sito internet.
set /p Ind=
ping %Ind%
echo.
echo.
echo Se vuoi uscire digita X, altrimenti premi un altro tasto
set /p scelta=
if %scelta%== X GoTo Esci
if not %scelta%== X GoTo Rifai

:Esci