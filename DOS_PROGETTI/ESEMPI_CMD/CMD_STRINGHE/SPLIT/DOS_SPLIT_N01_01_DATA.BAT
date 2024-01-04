
ECHO OFF

echo.-- Split off the first date token, ie day of the week
for /f %%a in ("%date%") do set d= %%a
echo.Date : %date%
echo.d : %d%
echo.

echo.-- Split the date into month, day, and year, using slash and space as delimiters

for /f "tokens=1,2,3 delims=/ " %%a in ("%date%") do (set day= %%a &set month= %%b &set year= %%c )

echo.Month  : %month%
echo.Day    : %day%
echo.Year   : %year%


PAUSE


