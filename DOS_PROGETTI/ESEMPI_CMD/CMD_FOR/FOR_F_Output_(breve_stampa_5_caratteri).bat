
@rem RECUPERO le prime 5 lettere del testo : ---> This is a short e lo visualizza a schermo
@FOR /F "tokens=1-5" %%A IN ("This is a short sentence") DO @echo %%A %%B %%D

pause