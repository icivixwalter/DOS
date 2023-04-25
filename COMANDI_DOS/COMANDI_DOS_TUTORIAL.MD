COMANDI_DOS_TUTORIAL.MD

La gestione dei file

		Le informazioni che archiviamo nel nostro disco rigido sono suddivise in documenti, chiamati in inglese file. Un file può essere sia un documento di lavoro che un programma, o una parte di esso. Sia i programmi che i documenti vengono letti dal disco e trasferiti nella memoria RAM per essere eseguiti i primi, e modificati i secondi. Ciò sottintende la necessità, per il computer, di essere sempre a conoscenza della zona del disco nella quale ciascun file è stato registrato. A questo scopo esiste la FAT, File Allocation Table, che costituisce la mappa dei file del disco. Tutte le volte che diamo al DOS un comando che riguarda un file, egli deve fare riferimento alla FAT sia prima che dopo l’operazione. 

		Il nome dei file 
		Nel DOS i file sono contraddistinti dal nome, lungo fino ad otto caratteri, e da una estensione lunga fino a tre caratteri. Il nome può essere composto da lettere, cifre od altri caratteri speciali, ma non può contenere spazi, virgole, barre o punti. Il nome dei programmi è già assegnato dal produttore ed è bene non modificarlo, ma i nomi dei nostri documenti di lavoro possono essere di nostra scelta e modificati a piacere. L’estensione identifica il tipo di file e viene assegnata dal DOS stesso o dai programmi con i quali li abbiamo creati. I file di sistema, ad esempio, hanno una estensione SYS, i programmi che è possibile eseguire hanno EXE, i documenti di solo testo hanno TXT, quelli realizzati con il programma Microsoft Word hanno DOC e quelli . Il nome del file e l’estensione sono uniti da un punto. Se digitiamo il comando 
		C:\> DIR C:

		otterremo una lista dei file contenuti nella directory principale del nostro disco rigido. La prima colonna contiene i nomi dei file, la seconda le estensioni, la terza la lunghezza del file, la quarta e la quinta la data e l’ora della creazione o dell’ultima modifica effettuata. Se digitiamo 
		C:\> DIR C: /W

		otterremo lo stesso elenco di file, ma in forma diversa. Appaiono sullo schermo quattro colonne, ma contengono solamente l’insieme di nome ed estensione dei file, senza altri parametri. Si può notare come i nomi non siano sempre di otto caratteri, ma che comunque sono sempre seguiti da un punto e da una estensione di tre caratteri. Usando i caratteri jolly a disposizione del comando DIR, è possibile cercare 
		C:\> DIR *.SYS
		tutti i file con estensione SYS 
		C:\> DIR A*.*
		tutti i file, con qualsiasi estensione, che hanno il nome che inizia per A 
		C:\> DIR *.B*
		tutti i file, con qualsiasi nome, che hanno l’estensione che inizia per B 
		C:\> DIR *.B?T
		tutti i file, con qualsiasi nome, che hanno una estensione che inizia per B e finisce per T 

		Copia e confronto di file 
		Nella directory principale del nostro disco rigido abbiamo sicuramente un file di nome COMMAND.COM. Si può verificare digitando 
		C:\> DIR C:COMMAND.COM

		ed in questo caso sullo schermo verrà elencato solo questo file. Possiamo farne una copia con 
		C:\> COPY C:COMMAND.COM C:COMMAND.XXX

		L’estensione XXX non ha alcun significato per il DOS, così possiamo utilizzarla per il nostro esempio. Con il comando 
		C:\> DIR COMMAND.*

		otteniamo l’elenco dei due file, verificando di aver ottenuto un file che è l’esatta copia del primo. 
		Ma possiamo anche chiedere al DOS di controllare per noi l’esatta trascrizione del primo file nel secondo 
		C:\> FC C:COMMAND.COM C:COMMAND.XXX

		ed avremo la conferma che i due file sono identici con la risposta del DOS: 
		FC: no differences encountered

		Tutta questa operazione poteva essere compiuta anche copiando il file in una diversa subdirectory od in un altro dischetto, semplicemente inserendo la corretta path nel comando. Ad esempio 
		C:\> COPY C:COMMAND.COM A:MANDCOM.MOC

		copia il file COMMAND.COM sul dischetto A: cambiandone il nome in MANDCOM.MOC 
		La copia di un file può anche essere effettuata utilizzandone lo stesso nome, nel qual caso basta non indicare il nome di destinazione. Qualora esistita nel dischetto A: un file che già abbia lo stesso nome, il DOS avrebbe lo cancella sostituendolo con il nuovo. E’ quindi necessario essere molto prudenti in operazioni come questa. Il comando che segue, se il dischetto nel drive A è un dischetto di sistema o un dischetto originale di un programma, può danneggiarne il contenuto. 
		C:\> COPY C:COMMAND.COM A:

		copia il file dal disco C: al dischetto A: conservandone il nome. 
		Utilizzando i caratteri jolly, si può ordinare al DOS di copiare un gruppo di file. 
		C:\> COPY C:*.SYS A:

		Copia tutti i file del disco C: con estensione SYS nella directory principale del disco A:. 

		Copia di intere subdirectory 
		Il comando 
		C:\> COPY A:*.* C:

		copia tutti i file contenuti nella directory principale di A: nella directory principale del disco rigido C:, ma non copia le eventuali subdirectory. Il comando 
		C:\> XCOPY A:*.* C: /S /E

		copia nel disco rigido C: sia i file che tutte le subdirectory ed i file che queste contengono. Nel caso in esempio, si ottiene la copia completa del disco A:. 
		Il comando XCOPY può sembrare simile a DISKCOPY, ma mentre il primo richiede due dischi identici come formato e come formattazione e sostituisce il contenuto del secondo con quello del primo, XCOPY copia semplicemente il contenuto di un disco nell’altro. XCOPY, inoltre, non copia i file nascosti, e quindi non è adatto a fare copia di dischetti di sistema. Il comando 
		C:\> XCOPY C:\LETTERE A: /S /E

		copia tutto il contenuto della subdirectory \LETTERE del disco rigido nel dischetto A:. 

		Cancellazione di file 
		Come vengono copiati o rinominati, i file possono essere cancellati. 
		C:\> DEL A:COMMAND.COM

		ottiene la specifica cancellazione del solo file COMMAND.COM. 
		C:\> DEL A:*.*

		cancella tutto il contenuto del dischetto A:. Con l’utilizzo dei caratteri jolly si è indicato un qualsiasi nome di file combinato con una qualsiasi estensione. 
		Occorre utilizzare la massima attenzione nell’impartire il comando di cancellazione, in quanto si può provocare la perdita definitiva del file. Il DOS non avverte del pericolo, né chiede conferma della nostra effettiva volontà di cancellare un file o dell’esatta indicazione del suo nome. Il DOS esegue il comando e cancella il file. Solamente quando viene usata l’istruzione *.* per cancellare tutti i file di una directory, il DOS chiede conferma dell’operazione. 

		Recupero di file 
		Se si è cancellato un file per errore, si può tentare di utilizzare il seguente comando 
		C:\> UNDELETE A:\COMMAND.COM

		che cerca di recuperare il file cancellato COMMAND.COM dal rive A:. Il recupero può andare a buon fine solamente se, nel frattempo, non abbiamo effettuato operazioni di registrazione, copia o trasferimento di file nel dischetto A:, altrimenti le probabilità di recupero sono scarse. Non è mai possibile fare affidamento sull’efficacia di questo comando, il quale può recuperare un file solo a patto che esista ancora fisicamente nel dischetto e non sia stato sovrascritto da altri nostri lavori. Il comando UNDELETE si può usare con maggiore sicurezza se è il disco è stato precedentemente protetto con il comando MIRROR. 

		Cambiare il nome 
		Per cambiare nome ad un file ad un file si usa il comando 
		C:\> RENAME C:COMMAND.XXX FIDO.BAU

		Il file COMMAND.XXX non esiste più ed al suo posto è apparso il file FIDO.BAU che ha lo steso contenuto. 
		Anche in questo comando si possono usare i caratteri jolly. 
		C:\> RENAME A: *.COM *.ZOT

		cambia l’estensione COM dei file della directory principale del disco A: dalla estensione ZOT. Il comando RENAME, infatti, può cambiare sia il nome che l’estensione. 

		Aggiornamento di file 
		Facciamo il caso che alcune subdirectory del nostro disco rigido contengano un file chiamato MITTENTE.TXT che contiene il nostro indirizzo e numero di telefono. Se quest’ultimo cambia, dobbiamo modificare tutti diversi file con questo nome sparsi per il disco. Invece è sufficiente modificarne uno, ad esempio nella directory C:\LETTERE e dare il comando 
		C:\> REPLACE C:\LETTERE\MITTENTE.TXT C: /S

		perché il DOS cerchi i file chiamati MITTENTE.TXT in tutto il disco e li sostituisca con quello contenuto nella subdirectory \LETTERE. 

		Visualizzazione di un file 
		Se vogliamo vedere il contenuto di un file è possibile digitare 
		C:\> TYPE C:COMMAND.COM

		Il DOS legge il file indicato e ne visualizza il contenuto sullo schermo. Naturalmente si avrà un risultato comprensibile solamente se il file è formato da testo. Il TYPE di un programma darà esclusivamente segni incomprensibili, in quanto il DOS cercherà di interpretare in forma scritta i codici contenuti nel programma. Un risultato incomprensibile, ad esempio, si ottiene con 
		C:\> TYPE C:\DOS\FDISK.EXE

		Stampa di un file 
		Solitamente i file di lavoro devono essere stampati utilizzando le opportune opzioni del programma con il quali li abbiamo creati. Solo nel caso in cui ciò non sia possibile, o nel caso in cui il file sia un documento in solo testo, è possibile stamparlo direttamente dal DOS. 
		C:\> PRINT C:COMMAND.COM

		comanda al DOS di inviare alla stampante il contenuto del file. Il risultato, sempre che la stampante sia accesa e pronta a stampare, sarà comprensibile solamente le parti di testo. 

		Ricerca di testo 
		E’ possibile cercare un testo all’interno di un file, con il comando FIND. 
		C:\> FIND “Caro amico” C:\LETTERE\GIOVANNI.DOC

		cerca le parole “Caro amico” nel file GIOVANNI.DOC contenuto nella subdirectory \LETTERE e mostra il risultato negativo o positivo della ricerca. 

		Sintassi dei comandi DOS 

		COPY 
		Copia uno o più file. 
		sintassi: COPY [drive1:] [path1] nomefile1 [drive2:] [path2] [nomefile2] [opzioni] 
		il drive1: è quello in cui si trova il disco con il file originale 
		la path1 è quella della subdirectory in cui si trova il disco con il file originale 
		il nomefile1 è il nome del file che si vuole copiare. E’ possibile usare i caratteri jolly “?” e “*”. Si usa “?” per sostituire un carattere, e “*” per un gruppo imprecisato di caratteri il drive2: è quello in cui si trova il disco in cui si vuole copiare il file la path2 è quella della subdirectory in cui si vuole copiare il file 
		il nomefile2 è l’eventuale nome finale del file copiato. Se si omette, il DOS gli attribuisce lo stesso nome di quello originale. 
		l’opzione principale è: 
		/v per verificare la corretta duplicazione del file 

		FC 
		Confronta il contenuto di due file. 
		sintassi: FC [opzioni] [drive1:] [path1] nomefile1 [drive2:] [path2] nomefile2 
		il drive1: è quello in cui si trova il disco con il file originale 
		la path1 è quella della subdirectory in cui si trova il disco con il file originale 
		il nomefile1 è il nome del file originale. 
		il drive2: è quello in cui si trova il disco con il file da confrontare 
		la path2 è quella della subdirectory con il file da confrontare 
		il nomefile2 è il nome del file da confrontare. 
		le opzioni principali sono: 
		/c ignora se i caratteri sono maiuscoli o minuscoli 
		/l cerca di sincronizzare il confronto fra i due testi dopo ogni discordanza incontrata 

		XCOPY 
		Copia il contenuto di una subdirectory. 
		sintassi: XCOPY [drive1:] path1 [drive2:] [path2] [opzioni] 
		il drive1: è quello in cui si trova il disco la subdirectory originale 
		la path1 è quella della subdirectory originale 
		il drive2: è quello in cui si trova il disco in cui si vuole registrare la subdirectory 
		la path2 è quella della subdirectory si vuole registrare la subdirectory 
		l’opzione principale è: 
		/s espande l’esecuzione della copia a tutte le subdirectory contenute in quella originale, tranne quelle vuote 
		/e aggiunge, all’opzione precedente, anche le subdirectory vuote 
		/d:date effettua la copia solo dei file modificati dalla data indicata in poi 
		/v per verificare la corretta duplicazione 
		Esempio: 
		C:\> XCOPY A: B: /S /E /D:13/10/91 /V

		effettua la copia dal disco A: al disco B: di tutte le subdirectory e di tutti i file la cui data di creazione o modifica risalga al 13 ottobre 1991 o sia successiva, e quindi verifica la corretta esecuzione delle copie. 

		DEL 
		Cancella uno o più file. 
		sintassi: DEL [drive:] [path] nomefile [opzioni] 
		il drive: è quello in cui si trova il disco con il file da cancellare la path è quella in cui si trova il file da cancellare il nomefile è il nome del file da cancellare. E’ possibile usare i caratteri jolly “?” e “*”. Si usa “?” per sostituire un carattere, e “*” per un gruppo imprecisato di caratteri. l’opzione è: 
		/p impone al DOS di chiedere conferma prima di eseguire l’ordine 

		UNDELETE 
		Recupera uno o più file cancellati. 
		sintassi: UNDELETE [drive:] [path] nomefile [opzioni] 
		il drive: è quello in cui si trova il disco con il file da recuperare 
		la path è quella in cui si trova il file da recuperare 
		il nomefile è il nome del file da recuperare. E’ possibile usare i caratteri jolly “?” e “*”. Si usa “?” per sostituire un carattere, e “*” per un gruppo imprecisato di caratteri. 
		le opzioni principali sono: 
		/list visualizza una lista dei file che è possibile recuperare, ma non effettua nessun recupero 
		/all recupera tutti i file che è possibile recuperare 
		Il recupero è possibile se il disco è stato protetto con il comando MIRROR. 

		RENAME 
		Recupera uno o più file cancellati. 
		sintassi: RENAME [drive:] [path] nomefile1 nomefile2 
		il drive: è quello in cui si trova il disco con il file da rinominare 
		la path è quella in cui si trova il file da rinominare 
		il nomefile1 è il nome del file da rinominare. E’ possibile usare i caratteri jolly “?” e “*”. Si usa “?” per sostituire un carattere, e “*” per un gruppo imprecisato di caratteri 
		il nomefile2 è il nuovo nome del file. E’ possibile usare i caratteri jolly “?” e “*”. Si usa “?” per sostituire un carattere, e “*” per un gruppo imprecisato di caratteri. 

		REPLACE 
		Sostituisce tutte le copie di un file. 
		sintassi: REPLACE [drive1:] [path1] nomefile [drive2:] [path2] [opzioni] 
		il drive1: è quello in cui si trova il disco con il file originale 
		la path1 è quella della subdirectory in cui si trova il disco con il file originale 
		il nomefile1 è il nome del file originale 
		il drive2: è quello in cui si trova il disco con i file da sostituire 
		la path2 è quella della subdirectory con i file da sostituire 
		le opzioni principali sono: 
		/p obbliga il DOS a chiedere conferma per ciascuna sostituzione 
		/r sostituisce anche file protetti 
		/s estende la sostituzione di file anche nelle subdirectory inferiori 
		/u sostituisce solo i file con data di creazione o di modifica più vecchia del file originale 

		TYPE 
		Visualizza su schermo il contenuto di un file. 
		sintassi: TYPE [drive:] [path] nomefile 
		il drive: è quello in cui si trova il disco con il file da visualizzare 
		la path è quella in cui si trova il file da visualizzare il nomefile è il nome del file da visualizzare. 

		PRINT 
		Invia alla stampante un file. 
		sintassi: PRINT [opzioni1] [drive:] [path] nomefile [opzioni2] 
		il drive: è quello in cui si trova il disco con il file da stampare 
		la path è quella in cui si trova il file da stampare 
		il nomefile è il nome del file da stampare. 
		le opzioni1 principali sono: 
		/d:xxx per indicare una stampante diversa da quella di sistema 
		/t cancella l’ordine di stampa 
		l’opzione2 principale è: 
		/p nel caso ci sia già un file in stampa, vi aggiunge in coda il file da stampare 

		FIND 
		Esamina il contenuto di un file alla ricerca di un testo. 
		sintassi: FIND [opzioni] “testo” [drive:] [path] nomefile 
		il “testo” è il testo da cercare, va compreso fra virgolette 
		il drive: è quello in cui si trova il disco con il file da esaminare 
		la path è quella in cui si trova il file da esaminare 
		il nomefile è il nome del file da esaminare 
		le opzioni principali sono: 
		/v mostra le righe del file che non contengono il testo cercato 
		/c mostra il numero di righe che contengono il testo da cercare 
		/n mostra numerate le righe del file 
		/i cerca il testo senza differenza fra maiuscolo e minuscolo 


La gestione delle directory

		Con la formattazione, il DOS provvede a creare nel disco una zona chiamata root directory. Quando accendiamo il computer e vediamo sullo schermo: 
		C:\>

		ci troviamo proprio nella root directory del disco. Da qui partono tutte le altre ramificazioni, via via ordineremo al DOS di costruirle. 
		Creazione di una subdirectory 
		Proviamo a scrivere
		C:\> MKDIR C:\LETTERE

		abbiamo creato una subdirectory chiamata “LETTERE” nella root directory del disco C:. Verificate con il comando 
		C:\> DIR C:\

		e vedrete che appare anche la scritta “LETTERE”. Adesso possiamo andare avanti nella costruzione del nostro archivio 
		C:\> MKDIR C:\LETTERE\FORNITORI
		C:\> MKDIR C:\LETTERE\FORNITORI\ROSSI

		Nella subdirectory “LETTERE” abbiamo creato un’altra subdirectory “FORNITORI” per le lettere inviate ai fornitori. Quindi abbiamo individuato un livello “ROSSI” riservato alle lettere inviate alla ditta Rossi. 
		Nel linguaggio del computer, abbiamo dato origine a tre subdirectory: 
		\LETTERE 
		\LETTERE\FORNITORI 
		\LETTERE\FORNITORI\ROSSI 
		Cambio di subdirectory 
		Il nostro prompt ci indica che siamo sempre nella root directory del disco rigido. Possiamo entrare dentro la subdirectory appena creata. 
		C:\> CHDIR C:\LETTERE

		ed il DOS ci trasferisce nella subdirectory indicata, mostrandoci il prompt 
		C:\LETTERE>

		Digitando 
		C:\LETTERE> CHDIR C:\LETTERE\FORNITORI\ROSSI

		il DOS ci porta ancora più addentro, e di nuovo il prompt cambia in 
		C:\LETTERE\FORNITORI\ROSSI>

		e digitando 
		C:\LETTERE\FORNITORI\ROSSI> CHDIR C:\

		si torna alla directory principale. 

		Esame della struttura del disco 
		Con il comando 
		C:\> TREE C:\

		si ottiene una mappa del disco rigido, in modo da poter vedere graficamente la gerarchie delle subdirectory. Notate la struttura “ad albero” (è per questo che il comando è “TREE”) del disco: dalla root directory si diparte un “ramo” che porta alla scritta “LETTERE”, da qui a “FORNITOR” e da qui a “ROSSI”. Notate come già esistano altre “ramificazioni” del genere, od almeno una chiamata “DOS”: è quella del sistema operativo. 
		C:\ 
		| 
		|——DOS 
		| 
		|——LETTERE 
		| | 
		| |——FORNITOR 
		| | 
		| |——ROSSI 
		Nel caso particolare, avendo scritto una lettera indirizzata alla ditta Rossi, con il nostro programma di word processing, possiamo chiederne la registrazione in \LETTERE\FORNITOR\ROSSI. Questo indirizzo, che contiene tutte le successive subdirectory, viene chiamato path. Per individuare un file è necessario indicare il disco, la path ed il nome del file. Lavorando con un word processor e chiedendo l’apertura di un documento, ci viene richiesto di indicarlo: possiamo digitare 
		C:\LETTERE\FORNITOR\ROSSI\AVVISO.TXT

		per ottenere il caricamento in memoria della lettera “AVVISO.TXT”. 
		L’insieme di disco, path e nome del file permette di arrivare, finalmente, alla lettera desiderata. Nella sintassi della path è obbligatorio indicare la suddivisione con l’uso della sbarra rovesciata “\”. 
		Si possono creare fino a 512 fra file e subdirectory nella root directory, e fino 512 file o subdirectory in ciascuna subdirectory, con il solo limite della capienza del disco rigido... un bel po’ di spazio! 

		Cancellazione di directory 
		Con il comando 
		C:\> RMDIR C:\LETTERE\FORNITORI\ROSSI

		cancelliamo dal disco la subdirectory \LETTERE\FORNITORI\ROSSI. Il DOS esegue questa operazione solamente se la subdirectory non contiene alcun file, in caso contrario visualizza un messaggio di errore. 

		Sintassi dei comandi DOS 

		DIR 
		Visualizza il contenuto della root directory o subdirectory. 
		sintassi: DIR [drive:] [path] [nomefile] [opzioni] 
		il drive: è uno di quelli presenti 
		la path è quella della subdirectory di cui si vuole vedere il contenuto 
		il nomefile è l’eventuale nome del file che si cerca. E’ possibile usare i caratteri jolly “?” e “*”. Si usa “?” per sostituire un carattere, e “*” per un gruppo imprecisato di caratteri. Quindi *.TXT elencherà tutti i file che hanno .TXT per estensione, A*.TXT tutti quelli che iniziano per A, A?.TXT solo quelli che iniziano per A e che sono composti di due lettere. 
		le opzioni principali sono: 
		/p per vedere l’elenco a schermate 
		/w per vedere l’elenco formato solo dai nomi dei file 
		/a:h mostra i file nascosti 
		/a:s mostra i file di sistema 
		/a:d mostra solo le subdirectory 
		/a:-d mostra solo i file 
		/o:n mostra in ordine alfabetico 
		/o:-n mostra in ordine alfabetico inverso 
		/o:d mostra in ordine di data 
		/o:-d mostra in ordine di data inverso 
		/o:s mostra in ordine di grandezza 
		/o:-s mostra in ordine di grandezza inverso 
		/s mostra tutto il disco 
		>prn stampa l’elenco 
		Esempio: 
		C:\> DIR C:\LETTERE\ROSSI /a:-d/o:n >prn

		stampa l’elenco, in ordine alfabetico, di tutti i file contenuti nella subdirectory \LETTERE\ROSSI, omettendo i nomi delle eventuali subdirectory presenti. 


		TREE 
		Visualizza la struttura del disco, con la root directory e tutte le subdirectory. 
		sintassi: TREE [drive:] [path] [opzioni] 
		il drive: è uno di quelli presenti 
		la path è la subdirectory di cui si vuole vedere la struttura (se si omette, il comando mostra l’intero disco) 
		le opzioni sono: 
		/f mostra, oltre alle subdirectory, anche i file 
		>prn stampa l’elenco 

		MKDIR 
		Crea una subdirectory. 
		sintassi: MKDIR [drive:] path 
		il drive: è uno di quelli presenti 
		la path è quella della subdirectory che si vuole creare 

		CHDIR 
		Consente di trasferire la linea di comando da una subdirectory ad un’altra. 
		sintassi: CD [drive:] [path] 
		il drive: è uno di quelli presenti 
		la path è quella della subdirectory nella quale ci si vuole trasferire 

		RMDIR 
		Consente di cancellare una subdirectory. 
		sintassi: RMDIR [drive:] [path] 
		il drive: è uno di quelli presenti 
		la path è quella della subdirectory che si vuole cancellare Si può cancellare una subdirectory solamente se non contiene file.
