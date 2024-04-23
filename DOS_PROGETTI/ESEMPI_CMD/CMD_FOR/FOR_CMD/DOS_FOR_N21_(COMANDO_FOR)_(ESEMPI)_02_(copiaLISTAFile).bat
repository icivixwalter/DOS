@REM....copia LA LISTA DI file txt SEPARATI DA SPAZIO su tmp, attenzione i file sono 
@REM racchiusi da virgolett per i caratteri speciali, ed ho usato il jolly *
FOR %%G IN ("DOS_}--*.txt" "DOS_FOR_N20--*.txt") DO copy %%G c:\TMP\