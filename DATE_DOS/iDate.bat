@ECHO OFF
:: For REG.EXE 3.0 (Windows XP) and later versions
FOR /F "tokens=3" %%A IN ('REG QUERY "HKEY_CURRENT_USER\Control Panel\International" /v iDate 2^>NUL') DO SET iDate=%%A
:: For earlier REG.EXE versions
FOR /F "tokens=3" %%A IN ('REG QUERY "HKEY_CURRENT_USER\Control Panel\International\iDate"    2^>NUL') DO SET iDate=%%A
ECHO HKEY_CURRENT_USER\Control Panel\International\iDate=%iDate%
pause