@rem //MENU PER LA GESTIONE DI VARIE FASI
@rem //==================================================================================================================


TITLE Main Local Services Handler by Alethesnake
CLS

:SELECT
@ECHO OFF
ECHO.
ECHO Gestione Dei principali servizi di lavoro:
ECHO.
ECHO [1] startup Sql Server 2005 Express
ECHO [2] shutdown Sql Server 2005 Express
ECHO [3] startup MySql Server 5
ECHO [4] shutdown MySql Server 5
ECHO [7] startup servizi Datastage Server 7.5.2
ECHO [8] shutdown servizi Datastage Server 7.5.2
ECHO [n] apri una nuova shell
ECHO [e] esci

SET /p s=

IF "%s%" equ "1" (GOTO AVVIOSSERVER)
IF "%s%" equ "2" (GOTO SHUTDOWNSSERVER)
IF "%s%" equ "3" (GOTO AVVIOMYSQL)
IF "%s%" equ "4" (GOTO SHUTDOWNMYSQL)
IF "%s%" equ "7" (GOTO AVVIODATASTAGE)
IF "%s%" equ "8" (GOTO SHUTDOWNDATASTAGE)
IF "%s%" equ "n" (GOTO NUOVASHELL)
IF "%s%" equ "e" (GOTO EXIT)

ECHO selezione errata!
GOTO SELECT

::------------------------------------------------- AVVIO Sql Server 2005

:AVVIOSSERVER
ECHO.
ECHO Avvio Servizi Sql Server 2005 Express

SC start MSSQL$SQLEXPRESS
SC start SQLBrowser
SC start SQLWriter

ECHO.
ECHO Avvio Sql Server 2005 Express eseguito
ECHO.
GOTO SELECT

::------------------------------------------------- Shutdown Sql Server 2005

:SHUTDOWNSSERVER

SC stop MSSQL$SQLEXPRESS
SC stop SQLBrowser
SC stop SQLWriter

ECHO.
ECHO shutdown Sql Server 2005 Express terminato
ECHO.
GOTO SELECT

::------------------------------------------------- Avvio MySql 5

:AVVIOMYSQL
ECHO.
ECHO Avvio Servizi MySQL Server

SC start MySQL

ECHO.
ECHO Avvio MySQL Server eseguito
ECHO.
GOTO SELECT

::------------------------------------------------- Shutdown MySql 5

:SHUTDOWNMYSQL

SC stop MySQL

ECHO.
ECHO shutdown MySQL Server terminato
ECHO.
GOTO SELECT

::------------------------------------------------- Avvio Datastage Server

:AVVIODATASTAGE
ECHO.
ECHO Avvio Servizi standard Datastage Server

SC start DSEngine
SC start dstelnet
SC start dsrpc
SC start ASCLCSSrv

ECHO.
ECHO Avvio Datastage Server 7.5.2 eseguito
ECHO.
GOTO SELECT

::------------------------------------------------- Shutdown Datastage Server

:SHUTDOWNDATASTAGE

SC stop dstelnet
SC stop DSEngine
SC stop dsrpc
SC stop ASCLCSSrv

ECHO.
ECHO Shutdown Datastage Server 7.5.2 terminato
ECHO.
GOTO SELECT

::------------------------------------------------- Nuova shell

:NUOVASHELL
start
GOTO SELECT


:EXIT



