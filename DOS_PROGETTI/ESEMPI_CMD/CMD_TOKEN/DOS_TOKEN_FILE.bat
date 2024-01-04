

rem For/F "tokens = *" %%G IN ('E:\CASA\Linguaggi\DOS\*.*^|find "/"') DO (%% echo %G% )

For /f "tokens = *" %%G IN ('E:\CASA\Linguaggi\DOS\*.*^|find "/"') DO ( 
pause
echo %G% 
pause)
