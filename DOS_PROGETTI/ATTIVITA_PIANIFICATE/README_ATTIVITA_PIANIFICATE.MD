# README SULLE ATTIVITA PIANIFICATE

## NOTE
il progetto ha creato un procedura .bat che al suo interno esegue:
1) esegue il dos per caricare i memoria le attivita pianificate
2) esegue powershell per definire i campi
3) esegue powershell per popolare i campi
4) esegue powershell creare il csv



Una volta creato il file .csv occore trasformarlo in .xls che viene collegato
ad access GE_Analisi_Attivita.mdb
in access utilizzare:


Qry_DELETE_01_TB01_AttivitaPianificate              = per cancellare i dati in TB01_AttivitaPianificate
Qry_INSERT_01_DaXLS_Analisi_Attivita_To_TB01        = query per accodare da xls in access
Qry_SELECT_02_TB01_VistaSemplicata                  = query per visualizzare in modo semplificato l'archivio
Qry_GROUP_01_TB01_Stato                             = query GROUP per 



## TODO: fare query che estrae solo i servizi a tempo
         creare bat per una disattivazione
         creare un archivio di servizi inutili
