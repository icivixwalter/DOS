@echo off

setlocal enabledelayedexpansion
set "services="

for /F "skip=3 tokens=1" %%A in ('tasklist /FI "USERNAME ne NT AUTHORITY\SYSTEM"') do (
  set "serviceName=%%A"
  set "services=!services!^|!serviceName!"
)


echo Servizi attivi dell'utente:
echo ------------------------------------------

rem Imposta la lunghezza massima di una riga
set "maxLineLength=70"

rem Suddivide la lista dei servizi in righe
set "line="
for %%B in (%services%) do (
  set "!line!=!line! %%B"

  if "!line!"=="" (
    echo %%B
  ) else (
    setlocal enabledelayedexpansion
    if "!line:~1!"=="" (
      echo !line!

    ) else (
      echo !line:~1!
    )
    endlocal
    set "line="
  )
)

echo ------------------------------------------

pause
