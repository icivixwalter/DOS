ECHO OFF

@ECHO ESEMPIO 01: ECHO FOR base dei giorni della settimana
@ECHO ..................................................
FOR %%G IN (Monday Tuesday Wednesday Thursday Friday) DO Echo %%G

@ECHO .
@ECHO .

PAUSE


@ECHO ESEMPIO 02: FOR BASE, giorni della settimana in una frase
@ECHO ..................................................
FOR %%G IN (Monday Tuesday Wednesday Thursday Friday) DO Echo E' veramento %%G un giorno di lavoro!

@ECHO .
@ECHO .



@rem Copy a single file: 1) creo il file 2) lo sposto in una path

@ECHO ESEMPIO 03: FOR BASE, copia singolo file
@ECHO ..................................................
@echo creo il file MyFile.txt 				> MyFile.txt
@echo III ESEMPIO provo a scrivere nel file 		>> MyFile.txt
@echo sposto il file nella sotto directory backups 	>> MyFile.txt

@echo prima creo la cartella
md backups 
@echo copio il file dalla directory corrente a backups

pause
FOR %%G IN (MyFile.txt) DO copy %%G .\backups\


@ECHO .
@ECHO .




@ECHO ESEMPIO 04 FOR BASE, Copy a list of several files: Copia un elenco di più file:
@ECHO ..................................................
@echo creo il file MyFile.txt									> MyFile.txt
@echo IV ESEMPIO Copia un elenco di più file: MyFile.txt + SecondFile.txt			>> MyFile.txt
@echo copio due file nella cartella backups 							>> MyFile.txt


@echo CREO IL SECONDO FILE SecondFile.txt 							> SecondFile.txt

@echo ho creato il secondo file  DENOMINATO SecondFile.txt 					>> SecondFile.txt

@echo .
@echo HO CREATO LA CARTELLA DI SALVATAGGIO backups						>> SecondFile.txt
md backups 


echo sposto i due file nella cartella di salvataggio utilizzando 					>> SecondFile.txt 
ECHO il gruppo dei parametri DELLA CLAUSOLA IN con il comando do 					>> SecondFile.txt 
ECHO utilizzando questo camando "FOR %%G IN (MyFile.txt SecondFile.txt) DO copy %%G .\backups\" 	>> SecondFile.txt 
FOR %%G IN (MyFile.txt SecondFile.txt) DO copy %%G .\backups\


pause




@ECHO ESEMPIO 05 FOR BASE, Creo 2 file posizionandoli nella directory DEMO  da creare 				>  File1.txt
@ECO  e sposto i 2 file nella directory backups 													>>  File1.txt
@ECHO ..................................................											>> File1.txt
@echo creo LA directory DEMO  e creo il File1.txt													>> File1.txt
@echo spostandolo direttamente nella directory DEMO													>> File1.txt
@echo  																								>> File1.txt
@md DEMO
@MOVE file1.txt \DEMO

@echo CREO IL SECONDO denominato File2.txt 															>  File2.txt
@echo e lo sposto nella directory DEMO  															>> File2.txt
@md DEMO
@MOVE file2.txt \DEMO
@echo .
@echo HO CREATO LA CARTELLA DI SALVATAGGIO backups													>> File2.txt
md backups 


@echo sposto i due file nella cartella di salvataggio utilizzando 									>> File2.txt 
@ECHO il gruppo dei parametri DELLA CLAUSOLA IN con il comando do 									>> File2.txt 
@ECHO e questo è il modello di comdandì:   															>> File2.txt 
@ECHO "FOR %%G IN (MyFile.txt File2.txt) DO copy %%G .\backups\" 									>> File2.txt 
FOR %%G IN ("C:\demo files\file1.txt" "C:\demo files\File2.txt") DO copy %%G .\backups\


pause
