ECHO OFF
goto:Commentofile

//INIZIO COMMENTO - MULTI RIGA
//=======================================================================================================//
Faccio la lista di tutti i file .txt nella directory indicata
come full path, il comando dir deve essere racchiuso nelle virgolette ''

originale
List all the text files in a folder:
   FOR /F "tokens=*" %%G IN ('dir /b C:\docs\*.txt') DO echo %%G
The "tokens=*" has been added to match all parts of any long filenames returned by the DIR command.
List all the text files in a folder, including the full path:
   FOR /F "tokens=*" %%G IN ('dir/b /s ^"c:\program files\*.txt^"') DO echo %%G

//FINE COMMENTO   
//=======================================================================================================//   
:Commentofile


@REM  // CICLO FORM CON PATH COMPLETA SOLO FILE
@REM //==================================================================================================//
goto:NOTA_Ciclo_FOR_pathCompleta

Questo è un ciclo for con i seguenti parametri:
 FOR /F 	= 
	
	
	
:NOTA_Ciclo_FOR_pathCompleta

@REM ------------------------------------> COMANDI
 FOR /F "tokens=*" %%G IN ('dir /b c:\CASA\CDM\LaQuercia\*.txt') DO echo %%G
 
 pause >NUL @REM ... pause >nul permette la pausa attenzione a non commettere l'errore DELLA DOPPIA LL di null crea un file null. Utilizzare NUL






Goto:NOTA_SPECIFICHE_COMANDO_FOR_=====================================================>

http://www.informaticando.net/page/Comando-cmd-FOR.aspx

Comando cmd FOR
Esegue il comando specificato per ogni file di un gruppo di file.

 

FOR %variabile IN (gruppo) DO comando [parametri del comando]

  %variabile  Indica un parametro sostituibile composto da una sola lettera.
  (gruppo)    Indica gruppo di uno o più file. Si possono usare caratteri jolly.
  comando     Specifica il comando da eseguire per ciascun file.
  parametri del comando  Indica i parametri o le opzioni del comando specificato.

 

Per usare FOR in un programma batch, utilizzare la sintassi %%variabile anziché %variabile. Le variabili possono essere differenziate utilizzando lettere maiuscole e minuscole. Esempio: %i è diversa da %I.

Se le estensioni dei comandi sono abilitate, per il comando FOR sono supportate le forme aggiuntive seguenti:

FOR /D %variabile IN (gruppo) DO comando [parametri-comando]

    Se il parametro gruppo contiene caratteri jolly, per la corrispondenza verranno utilizzati nomi di directory anziché nomi di file.

FOR /R [[unità:]percorso] %variabile IN (gruppo) DO comando
    [parametri-comando]

    Esegue l'istruzione FOR in ogni directory dell'albero di directory con radice [unità:]percorso. Se dopo l'opzione /R non viene specificata alcuna directory, come radice verrà utilizzata la directory corrente.
    Se il valore del parametro gruppo è un punto (.), verrà semplicemente eseguita l'enumerazione dell'albero di directory.

FOR /L %variabile IN (inizio,incremento,fine) DO comando [parametri-comando]

    In questo caso il parametro gruppo è una sequenza di numeri compresi tra inizio e fine, con incrementi pari a incremento.
    Il parametro gruppo (1,1,5) genera ad esempio la sequenza 1 2 3 4 5, mentre (5,-1,1) genera la sequenza (5 4 3 2 1).

FOR /F ["opzioni"] %variabile IN (gruppo-file) DO comando [parametri-comando]
FOR /F ["opzioni"] %variabile IN ("stringa") DO comando [parametri-comando]
FOR /F ["opzioni"] %variabile IN ('comando') DO comando [parametri-comando]

    In alternativa, se è presente l'opzione usebackq:

FOR /F ["opzioni"] %variabile IN (gruppo-file) DO comando [parametri-comando]
FOR /F ["opzioni"] %variabile IN ('stringa') DO comando [parametri-comando]
FOR /F ["opzioni"] %variabile IN (`comando`) DO comando [parametri-comando]

    Il parametro gruppo-file può essere costituito da uno o più nomi di file.
    Ogni file viene aperto, letto ed elaborato prima di passare al file successivo in gruppo-file.
    Durante l'elaborazione il file viene letto e suddiviso in singole righe di testo, quindi ogni riga viene scomposta in zero o più token.
    Viene quindi richiamato il corpo del ciclo FOR, utilizzando le stringhe dei token trovati come valori delle variabili.
    Per impostazione predefinita, /F passa il primo token delimitato da spazi di ogni riga di ogni file.
    Le righe vuote vengono ignorate. Il comportamento di analisi predefinito può essere sostituito specificando il parametro facoltativo "opzioni".
    Tale parametro è una stringa tra virgolette contenente una o più parole chiave che specificano le varie opzioni di analisi.

    Parole chiave disponibili:

        eol=c           - Specifica il carattere di commento di fine riga (uno solo).
        skip=n          - Specifica il numero di righe da ignorare, a partire dall'inizio del file.
        delims=xxx      - Specifica un insieme di delimitatori. Tale insieme sostituisce i delimitatori predefiniti (spazi e tabulazioni).
        tokens=x,y,m-n  - Specifica i token da passare, per ogni riga, al
                          corpo del blocco FOR a ogni iterazione. Determina
                          l'allocazione di nomi di variabile aggiuntivi.
                          L'espressione m-n indica l'intervallo dei token
                          compresi tra la posizione m e la posizione n. Se
                          l'ultimo carattere della stringa specificata dopo
                          tokens= è un asterisco, verrà allocata una variabile
                          aggiuntiva in cui sarà inserito il testo rimanente
                          sulla riga dopo l'ultimo token analizzato.
        usebackq        - Specifica che sono attive le nuove semantiche, in cui
                          le stringhe con apici inversi vengono eseguite come
                          comandi e le stringhe con virgolette singole sono
                          comandi con stringhe letterali in cui è possibile
                          utilizzare le virgolette doppie per specificare i
                          nomi di file in un gruppo di file.

    Esempi:

FOR /F "eol=; tokens=2,3* delims=, " %i in (file.txt) do @echo %i %j %k

analizza ogni singola riga in file.txt, ignorando le righe che iniziano con un punto e virgola, quindi passa il secondo e il terzo token di ogni riga al corpo del ciclo FOR. I token sono delimitati da virgole e/o spazi. Si  noti che il riferimento %i nelle istruzioni del corpo del ciclo FOR consente di ottenere il secondo token, %j il terzo e %k i token rimanenti dopo il terzo. I nomi di file che contengono spazi devono essere racchiusi tra virgolette doppie. Per utilizzare le virgolette doppie in questo modo, è necessario specificare anche l'opzione usebackq, per evitare che i caratteri tra virgolette doppie vengano interpretati come stringhe letterali da
analizzare.

Il parametro %i viene dichiarato esplicitamente nell'istruzione FOR, mentre %j e %k sono dichiarati in modo implicito tramite l'opzione tokens=.
Tramite la riga tokens= è possibile specificare fino a 26 token, purché ciò non determini un tentativo di dichiarare una variabile oltre la lettera "z" o "Z".
Le variabili del ciclo FOR sono variabili globali costituite da una sola lettera, con distinzione tra maiuscole e minuscole, e non possono essere presenti più di 52 variabili attive contemporaneamente.

È inoltre possibile utilizzare la logica di analisi FOR /F su una stringa, trasformando il gruppo di file tra parentesi in una stringa tra virgolette singole.
Tale stringa verrà trattata come una singola riga di input proveniente da un file e quindi analizzata.

È infine possibile utilizzare il comando FOR /F per analizzare l'output di un comando, trasformando il gruppo di file tra parentesi in una stringa tra virgolette inverse.
Tale stringa verrà trattata come una riga di comando passata a un file CMD.EXE figlio e l'output verrà acquisito in memoria e analizzato come se fosse un file. L'esempio seguente:

      FOR /F "usebackq delims==" %i IN (`set`) DO @echo %i

    enumera pertanto i nomi delle variabili d'ambiente nell'ambiente corrente.

 

È stata inoltre migliorata la sostituzione dei riferimenti alle variabili FOR.

È ora possibile utilizzare la sintassi seguente:

    %~I         - Espande     %I rimuovendo le virgolette (").
    %~fI        - Sostituisce %I con un percorso completo.
    %~dI        - Sostituisce %I solo con una lettera di unità.
    %~pI        - Sostituisce %I solo con un percorso.
    %~nI        - Sostituisce %I solo con un nome di file.
    %~xI        - Sostituisce %I solo con un'estensione di file.
    %~sI        - Il percorso espanso contiene solo nomi brevi.
    %~aI        - Sostituisce %I con gli attributi di file del file.
    %~tI        - Sostituisce %I con la data e l'ora del file.
    %~zI        - Sostituisce %I con la dimensione del file.
    %~$PATH:I   - Esegue una ricerca nelle directory elencate nella
                   variabile di ambiente PATH e sostituisce %I con il nome
                   completo del primo file trovato. Se il nome della variabile
                   di ambiente non è definito o il file non viene trovato
                   durante la ricerca, il modificatore verrà sostituito da
                   una stringa vuota.

 

È possibile combinare più modificatori:

    %~dpI       - Sostituisce %I solo con una lettera di unità e un percorso.
    %~nxI       - Sostituisce %I solo con il nome e l'estensione di un file.
    %~fsI       - Sostituisce %I solo con un percorso completo con nomi brevi.
    %~dp$PATH:i - Ricerca     %I nelle directory elencate nella variabile di
                   ambiente PATH e lo sostituisce con la lettera di unità
                   e il percorso del primo elemento trovato.
    %~ftzaI     - Sostituisce %I con una riga di output simile a DIR.

 

Negli esempi precedenti è possibile sostituire %I e PATH con altri valori validi. 
La sintassi %~ deve terminare con un nome di variabile FOR valido. 
L'utilizzo di nomi di variabile con caratteri maiuscoli, ad esempio %I, migliora la leggibilità 
del testo ed evita possibili confusioni con i modificatori, per i quali non viene fatta distinzione tra maiuscole e minuscole.


ATTENZIONE QUESTI SONO ESEMPI DI COMMENTI CHE POSSONO ESEGUIRE CONGIUNTAMENTE ISTRUZIONI

@REM....&SETLOCAL ENABLEEXTENSIONS&SETLOCAL DISABLEDELAYEDEXPANSION
@REM....&set /p s=FileSearch, type '-' to refresh lookup list: ||GOTO:EOF
@REM....&if .%s% NEQ .- echo.&findstr %s% "%~f0"&PAUSE&GOTO:EOF
@REM....&findstr /b /c:"@REM....&" "%~f0">"%~f0.txt"
@REM....&dir /s/b c:\ 1>>"%~f0.txt"&move /Y "%~f0.txt" "%~f0"
@REM....&GOTO:EOF

:NOTA_SPECIFICHE_COMANDO_FOR_=====================================================> 