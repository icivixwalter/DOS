goto note
	ESEMPIO DI SPOSTAMENTO DI GRUPPI DI FILE @MOVE.GRUPPI.DI.FILE
	@SPOSTA.GRUPPI.DI.FILE  @GRUPPI.DI.FILE.SPOSTA
	
	CON CICLO FOR BASE puoi individuare dei gruppi di file da spostare,
	che sono collocati in cartelle diverse. I gruppi vengono acquisiti da
	file.txt descritti in GruppoFile_01, ecc.. che contengono UNA PATH + UN GRUPPO DI FILE  da esportare
	intesi come tipo, *.* oppure *.xls una categoria speifica oppure un singol file prova.xls
	NON AMMESSA UNA SECONDA PATH con altro tipo. DEVI COSTRUIRE UN NUOVO GRUPPO che preva un'altro
	tipo da esportare che nella stessa directory.
	Per il funzionamento creare 4 DIRECTORY di cui la prima vuota
		backups
				...
		DEMO_01		
			gruppo_01_archive1.zip
			gruppo_01_file1.txt
			gruppo_01_file2.txt
		DEMO_02
			gruppo_02_7zip_ARCHIVIA_FILE_old_5gg.bat
			gruppo_02_Acconti.xls
		DEMO_03
			gruppo_03_BOLL_05.XLS
			gruppo_03_FOR_}--------------------------------------------------@FOR_SEMPLICE.txt
		
	
	Per ora l'esempio è costruito solo PER 3 GRUPPI DI FILE  ma puo essere esteso.
		
	1) carico nelle variabili che rappresentano i GRUPP DI FILE 
		NELLE DIRECTORY DI PARTENZA
	2) ATTIVO IL CICLO FOR PER OGNI GRUPPO DI FILE nella clausola IN	
	   individuata comprensiva di path e utilizzo
	   il move nella clausola DO
:note

@REM 1)
SET /P GruppoFile01_s=<GruppoFile_01.txt
SET /P GruppoFile02_s=<GruppoFile_02.txt
SET /P GruppoFile03_s=<GruppoFile_03.txt

SET /P pathArrivo_s=<PathARRIVO.txt

@REM 2) 
FOR %%G IN ("%GruppoFile01_s%"
	    "%GruppoFile02_s%"
	    "%GruppoFile03_s%") DO move %%G "%pathArrivo_s%"

pause