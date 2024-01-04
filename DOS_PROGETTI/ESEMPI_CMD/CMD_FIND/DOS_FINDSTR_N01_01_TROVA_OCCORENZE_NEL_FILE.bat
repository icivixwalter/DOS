@REM FINDSTR
@REM ------------------------------------------------------------------------------------------- 
@REM Sintassi 	findstr [/b] [/e] [/l | /r] [/s] [/i] [/x] [/v] [/n] [/m] [/o] [/p] [/f:<File>] [/c:<String>] [/g:<File>] [/d:<DirList>] [/a:<ColorAttribute>] [/off[line]] <Strings> [<Drive>:][<Path>]<FileName>[ ...]
@REM Opzioni
@REM /b /e /l /r /s /i /x /v /n /m /o /p /off[line] /f:<File> /c:<String> /g:<File> /d:<DirList> /a:<ColorAttribute> <Strings> [<Drive>:][<Path>]<FileName>[ ...] /? 

@REM FINDSTR
@REM -------------------------------------------------------------------------------------------


@ECHO.
@ECHO. "Per trovare tutte le occorrenze di linee che iniziano con "COMP" e sono preceduti da zero o più 
@ECHO. "spazi (come in un loop di programma per computer), e per visualizzare il numero di riga in cui si trova ogni occorrenza, tipo:"
@ECHO. "TROVA LE OCCORRENZE CHE INIZIANO CON  <<COMP>> IN TUTTI I FILE DELLA DIRECTORY CORRENTE"
@ECHO.
findstr /s /i /m "\<comp.*" *.*

PAUSE