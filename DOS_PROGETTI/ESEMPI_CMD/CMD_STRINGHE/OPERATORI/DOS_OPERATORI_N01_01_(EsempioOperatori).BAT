ECHO OFF

@REM esempio degli operatori

@echo off
SET /A a = 5
SET /A a += 5
echo %a%
SET /A a -= 5
echo %a%
SET /A a *= 5
echo %a%
SET /A a /= 5
echo %a%

@rem 	operatore modulo e la restante parte dopo un / divisione float integer 
SET /A a %= 5
echo %a%
PAUSE