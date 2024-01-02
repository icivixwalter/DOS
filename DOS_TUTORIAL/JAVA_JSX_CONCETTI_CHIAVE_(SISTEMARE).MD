JAVA_JSX_CONCETTI_CHIAVE
# INTRODUZIONE A JAVA SX
	CREARE UN PROGETTO DENO REACT	

			NOTE
				il tutorial di deno qui 		: https://deno.land/manual@v1.31.1/node/how_to_with_npm/react
					Il progetto si trova qui 	: https://github.com/denoland/examples/tree/main/with-react
				React è il frontend JavaScript più utilizzato struttura. Ha reso popolare un approccio dichiarativo verso la progettazione dell'utente interfacce, con un modello di dati reattivo. A causa della sua popolarità, non è Sorprendente che sia il framework più richiesto quando si tratta di costruire web app con Deno.

				Questo è un tutorial che ti guida attraverso la creazione di una semplice app React con Deno in meno di cinque minuti. L'app visualizzerà un elenco di dinosauri. Quando si Fai clic su uno, ti porterà a una pagina di dinosauro con maggiori dettagli.

				Ecco la versione ospitata dell'app. Visualizza la fonte qui.
			OPERAZIONI
			CREA VITE EXTRA

				1) CREA UNA NUOVA CARTELLA PER IL PROGETTO 
						C:\CASA\LINGUAGGI\HTML\PROGETTI_HTML\REACT_CONCETTI_CHIAVE 
												
							apri il terminale DOS e vai in project
								
										cd .\Project\


										e vai nella cartella creaata con cd react-concetti-chiave

				2) 	CREA L'IMPALCATURA VITE
						Questo tutorial utilizzerà Vite per impalcare rapidamente un Deno e l'app React USA QUESTO COMANDO DENO: 
							
								deno run -A npm:create-vite-extra

							VITE richiede il nome da dare al  progetto e alla cartella ? :  sara chiamato 
									
									react-concetti-chiave

				3)	SELEZIONARE IL TEMPLATE	
						tra i vari template utilizzare
								deno-react
				
				4) SELEZIONARE LA VARIABILE
							TypeScript

				5) COMANDO DOS CD
						Vai  nella cartella del progetto creata con il comando dos:
									cd react-concetti-chiave

				6) COMANDO DONE DI CREAZIONE PROGETTO
						digita il comando
							
							deno task dev

						viene creato il progetto funzionante.

						SI APRE NEL DOS  il comando VITE il quale indica:
								la porta ---> Local:   http://localhost:5173/
								il nt 	--->  Network: use --host to expose
								cmd vite	--->   press h to show help
									
								  i comandi che puoi attivare sono: 
									
								  Shortcuts
											press r to restart the server
											press u to show server url
											press o to open in browser
											press c to clear console
											press q to quit
# CAP. 1.1.CONCETTI CHIAVE
	Note
	   React è una libreria JavaScript, quindi assumeremo che tu possieda una conoscenza base del linguaggio JavaScript. 
	   In questa guida, esamineremo i mattoni con cui si costruiscono le applicazioni con React: elementi e componenti.
	   Una volta padroneggiati, potrai creare applicazioni complesse a partire da piccole parti riutilizzabili.
## CAP. 2.1.INTRODUZIONE A JSX
	SINTASSI
		
		const element = <h1>Hello, world!</h1>;  = jsx
		const element = "Hello, world!";  = questo è javascript 

	   Questa strana sintassi con i tag non è né una stringa né HTML.
			@JSX@LIBRERIA@DI@REACT
			@REACT@LIBRERIA.JSX@ESTENSIONE@SINTASSI@JAVASCRIPT

	   È chiamata JSX, ed è un’estensione della sintassi JavaScript. Ti raccomandiamo di utilizzarla con React per descrivere 
	   l’aspetto che dovrebbe avere la UI (User Interface, o interfaccia utente). 
	   JSX ti potrebbe ricordare un linguaggio di template, ma usufruisce di tutta la potenza del JavaScript.
	   
	   JSX produce “elementi React”. Studieremo il modo in cui gli elementi vengono renderizzati nel DOM nella prossima sezione. Qui sotto troverai le nozioni fondamentali di JSX, sufficienti per iniziare ad utilizzarlo.
	
	PERCHÉ JSX?
		Note
		  React riconosce il fatto che la logica di renderizzazione è per sua stessa natura accoppiata con le altre logiche che governano la UI: la gestione degli eventi, il cambiamento dello stato nel tempo, la preparazione dei dati per la visualizzazione.
	    React SEPARA LA RESPONSABILITA
			@REACT@RESPONSABILITA
			Invece di separare artificialmente le tecnologie inserendo il codice di markup e la logica in file separati, React separa le responsabilità utilizzando unità debolmente accoppiate chiamate “componenti” che contengono entrambi. 
			React non obbliga ad utilizzare JSX, ma la maggior parte delle persone lo trovano utile come aiuto visuale quando lavorano con la UI all’interno del codice JavaScript. Inoltre, JSX consente a React di mostrare messaggi di errore e di avvertimento più efficaci.

	### INCORPORARE ESPRESSIONI IN JSX
			JSX PARENTESI GRAFFE
					@REACT@GRAFFE

					@REACT@DICHIARARE.una@variabile
					const name = 'Giuseppe Verdi';

					@REACT@DICHIARARE.una@esspressione@elemento@dichiarazione
					@dichiarare@espressione@javascritp
						const element = <h1>Hello, {name}</h1>;
	
				PARENTESI GRAFFE
								Nell’esempio in basso, dichiariamo una variabile chiamata name e poi la utilizziamo all’interno di JSX racchiudendola in parentesi graffe:
								ES
										const name = 'Giuseppe Verdi';
										const element = <h1>Hello, {name}</h1>;
	
								Puoi inserire qualsiasi espressione JavaScript all’interno delle parentesi graffe in JSX. Ad esempio, 
									2 + 2, 
									user.firstName o 
									formatName(user) 
								sono tutte espressioni JavaScript valide.
	
								Possiamo includere anche una chiamata ad una funzione di javaScript formatName(user), in un elemento <h1>.
									ES

									//@INTRODUZIONE_SX -Incorporare espressioni in JSX
									//-------------------------------------------------------------------------//
									//NOTE: Puoi inserire qualsiasi espressione JavaScript all’interno delle parentesi 
									//graffe in JSX. Ad esempio, 2 + 2, user.firstName o formatName(user) sono tutte espressioni JavaScript valide.
												
									function formatName(user) {
									return user.firstName + ' ' + user.lastName;
									}
									
									//dichiariamo una variabile chiamata name e poi la utilizziamo 
									//all’interno di JSX racchiudendola in parentesi graffe:
									//dichiarazione di un elemento
									const user = {
									firstName:  'Giuseppe',
									lastName:   'Verdi'
									};
									
									//Nell’esempio in basso, includiamo IN JFX
									//il risultato della chiamata ad una funzione JavaScript, formatName(user), in un elemento <h1>
									//ATTENZIONE racchiusa tra graffe, per chiamare la funziona altrimenti è considerato testo.
									const element = (
									<h1>
									Incorporare espressioni in JSX - Hello, world {formatName(user)}!
									</h1>
									);
									
									//-------------------------------------------------------------------------//
										Abbiamo suddiviso il codice JSX su più linee per renderlo più leggibile. Sebbene non sia obbligatorio, se segui questa pratica ti consigliamo di racchiudere il codice in parentesi per evitare i problemi che possono derivare dall’inserimento automatico dei punto e virgola.
	
								CONCLUSIONE
									Nelle {} di React possiamo includere numeri, testi o chiamate a funzioni.
	
	
	
	
	### JSX È UN’ESPRESSIONE
			ESPRESSIONI JSX CHIAMATE A FUNZIONI
				Dopo la compilazione, le espressioni JSX diventano normali chiamate a funzioni JavaScript che producono oggetti JavaScript.
				@JSX@TRASFORMA.IN@FUNZIONI.jasvaScript
	
				Questo significa che puoi utilizzare JSX all’interno di:
					+ istruzioni if e 
					+ cicli for, 
					+ assegnarlo a variabili, 
					+ utilizzarlo come argomento di una funzione e 
					+ restituirlo come risultato di una funzione:
	
					ES. dentro una if restituisco il risultato
							function getGreeting(user) {
									if (user) {
									return <h1>Hello, {formatName(user)}!</h1>;
									}
									return <h1>Hello, Stranger.</h1>;
									}
	
	### SPECIFICARE GLI ATTRIBUTI CON JSX
			ATTRIBUTI CON LE VIRGOLETTE
				Puoi utilizzare le virgolette per valorizzare gli attributi con una stringa:
				@JSX@ATTRIBUTI.VIRGOLETTE
					ES virgolette
						const element = <a href="https://www.reactjs.org"> link </a>;
	
			ATTRIBUTI CON GRAFFE
			
				@JSX@ATTRIBUTI.GRAFFE
				Puoi anche utilizzare le parentesi graffe per includere un’espressione JavaScript in un attributo:
					ES GRAFFE
						const element = <img src={user.avatarUrl}></img>;
	
				Attenzione
					Non aggiungere le virgolette attorno alle parentesi graffe quando includi un’espressione JavaScript in un attributo. Dovresti utilizzare o le virgolette (per le stringhe) o le parentesi graffe (per le espressioni), ma mai entrambe nello stesso attributo.
	
			CONVENZIONE CAMELCASE
					@JSX@CONVENZIONE.camelcase
					Dal momento che JSX è più vicino al JavaScript che all’HTML, React DOM utilizza la convenzione camelCase nell’assegnare il nome agli attributi, invece che quella utilizzata normalmente nell’HTML, e modifica il nome di alcuni attributi.
					ATTENZIONE il camelcase serve per :
						i file
						Le funzioni
						le classi
	
					Ad esempio, class diventa className in JSX e tabindex diventa tabIndex.

					Senza Camelcase non ci saranno funzionamenti corretti.


	### SPECIFICARE FIGLI IN JSX
			@TAG@VUOTI
				Se un tag è vuoto, puoi chiuderlo immediatamente con />, come in XML:
					ES Tag vuoto
							const element = <img src={user.avatarUrl} />;
	
			TAG CON FIGLI
					@JSX@FIGLI
				I tag JSX possono contenere figli:
					ES. tag con 2 figli
						const element = (
							<div>
							<h1>Hello!</h1>
							<h2>Good to see you here.</h2>
							</div>
							);
	
	
	### JSX PREVIENE GLI ATTACCHI DI INIEZIONE DEL CODICE
			IMPUT SICURO
					@JSX@IMPUT
				Utilizzare l’input degli utenti in JSX è sicuro:
					ES. imput
						const title = response.contenutoPotenzialmentePericoloso;
						// Questo è sicuro:
						const element = <h1>{title}</h1>;
	
			REACT DOM
					@JSX@REACT@DOM
	
				React DOM effettua automaticamente l’escape di qualsiasi valore inserito in JSX prima di renderizzarlo. In questo modo, garantisce che non sia possibile iniettare nulla che non sia esplicitamente scritto nella tua applicazione. Ogni cosa è convertita in stringa prima di essere renderizzata. Questo aiuta a prevenire gli attacchi XSS (cross-site-scripting).


	### JSX RAPPRESENTA OGGETTI
			COMPILAZIONE
					@JSX@OGGETTI
				Babel compila JSX in chiamate a React.createElement().
				Questi due esempi sono identici:
						const element = (
							<h1 className="greeting">
							Hello, world!
							</h1>
							);
	
						const element = React.createElement(
							'h1',
							{className: 'greeting'},
							'Hello, world!'
							);
			JSX CREA OGGETTI
					@JSX@CREAZIONE.DI.OGGETTI
				React.createElement() effettua alcuni controlli per aiutarti a scrivere codice senza bug, ma fondamentalmente crea un oggetto come questo:
					// Nota: questa struttura è semplificata
							const element = {
							type: 'h1',
							props: {
							className: 'greeting',
							children: 'Hello, world!'
							}
							};
	
			ELEMENTI REACT
					@REACT@ELEMENTI
				Questi oggetti sono chiamati “elementi React”. Puoi pensare a loro come a descrizioni di ciò che vuoi vedere sullo schermo. React legge questi oggetti e li utilizza per costruire il DOM e tenerlo aggiornato.
	
	
## CAP. 3.1.RENDERIZZARE ELEMENTI
		ELEMENTI
			sono i piu piccoli mattoni costituenti apps descritte in React
			Un elemento descrive cosa vuoi vedere sullo schermo:
					const element = <h1>Hello, world</h1>;

			Contrariamente agli elementi DOM del browser, gli elementi React sono oggetti semplici e per questo più veloci da creare. Il DOM di React tiene cura di aggiornare il DOM del browser per essere consistente con gli elementi React.

			ATTENZIONE AL SIGNIFICATO DI COMPONENTI
			gli elementi sono ciò di cui i componenti “sono fatti”

		RENDERIZZARE UN ELEMENTO NEL DOM
			Supponiamo di avere un <div> da qualche parte nel tuo file HTML:
				<div id="root"></div>
			Lo chiameremo nodo DOM “radice” (o root) in quanto ogni cosa al suo interno verrà gestita dal DOM di React.

			REACT SOLO UN NODO DOM RADICE
				Applicazioni costruite solo con React di solito hanno un solo nodo DOM radice. Se stai integrando React all’interno di apps esistenti, potresti avere più elementi DOM radice isolati, dipende dai casi.
			RENDERIZZARE UN ELEMENTO REACT
				Per renderizzare un elemento React, passa l’elemento DOM a ReactDOM.createRoot(), successivamente passa l’elemento React a root.render():

				@Esempio_Renderizzare_Elementi@Renderizzare_un_Elemento_nel_DOM


						const root = ReactDOM.createRoot(
								document.getElementById('root')
								);
								const element = <h1>Hello, world</h1>;
								root.render(element);

			AGGIORNARE UN ELEMENTO RENDERIZZATO
				ELEMENTI DI REACT SONO IMMUTABILI
					Gli elementi React sono immutabili. Una volta creato un elemento, non puoi cambiare i suoi figli o attributi. Un elemento è come un singolo fotogramma di un film: rappresenta la UI (interfaccia utente) ad un certo punto nel tempo.

					Con la conoscenza che abbiamo fino a questo punto, l’unico modo per aggiornare l’UI è quello di creare un nuovo elemento e di passarlo a root.render().
					Prendiamo in considerazione il prossimo esempio, nel quale abbiamo un orologio:

						ES. OROLOGIO
								//crea il ROOT dom
								const root = ReactDOM.createRoot(
										//crea il figlio
										document.getElementById('root')
										);
										
										//funzione di hello e la data
										function tick() {
										const element = (
										<div>
											<h1>Hello, world!</h1>
											<h2>It is {new Date().toLocaleTimeString()}.</h2>
										</div>
										);

										//renderizza ogni volta
										root.render(element);
										}
										
										//chiamo la funzione tick ad ogni secondo (1000)
										setInterval(tick, 1000);


			REACT AGGIORNA SOLO QUANTO NECESSARIO

					Il DOM di React confronta l’elemento ed i suoi figli con il precedente, applicando solo gli aggiornamenti al DOM del browser necessari a renderlo consistente con lo stato desiderato.

					Puoi verificare questo fatto ispezionando l’ultimo esempio usando i developer tools.


					Anche se abbiamo creato un elemento che descrive l’intero albero della UI ad ogni tick (ogni qual volta la callback viene richiamata, nell’esempio, ogni secondo), solo il nodo testo il quale contenuto è stato modificato viene aggiornato dal DOM di React.
					Nella nostra esperienza, pensare a come la UI deve essere rappresentata in ogni momento piuttosto che pensare a come alterarla nel tempo, elimina una intera classe di bugs.
					
## CAP. 4.1.COMPONENTI E PROPS
			COMPONENTI SUDDIVIDONO LA UI
			I Componenti ti permettono di suddividere la UI (User Interface, o interfaccia utente) in parti indipendenti, riutilizzabili e di pensare ad ognuna di esse in modo isolato. Questa pagina offre una introduzione al concetto dei componenti. Puoi trovare invece informazioni dettagliate nella API di riferimento dei componenti.
			SONO FUNZIONE DI JAVASCRIPT
			Concettualmente, i componenti sono come funzioni JavaScript: 
				- accettano in input dati arbitrari (sotto il nome di “props”) e 
				- ritornano elementi React che descrivono cosa dovrebbe apparire sullo schermo.

		4.1.FUNZIONI E CLASSI COMPONENTE

			CREO IL COMPONENTE CON LA FUNZIONE
				Il modo più semplice di definire un componente è quello di scrivere una funzione JavaScript:
	
						es. di componente
								function Ciao(props) {
										return <h1>Ciao, {props.nome}</h1>;
										}
	
				Questa funzione è un componente React valido in quanto accetta un oggetto parametro contenente dati sotto forma di una singola 
					“props” (che prende il nome da “properties” in inglese, ossia “proprietà”) 
				che è un oggetto parametro avente dati al suo interno e ritorna un elemento React. 
	
				Chiameremo questo tipo di componenti “componenti funzione” perché sono letteralmente funzioni JavaScript.

			CREO IL COMPONENTE CON LA CLASSE ES6
				Puoi anche usare una classe ES6 per definire un componente:

				class Ciao extends React.Component {
						render() {
						return <h1>Ciao, {this.props.nome}</h1>;
						}
						}

			I due componenti appena visti sono equivalenti dal punto di vista di React.

			Le Classi e i Componenti Funzione hanno funzionalità aggiuntive che verranno discusse in dettaglio nelle prossime sezioni.

		4.2.RENDERIZZARE UN COMPONENTE
			ELEMENTO REACT
				In precedenza, abbiamo incontrato elementi React che rappresentano tags DOM:
						const elemento = <div />;

			ELEMENTO PERSONALIZZATO
				Comunque, gli elementi possono rappresentare anche componenti definiti dall’utente:
						const elemento = <Ciao nome="Sara" />;

			PROPS DEI COMPONENTI PERSONALIZZATI
				Quando React incontra un elemento che rappresenta un componente definito dall’utente, passa gli attributi JSX ed i figli a questo componente come un singolo oggetto. Tale oggetto prende il nome di “props”.
				Ad esempio, il codice seguente renderizza il messaggio “Ciao, Sara” nella pagina:


					//3) Il nostro componente Ciao ritorna un elemento <h1>Ciao, Sara</h1> come risultato.
						function Ciao(props) {
								return <h1>Ciao, {props.nome}</h1>;
								}
								
							//4) React DOM aggiorna efficientemente il DOM per far sì che contenga <h1>Ciao, Sara</h1>.
								const root = ReactDOM.createRoot(document.getElementById('root'));

								// 2) React chiama a sua volta il componente Ciao con {nome: 'Sara'} passato in input come props.

									const elemento = <Ciao nome="Sara" />;
								
								//1) Richiamiamo root.render() con l’elemento <Ciao nome="Sara" />.
									root.render(elemento);

				ATTENZIONE AI TUOI COMPONENTI
						Nota Bene: Ricordati di chiamare i tuoi componenti con la prima lettera in maiuscolo.

						React tratta i componenti che iniziano con una lettera minuscola come normali tags DOM. per esempio, <div /> rappresenta un tag HTML div, <Ciao /> rappresenta invece un componente e richiede Ciao all’interno dello scope.
		4.3.COMPORRE COMPONENTI
			I componenti possono far riferimento ad altri componenti nel loro output. Ciò permette di utilizzare la stessa astrazione ad ogni livello di dettaglio. Un bottone, un form, una finestra di dialogo, una schermata: nelle applicazioni React, tutte queste cose di solito sono espresse come componenti.

			Per esempio, possiamo creare un componente App che renderizza Ciao tante volte:
				es
					function Ciao(props) {
						return <h1>Ciao, {props.nome}</h1>;
						}
						
						function App() {
						return (
						<div>
							<Ciao nome="Sara" />
							<Ciao nome="Cahal" />
							<Ciao nome="Edite" />
						</div>
						);
						}
			Normalmente, le nuove applicazioni React hanno un singolo componente chiamato App al livello più alto che racchiude tutti gli altri componenti. Ad ogni modo, quando si va ad integrare React in una applicazione già esistente, è bene partire dal livello più basso e da piccoli componenti come ad esempio Bottone procedendo da lì fino alla cima della gerarchia della vista.
		4.4.ESTRARRE COMPONENTI
			ATTENZIONE_IL_PROGETTO_NON_FUNZIONA
				Note... ATTENZIONE NON FUNZIONA IL PROGETTO??
				Non aver paura di suddividere i componenti in componenti più piccoli.
				Ad esempio, considera questo componente Commento:
					ES.COMPLETO
						function Commento(props) {
								return (
								<div className="Commento">
									<div className="InfoUtente">
									<img className="Avatar"
									src={props.autore.avatarUrl}
									alt={props.autore.nome}
									/>
									<div className="InfoUtente-nome">
									{props.autore.nome}
									</div>
									</div>
									<div className="Commento-testo">
									{props.testo}
									</div>
									<div className="Commento-data">
									{formatDate(props.data)}
									</div>
								</div>
								);
								}
				Esso accetta come props: autore (un oggetto), testo (una stringa) e data (sotto forma di oggetto Date) al fine di renderizzare un commento in un sito di social media, come Facebook.

				Un componente scritto in quel modo, con codice molto annidato, è difficile da modificare. Per lo stesso motivo, non si possono riutilizzare con facilità parti dello stesso. Procediamo quindi ad estrarre qualche componente.

				Per cominciare, estraiamo Avatar:
							function Avatar(props) {
									return (
									<img className="Avatar"
										src={props.utente.avatarUrl}
										alt={props.utente.nome}
									/>
									);
									}
				Avatar non ha bisogno di sapere che viene renderizzato all’interno di un Commento. Ecco perché abbiamo dato alla sua prop un nome più generico: utente al posto di autore.

				Consigliamo di dare il nome alle props dal punto di vista del componente piuttosto che dal contesto in cui viene usato.

				Adesso possiamo semplificare un po’ il componente Commento:

						function Commento(props) {
										return (
										<div className="Commento">
											<div className="InfoUtente">
											<Avatar utente={props.autore} />
											<div className="InfoUtente-nome">
											{props.autore.nome}
											</div>
											</div>
											<div className="Commento-testo">
											{props.testo}
											</div>
											<div className="Commento-data">
											{formatDate(props.data)}
											</div>
										</div>
										);
										}
				Andiamo ora ad estrarre il componente InfoUtente che renderizza un Avatar vicino al nome dell’utente:
						function InfoUtente(props) {
							return (
							<div className="InfoUtente">
								<Avatar utente={props.utente} />
								<div className="InfoUtente-nome">
								{props.utente.nome}
								</div>
							</div>
							);
							}

				Ciò ci permette di semplificare Commento ancora di più:

						function Commento(props) {
									return (
									<div className="Commento">
										<InfoUtente utente={props.autore} />
										<div className="Commento-testo">
										{props.testo}
										</div>
										<div className="Commento-data">
										{formatDate(props.data)}
										</div>
									</div>
									);
									}

				Estrarre componenti può sembrare un’attività pesante ma avere una tavolozza di componenti riutilizzabili ripaga molto bene nelle applicazioni più complesse. Una buona regola da tenere a mente è che se una parte della tua UI viene usata diverse volte (Bottone, Pannello, Avatar) o se è abbastanza complessa di per sé (App, StoriaFeed, Commento), allora questi componenti sono buoni candidati per essere estratti come componenti separati.
		4.5.Le PROPS SONO IN SOLA LETTURA
			PROPS PURE
				Ogni volta che dichiari un componente come funzione o classe, non deve mai modificare le proprie props. Considera la funzione somma:
						function somma(a, b) {
							return a + b;
							}
				Funzioni di questo tipo vengono chiamate “pure” perché non provano a cambiare i propri dati in input, ritornano sempre lo stesso risultato a partire dagli stessi dati in ingresso.
				Al contrario, la funzione seguente è impura in quanto altera gli input:
						function preleva(conto, ammontare) {
						conto.totale -= ammontare;
						}
				React è abbastanza flessibile ma ha una sola regola molto importante:

			ATTENZIONE
				Tutti i componenti React devono comportarsi come funzioni pure rispetto alle proprie props.
				Ovviamente, le UI delle applicazioni sono dinamiche e cambiano nel tempo. Nella prossima sezione, introdurremo il nuovo concetto di “stato”. Lo stato permette ai componenti React di modificare il loro output nel tempo in seguito ad azioni dell’utente, risposte dalla rete (API) e qualsiasi altra cosa possa far renderizzare un output diverso di volta in volta, ciò avviene senza violare questa regola molto importante.
## CAP. 5.1.STATE E LIFECYCLE (METODI DEL CICLO DI VITA).
		
					@5.1.STATE.E.LIFECYCLE
		5.1.GENERALE
				Questa pagina introduce il concetto di state (stato) e lifecycle (ciclo di vita) in un componente React. Puoi trovare un riferimento dettagliato alle API dei componenti vedi qui.
				5.1.1.RENDERE IL COMPONENTE CLOCK RIUTILIZZABILE

					Considera l’esempio dell’orologio di una delle sezioni precedenti. In Renderizzare Elementi, abbiamo appreso solamente un modo per aggiornare la UI. Chiamiamo root.render() per cambiare l’output renderizzato:
							VECCHIA_PROCEDURA CON ROOT
								const root = ReactDOM.createRoot(document.getElementById('root'));
									function tick() {
									const element = (
									<div>
										<h1>Ciao, mondo!</h1>
										<h2>Sono le {new Date().toLocaleTimeString()}.</h2>
									</div>
									);
									root.render(element);
									}
									
									setInterval(tick, 1000);
							NUOVA_PROCEDURA
								Possiamo iniziare incapsulando l’aspetto dell’orologio:

							LE OPERAZIONI per trasformare una funzione in una classe soo le seguenti:
								
								01).CREATO_LA_CLASSE_CLOCK
								Viene creata una classe affinche si possa avere al su interno l'implementazione
								il metodo Clock della funzione, e che quindi si aggiorni in modo automatico
								
								nel file onomino .tsx. quindi ora clock è definito in una classe e  non in
								una funzione. In questo modo si ha l'aggiornamento della UI e quindi
								deve essere implementato lo STATO (state).
								Lo STATO = è simile alla props ma è PRIVATO  E VIENE CONTROLLATTO COMPLETAMENTE
								DAL COMPONENTE.
								
								02)_Aggiungi_Render
								un singolo metodo vuoto chiamato render().
								
								03)_Aggiungi_CorpoDellaFunzioneInReturn
									il corpo della funzione viene inserito nel metodo render della classe
								
								04)_Sostituisci_props_con_This.props
									infatti la vecchia istruzione che si trovava nella funzione
										props.date.toLocaleTimeString()
									viene sostituita con
										this.props.date.toLocaleTimeString()
										VECCHIO =  <h2>Sono le {props.date.toLocaleTimeString()}.</h2>
										NUOVO   =  <h2>Sono le {this.props.date.toLocaleTimeString()}.</h2>
								
									CONCLUSIONE
										Clock è ora definito da una classe, invece che da una funzione.
										Il metodo render viene invocato ogni volta che si verifica un aggiornamento,
										ma finché renderizziamo <Clock /> nello stesso nodo del DOM, verrà utilizzata
										un’unica istanza della classe Clock. Questo ci consente di utilizzare funzionalità
										aggiuntive come il local state e i metodi del lifecycle del componente.

						CODICE_DEFINITIVO_DEL_TUTORIAL
							const root = ReactDOM.createRoot(document.getElementById('root'));
										
										class Clock extends React.Component {
										render() {
										return (
											<div>
											<h1>Hello, world!</h1>
											<h2>It is {this.props.date.toLocaleTimeString()}.</h2>
											</div>
										);
										}
										}
										
										function tick() {
										root.render(<Clock date={new Date()} />);
										}
										
										setInterval(tick, 1000);
		5.2.CONVERTIRE UNA FUNZIONE IN UNA CLASSE
					Puoi convertire un componente funzione come Clock in una classe in cinque passaggi:
						
						1) Crea una classe ES6, con lo stesso nome, che estende React.Component.
						2) Aggiungi un singolo metodo vuoto chiamato render().
						3) Sposta il corpo della funzione all’interno del metodo render().
						4) Sostituisci props con this.props nel corpo del metodo render().
						5) Rimuovi la dichiarazione della funzione rimasta vuota.
								ES.
									class Clock extends React.Component {
										render() {
										return (
											<div>
											<h1>Ciao, mondo!</h1>
											<h2>Sono le {this.props.date.toLocaleTimeString()}.</h2>
											</div>
										);
										}
										}
					Clock è ora definito da una classe, invece che da una funzione.

					Il metodo render viene invocato ogni volta che si verifica un aggiornamento, ma finché renderizziamo <Clock /> nello stesso nodo del DOM, verrà utilizzata un’unica istanza della classe Clock. Questo ci consente di utilizzare funzionalità aggiuntive come il local state e i metodi del lifecycle del componente.
		5.3.AGGIUNGERE IL LOCAL STATE AD UNA CLASSE
					Sposteremo date dalle props allo state in tre passaggi:
						1) Sostituisci this.props.date con this.state.date nel metodo render():
							ES.
								class Clock extends React.Component {
										render() {
										return (
											<div>
											<h1>Ciao, mondo!</h1>
											<h2>Sono le {this.state.date.toLocaleTimeString()}.</h2>
											</div>
										);
										}
										}
						2) Aggiungi un costruttore di classe che assegna il valore iniziale di this.state:
							ES
								class Clock extends React.Component {
									//Nota come passiamo props al costruttore di base:
									constructor(props) {
									super(props);
									this.state = {date: new Date()};
									}
									
									render() {
									return (
										<div>
										<h1>Ciao, mondo!</h1>
										<h2>Sono le {this.state.date.toLocaleTimeString()}.</h2>
										</div>
									);
									}
									}

					I componenti classe dovrebbero sempre chiamare il costruttore base passando props come argomento.
					Rimuovi la prop date dall’elemento <Clock />:
							ES.
								da questo
									 <h2>Sono le {this.props.date.toLocaleTimeString()}.</h2>

								 a questo
									  <h2>Sono le {this.state.date.toLocaleTimeString()}.</h2>


				  RISULTATO FINALE:
						class Clock extends React.Component {
								constructor(props) {
								super(props);
								this.state = {date: new Date()};
								}
								
								render() {
								return (
									<div>
									<h1>Ciao, mondo!</h1>
									<h2>Sono le {this.state.date.toLocaleTimeString()}.</h2>
									</div>
								);
								}
								}
								
								const root = ReactDOM.createRoot(document.getElementById('root'));
								root.render(<Clock />);
		5.5.AGGIUNGERE METODI DI LIFECYCLE AD UNA CLASSE
				Nota
					@RILASCIARE.LE.RISORSE = Nelle applicazioni con molti componenti, è molto importante rilasciare le risorse occupate dai componenti quando questi vengono distrutti.
					Nel nostro caso, vogliamo impostare un timer ogni volta che Clock è renderizzato nel DOM per la prima volta. Questo è definito “mounting” (“montaggio”) in React.
					Vogliamo anche cancellare il timer ogni volta che il DOM prodotto da Clock viene rimosso. Questo è definito “unmounting” (“smontaggio”) in React.
					Possiamo dichiarare alcuni metodi speciali nel componente classe per eseguire del codice quando il componente viene montato e smontato:

					ES.
						import React from "react";
								
								export class ClockRenderizzato extends React.Component {
								private state: { date: Date };
								private timerID: number;
								private   DiMount=toString();
								
												constructor(props) {
													super(props);
													//Il nuovo metodo utilizzerà this.setState() per pianificare gli aggiornamenti al local state del componente
													this.state = {date: new Date()};
												}
								
												//metodo creato automaticamente
												private setState(param: { date: Date }) {
								
								
												}
								
												//Il metodo componentDidMount() viene eseguito dopo che l’output
								
												// del componente è stato renderizzato nel DOM. È un buon punto in cui impostare un timer:
												////@METODI@CICLO@DI@VITA@LIFECICLE
												componentDidMount() {
													let DiMount = "salviamo l’ID del timer direttamente in this (this.timerID)."
								
													this.timerID = setInterval(
														() => this.tick(),
														1000
													);
												}
								
												// cancellare il timer nel metodo del lifecycle componentWillUnmount():
												//@METODI@CICLO@DI@VITA@LIFECICLE@CANCELLARE@TIME
								
												componentWillUnmount() {
													clearInterval(this.timerID);
												}
								
												/*Infine, implementeremo un metodo chiamato tick() che verrà invocato dal componente Clock ogni secondo.
												Il nuovo metodo utilizzerà this.setState() per pianificare gli aggiornamenti al local state del componente:
												*/
								
												tick() {
													this.setState({
														date: new Date()
													});
												}
								
												render() {
													return (
														<div>
														<h1>CLASSE CLOCK RENDERIZATO: Ciao, mondo!</h1>
														<h2>Sono le {this.state.date.toLocaleTimeString()}.
								
														</h2>
								
								
														</div>
													);
												}
								
								
												}




					Questi metodi sono chiamati “metodi del lifecycle” (metodi del ciclo di vita).
					Il metodo componentDidMount() viene eseguito dopo che l’output del componente è stato renderizzato nel DOM. È un buon punto in cui impostare un timer

					Ricapitoliamo velocemente quello che sta succedendo e l’ordine con cui i metodi sono invocati:
							
							1 Quando <Clock /> viene passato a root.render(), React invoca il costruttore del componente Clock. Dal momento che Clock ha bisogno di mostrare l’ora corrente, inizializza this.state con un oggetto che include l’ora corrente. In seguito, aggiorneremo questo state.
							2 In seguito, React invoca il metodo render() del componente Clock. Questo è il modo in
							cui React apprende cosa dovrebbe essere visualizzato sullo schermo. React si occupa di aggiornare il DOM in modo da farlo corrispondere all’output della renderizzazione di Clock.
							
							3 Quando l’output della renderizzazione di Clock viene inserito nel DOM, React invoca il
							metodo del lifecycle componentDidMount(). Al suo interno, il componente Clock chiede al browser di impostare un timer con cui invocare il metodo tick() del componente una volta al secondo.
							
							4 Ogni secondo, il browser invoca il metodo tick(). Al suo interno, il componente Clock
							pianifica un aggiornamento della UI invocando setState() con un oggetto che contiene la nuova ora corrente. Grazie alla chiamata a setState(), React viene informato del fatto che lo state è cambiato e invoca di nuovo il metodo render() per sapere che cosa deve essere mostrato sullo schermo. Questa volta, this.state.date nel metodo render() avrà un valore differente, di conseguenza l’output della renderizzazione includerà l’orario aggiornato. React aggiorna il DOM di conseguenza.
							
							5 Se il componente Clock dovesse mai essere rimosso dal DOM, React invocherebbe il metodo
							del lifecycle componentWillUnmount() ed il timer verrebbe cancellato.
		5.6.UTILIZZARE CORRETTAMENTE LO STATO
				5.5.1.Note
					Ci sono tre cose che devi sapere a proposito di setState().
					
					5.5.2.Non Modificare lo Stato Direttamente

						1) NON SI DEVE MODIFICARE LO STATO DIRETTAMENTE MA SOLO NEL COSTRUTTORE
							Non Modificare lo Stato Direttamente
							Per esempio, questo codice non farebbe ri-renderizzare un componente:
								// Sbagliato --- MODIFICA LO STATO
									this.state.comment = 'Hello';
	
							Devi invece utilizzare setState():
								// Giusto
									this.setState({comment: 'Hello'});
							L’unico punto in cui puoi assegnare direttamente un valore a this.state è nel costruttore.


					5.5.3.Gli Aggiornamenti di Stato Potrebbero Essere Asincroni
				
						2) GLI AGGIORNAMENTI DI STATO POTREBBERO ESSERE ASINCRONI
							React potrebbe accorpare più chiamate a setState() in un unico aggiornamento per migliorare la performance.
							ATTENZIONE AGGIORNAMENTO ASINCRONO VALORI NON CORRETI = Poiché this.props e this.state potrebbero essere aggiornate in modo asincrono, non dovresti basarti sul loro valore per calcolare lo stato successivo.
							Ad esempio, questo codice potrebbe non riuscire ad aggiornare correttamente il contatore:
								// Sbagliato + è asincrono
									this.setState({
									counter: this.state.counter + this.props.increment,
									});

							UTILIZZARE LA II FORMA DI SETSTATE CHE ACCETTA INPUT 
								Per effettuare correttamente questa operazione, bisogna utilizzare una seconda forma di setState() che accetta in input una funzione invece che un oggetto. Quella funzione riceverà come primo argomento lo stato precedente e come secondo argomento le proprietà, aggiornate al momento in cui l’aggiornamento di stato è applicato:
	
									// Giusto riceve un INPUT = state = stato precedente + props = proprieta aggiornate
										this.setState((state, props) => ({
										counter: state.counter + props.increment
										}));
								Qui abbiamo utilizzato una arrow function, ma puoi utilizzare anche una funzione tradizionale:
								// Giusto
										this.setState(function(state, props) {
										return {
										counter: state.counter + props.increment
										};
										});
					5.5.5.Gli Aggiornamenti di Stato Vengono Applicati Tramite Merge
						3) GLI AGGIORNAMENTI DI STATO VENGONO APPLICATI TRAMITE MERGE
								SetSta - MERGE DELL'OGGETTO
									Quando chiami setState(), React effettua il merge dell’oggetto che fornisci nello state corrente.
									Ad esempio, il tuo state potrebbe contenere molte variabili indipendenti:
										  constructor(props) {
											    super(props);
											    this.state = {
												//state con 2 variabili indipendenti
												posts: [],
												comments: []
											    };
											  }

							AGGIORNAMENTO INDIPENDENTE
								A questo punto puoi aggiornarle indipendentemente con invocazioni separate del metodo setState():
										  componentDidMount() {
											    fetchPosts().then(response => {
												this.setState({
												  posts: response.posts
												});
											    });

											    fetchComments().then(response => {
												this.setState({
												  comments: response.comments
												});
											    });
											  }
								Quello che viene effettuato è uno “shallow merge”, quindi this.setState({comments}) lascia intatto this.state.posts, ma sostituisce completamente this.state.comments.

					5.6.I DATI FLUISCONO VERSO IL BASSO
				  
						Né i componenti genitori né i componenti figli possono sapere se un certo componente è “stateful” o “stateless” (cioè se è dotato o meno di stato) e non dovrebbero preoccuparsi del fatto di essere definiti come funzione o come classe.

						Questa è la ragione per cui lo stato è spesso definito locale o incapsulato. Esso non è accessibile a nessun componente a parte quello a cui appartiene

						COMPONENTE CHE PASSA LO STATO AI SUOI FIGLI
							Un componente potrebbe decidere di passare il suo stato ai componenti figli sotto forma di props:
									<FormattedDate date={this.state.date} />
							Il componente FormattedDate riceve date nelle sue props e non può sapere se viene dallo state di Clock, dalle proprietà di Clock o se è stato inserito a mano:
									function FormattedDate(props) {
											return <h2>Sono le {props.date.toLocaleTimeString()}.</h2>;
											}
						DATI TOP DOW
							Questo è spesso definito flusso di dati “top-down” (dall’alto verso il basso) o “unidirezionale”. In questo paradigma, lo stato è sempre posseduto da uno specifico componente, e tutti i dati o la UI derivati da quello stato possono influenzare solamente i componenti “più in basso” nell’albero

							Se immagini un albero di componenti come una cascata di props, puoi pensare allo stato di ciascun componente come a una sorgente d’acqua aggiuntiva che si unisce alla cascata in un punto qualsiasi e flusice verso il basso insieme al resto dell’acqua.

							Per mostrare che tutti i componenti sono davvero isolati, possiamo creare un componente App che renderizza tre <Clock>:
										function App() {
															return (
															<div>
																<Clock />
																<Clock />
																<Clock />
															</div>
															);
															}
							Ciascun Clock imposta il proprio timer e si aggiorna indipendentemente dagli altri.
								
								Nelle applicazioni React, il fatto che un componente sia stateful o stateless è considerato un dettaglio implementativo di quel componente, che potrebbe cambiare nel tempo. Puoi utilizzare componenti stateless all’interno di componenti stateful, e viceversa.
## CAP. 6.1.GESTIONE DEGLI EVENTI


					Nota
						La gestione degli eventi negli elementi React è molto simile alla gestione degli eventi negli elementi DOM. Vi sono alcune differenze sintattiche:

					EVENTI DICHIARATI CON CAMELCASE	
						Gli eventi React vengono dichiarati utilizzando camelCase, anziché in minuscolo.
					IL GESTORE EVENTI VIENE PASSATO COME FUNZIONE
						In JSX, il gestore di eventi (event handler) viene passato come funzione, piuttosto che stringa.

							
							Per esempio, l’HTML:
									//hevent handler come stringa
									<button onclick="attivaLasers()">
									Attiva Lasers
									</button>
							è leggermente diverso in React:
								//EVENTO camelcas onClick + event handler come funzione
								<button onClick={attivaLasers}>
											Attiva Lasers
											</button>

					NO RETURN FALSE
							Un’altra differenza è che, in React, non è possibile ritornare false per impedire il comportamento predefinito. Devi chiamare preventDefault esplicitamente. Ad esempio, in un semplice codice HTML per impedire il comportamento predefinito del form nel submit, potresti scrivere
										//HTML
										<form onsubmit="console.log('Hai cliccato Invia.'); return false">
												<button type="submit">Invia</button>
												</form>

										In React, invece sarebbe:
												function Form() {
													function handleSubmit(e) {
														//CHIAMATA  a preventDefault
													e.preventDefault();
													console.log('Hai cliccato Invia.');
													}
													
													return (
													<form onSubmit={handleSubmit}>
														<button type="submit">Invia</button>
													</form>
													);
													}

							EVENTI SINTETICI DI REACT
								In questo esempio, il parametro e è un evento sintetico (synthetic event). React definisce questi eventi sintetici in base alle specifiche W3C, quindi non hai bisogno di preoccuparti della compatibilità tra browser. Gli eventi React non funzionano esattamente allo stesso modo degli eventi nativi. Consulta la guida di riferimento SyntheticEvent per saperne di più.

								Usando React, in generale, non dovresti aver bisogno di chiamare addEventListener per aggiungere listeners ad un elemento DOM dopo la sua creazione. Invece, basta fornire un listener quando l’elemento è inizialmente renderizzato.

								Quando definisci un componente usando una classe ES6, un pattern comune è usare un metodo della classe come gestore di eventi. Ad esempio, questo componente Interruttore renderizza un pulsante che consente all’utente di alternare gli stati “Acceso” e “Spento”:


											class Interruttore extends React.Component {
														constructor(props) {
														super(props);
														this.state = {acceso: true};
														
														// Necessario per accedere al corretto valore di `this` all'interno della callback
														//ATTENZINE ad utilizzare bind per l'associazione e passarlo a onclick??
														this.handleClick = this.handleClick.bind(this);
														}
														
														handleClick() {
														this.setState(prevState => ({
															acceso: !prevState.acceso
														}));
														}
														
														render() {
														return (
															<button onClick={this.handleClick}>
															{this.state.acceso ? 'Acceso' : 'Spento'}
															</button>
														);
														}
														}

								NO BOUND = Fai attenzione al valore di this nelle callback JSX. In JavaScript, i metodi delle classi non sono associati (bound) di default. Se dimentichi di applicare bind a this.handleClick e di passarlo a onClick, this sarà undefined quando la funzione verrà effettivamente chiamata.
								Questo non è un comportamento specifico in React: è parte di come funzionano le funzioni in JavaScript. In generale, se ti riferisci ad un metodo senza () dopo di esso, per esempio onClick = {this.handleClick}, potresti aver bisogno di applicare bind a quel metodo.

								1) ALTERNATIVA A BIND E' LA SINTASSI DELLA PROPRIETA DELLE CLASSI = Se usare la chiamata al metodo bind ti sembra troppo, ci sono due alternative a disposizione. Puoi usare la sintassi proprietà pubbliche delle classi, per associare correttamente le callback:

										class LoggingButton extends React.Component {
														//SINTASSI DELLE PROPRIETA PUBBLICHE DELLE CLASSI 
														//ed associare il callback
														// This syntax ensures `this` is bound within handleClick.
														handleClick = () => {
														console.log('this is:', this);
														};
														render() {
														return (
															<button onClick={this.handleClick}>
															Clicca qui
															</button>
														);
														}
														}

								Questa sintassi è abilitata nelle impostazioni predefinite di Create React App.

								2) ALTERNATIVA LA FUNZIONE A FRECCIA
									Questa sintassi è abilitata nelle impostazioni predefinite di Create React App.

											class LoggingButton extends React.Component {
													handleClick() {
													console.log('Il valore di `this` è: ', this);
													}
													
													render() {
													// Questa sintassi garantisce che `this` sia associato correttamente all'interno di handleClick
													return (
														<button onClick={() => this.handleClick()}>
														Clicca qui
														</button>
													);
													}
													}
									DIFETTO DELLA FUNZIONE A FRECCIA
										Il problema con questa sintassi è che viene creata una callback diversa ogni volta che LoggingButton viene renderizzato. Nella maggior parte dei casi, non vi sono problemi. Tuttavia, se questa callback viene passata come prop a componenti inferiori, tali componenti potrebbero eseguire un ulteriore re-renderizzamento. In generale, vi consigliamo di utilizzare bind nel costruttore o la sintassi delle proprietà pubbliche nelle classi, per evitare questo tipo di problema di prestazioni.

		6.1.2.Passare Argomenti ai Gestori di Eventi

							All’interno di un ciclo, è comune avere l’esigenza di passare un parametro aggiuntivo ad un gestore di eventi. Ad esempio, avendo id come l’identificativo della riga, le seguenti dichiarazioni sarebbero entrambe valide:
								//con funzione a freccia: e = evento passato
								in modo esplicito + id = parametro
								<button onClick={(e) => this.deleteRow(id, e)}>Elimina riga</button>
								// con bind e = è sempre il secondo argomento passato in modo automatico
								<button onClick={this.deleteRow.bind(this, id)}>Elimina riga</button>

									Le due linee di codice precedenti sono equivalenti e utilizzano le funzioni a freccia e Function.prototype.bind rispettivamente.


							In entrambi i casi, l’argomento 
								e = che rappresenta l’evento React, 
							verrà passato come secondo argomento dopo l’ID. 

							Con la funzione a freccia, devi passarlo esplicitamente, mentre con bind qualsiasi altro argomento viene passato automaticamente.
## CAP. 7.1.RENDERIZZAZIONE CONDIZIONALE
				Note
						In React, puoi creare componenti distinti che incapsulano il funzionamento di cui hai bisogno. Quindi, puoi renderizzarne solo alcuni, a seconda dello stato della tua applicazione.

						La renderizzazione condizionale in React funziona nello stesso modo in cui funzionano le condizioni in JavaScript. Puoi perciò usare operatori come if o l’operatore condizionale per creare elementi che rappresentano lo stato corrente cosicché React possa aggiornare la UI di conseguenza.
								ES. 2 COMPONENTI
								Funzione con 2 componenti distinti che incapsulano il funzionamento.

									//f1 = utente autenticato
									function BenvenutoUtente(props) {
											return <h1>Bentornato/a!</h1>;
											}
									//f2 = ospite autenticato	
									function BenvenutoOspite(props) {
									return <h1>Autenticati, per favore</h1>;
									}

						Creiamo un componente Benvenuto che visualizza l’uno o l’altro dei componenti appena visti a seconda del fatto che l’utente sia autenticato o meno:

							ES 3 COMPONENTE che richiama l'uno o l'altro
									function Benvenuto(props) {
									  const utenteAutenticato = props.utenteAutenticato;
									  if (utenteAutenticato) {
									    return <BenvenutoUtente />;
									  }
									  return <BenvenutoOspite />;
									}

									const root = ReactDOM.createRoot(document.getElementById('root'));
									// Prova a cambiare in utenteAutenticato={true}:
									root.render(<Benvenuto utenteAutenticato={false} />);
## CAP. 8.1.LISTE E CHIAVI
		
				Note
					Prima di iniziare, rivediamo come trasformare le liste in JavaScript.
					Nel codice qui sotto, usiamo la funzione map() per prendere un array di numeri e raddoppiarne i valori. Assegniamo il nuovo array restituito da map() alla variabile lista e lo stampiamo a console:
						ES.
							//@LISTE.E.CHIAVI.01.array
						
							const numeri = [1, 2, 4, 3, 5];
							const lista = numeri.map((numero) => numero * 2);
							//@LISTE.E.CHIAVI.01.array
							//Assegniamo il nuovo array restituito da map() alla variabile lista e lo stampiamo a console:
							//con la funzione .map() prendiamo l'array di numeri e raddoppiamo i valori.
							console.log(lista);
							
							//@LISTE.E.CHIAVI.02.Trasforma.Le.Liste.in.array
							const numeri = [1, 2, 3, 4, 5];
							//Includiamo l’intero array lista all’interno di un elemento <ul>:
							const lista = numeri.map((numero) =>
								<li>{numero}</li>
							);

									
					Questo codice mostra [2, 4, 6, 8, 10] nella console.
					Trasformare array in liste di elementi con React è quasi identico. (UTILIZZARE LE PARENTESI {})
		8.2.Renderizzare Liste di Componenti
					Puoi creare liste di elementi e usarle in JSX usando le parentesi graffe {}.
					Di seguito, eseguiamo un ciclo sull’array numeri usando la funzione JavaScript map(). Ritorniamo un elemento <li> per ogni elemento dell’array. Infine, assegniamo l’array risultante a lista:
		8.3.Semplice Componente Lista
					È comune voler renderizzare liste all’interno di un componente.


					Quando esegui questo codice, appare un warning che una chiave (key) deve essere fornita per gli elementi della lista. Una “chiave” è una prop speciale di tipo stringa che devi includere quando crei liste di elementi. Discuteremo perché è importante nella prossima sezione.
		8.4.Chiavi
					Le chiavi aiutano React a identificare quali elementi sono stati aggiornati, aggiunti o rimossi. Le chiavi dovrebbero essere fornite agli elementi all’interno dell’array per dare agli elementi un’identità stabile:
							const numeri = [1, 2, 3, 4, 5];
							const lista = numeri.map((numero) =>
							//key chiave
							<li key={numero.toString()}>
							{numero}
							</li>
							);

					Il modo migliore per scegliere una chiave è utilizzare una stringa che identifichi univocamente un elemento della lista tra i suoi elementi adiacenti (siblings). L’esempio più comune è usare gli identificativi dei tuoi dati come chiavi:
							const listaArticoli = articoli.map((articolo) =>
							  <li key={articolo.id}>
							    {articolo.testo}
							  </li>
							);

					Quando non disponi di identificativi stabili per gli elementi da renderizzare, puoi assegnare l’indice dell’elemento corrente alla chiave come ultima scelta:
							const listaArticoli = articoli.map((articolo, indice) =>
							// Fallo solo se gli elementi non hanno identificativi stabili
							<li key={indice}>
							{articolo.testo}
							</li>
							);

					Non consigliamo di utilizzare gli indici per le chiavi se l’ordine degli elementi potrebbe cambiare. Potrebbe avere un impatto negativo sulle prestazioni e causare problemi con lo stato dei componenti. Leggi l’articolo di Robin Pokorny per una spiegazione approfondita sugli impatti negativi dell’uso di un indice come chiave. React utilizza gli indici come chiavi se non assegni esplicitamente una chiave per renderizzare gli elementi.
		8.5.Estrarre Componenti con Chiavi
					Le chiavi hanno senso solo nel contesto dell’array circostante.

					Per esempio, se estrai un componente Numero, dovresti mantenere la chiave sugli elementi <Numero /> nell’array piuttosto che su l’elemento <li> nel Numero stesso.

						ESEMPIO: ERRATO UTILIZZO DELLA CHIAVE
								function Numero(props) {
								const valore = props.valore;
								//SBAGLIATO NO KEY
								return (
								// Sbagliato! Non è necessario specificare la chiave qui:
								<li key={valore.toString()}>
									{valore}
								</li>
								);
								}
								
								function ListaNumeri(props) {
								const numeri = props.numeri;
								const lista = numeri.map((numero) =>
								// Sbagliato! La chiave deve essere stata specificata qui:
								<Numero valore={numero} />
								);
								return (
								<ul>
									{lista}
								</ul>
								);
								}

						ESEMPIO: CORRETTO UTILIZZO DELLA CHIAVE
							function Numero(props) {
								// Corretto! Non è necessario specificare la chiave qui:
								return <li>{props.valore}</li>;
								}
								
								//LA CHIAVE DEVE ESSERE SPECIFICATA NELL'ARRAY
								function ListaNumeri(props) {
								const numeri = props.numeri;
								const lista = numeri.map((numero) =>
								// Corretto! La chiave deve essere specificata all'interno dell'array.
								<Numero key={numero.toString()} valore={numero} />
								);
								return (
								<ul>
									{lista}
								</ul>
								);
								}
						CONCLUSIONE
							È buona regola ricordarsi che gli elementi all’interno della chiamata map() hanno bisogno di chiavi.
		8.6.Le Chiavi Devono Essere Uniche Tra Gli Elementi Adiacenti
					Chiavi usate all’interno degli array dovrebbero essere uniche tra gli elementi adiacenti. Tuttavia, non hanno bisogno di essere uniche a livello globale. Possiamo usare le stesse chiavi quando creiamo due array diversi:
							es.
								function Blog(props) {
									const sidebar = (
									<ul>
										{props.articoli.map((articolo) =>
										<li key={articolo.id}>
										{articolo.titolo}
										</li>
										)}
									</ul>
									);
									const contenuto = props.articoli.map((articolo) =>
									<div key={articolo.id}>
										<h3>{articolo.titolo}</h3>
										<p>{articolo.testo}</p>
									</div>
									);
									return (
									<div>
										{sidebar}
										<hr />
										{contenuto}
									</div>
									);
									}
									
									const articoli = [
									{id: 1, titolo: 'Ciao Mondo', testo: 'Benvenuto in imparando React!'},
									{id: 2, titolo: 'Installazione', testo: 'Puoi installare React usando npm.'}
									];
									
									const root = ReactDOM.createRoot(document.getElementById('root'));
									root.render(<Blog articoli={articoli} />);
							Prova su CodeSandbox

							Le chiavi servono a React come suggerimento, ma non vengono passate ai componenti. Se hai bisogno di quel valore nel tuo componente, passalo come prop esplicitamente con un nome diverso:
									ES		
										//In questo esempio, il componente Articolo può leggere props.id, ma non props.key.


										const contenuto = articoli.map((articolo) =>
										<Articolo
										key={articolo.id} //NON LEGGIBILE
										id={articolo.id}	//LEGGIBILE DA ARTICOLO
										titolo={articolo.titolo} />
										);
		8.7.Incorporare map() in JSX
						Nell’esempio di prima abbiamo dichiarato una variabile separata lista e l’abbiamo usata nel codice JSX:

								function ListaNumeri(props) {
										const numeri = props.numeri;
										//VARIABILE SEPARATA
										const lista = numeri.map((numero) =>
										<Numero key={numero.toString()}
												valore={numero} />
										);
										return (
										<ul>
											{lista}
										</ul>
										);
										}
## CAP. 9.1.FORMS
			Note
				Gli elementi HTML form funzionano in un modo differente rispetto agli altri elementi DOM in React, la motivazione sta nel fatto che gli elementi form mantengono naturalmente uno stato interno. Ad esempio, questo form in puro HTML accetta un singolo nome:
						ES. @9.1.FORMS
								<form>
							<label>
							Nome:
							<input type="text" name="nome" />
							</label>
							<input type="submit" value="Submit" />
							</form>	

		9.2.COMPONENTI CONTROLLATI
				@CASELLA@DI@TESTO@textArea.componenti controllati
				In HTML, gli elementi di un form come <input>, <textarea> e <select> mantengono tipicamente il proprio stato e lo aggiornano in base all’input dell’utente. In React, lo stato mutabile viene tipicamente mantenuto NELLA PROPRIETÀ STATE DEI COMPONENTI e viene poi aggiornato solo mediante setState().

				Possiamo combinare le due cose rendendo lo state in React la “singola fonte attendibile” (SSOT). Possiamo poi fare in modo che IL COMPONENTE REACT che renderizza il form, controlli anche cosa succede all’interno del form in risposta agli input dell’utente. In un form, un elemento di input il cui valore è controllato da React in questo modo viene chiamato “componente controllato”.

				Ad esempio, se vogliamo far sì che l’esempio precedente registri il nome inserito (forse in imput), possiamo riscrivere il form sotto forma di componente controllato:

					FORM COMPONENTE CONTROLLATO ES.
						class FormNome extends React.Component {
								constructor(props) {
								super(props);
								this.state = {value: ''};
								
								this.handleChange = this.handleChange.bind(this);
								this.handleSubmit = this.handleSubmit.bind(this);
								}
								
								handleChange(event) {
								this.setState({value: event.target.value});
								}
								
								handleSubmit(event) {
								alert('E\' stato inserito un nome: ' + this.state.value);
								event.preventDefault();
								}
								
								render() {
								return (
									<form onSubmit={this.handleSubmit}>
									<label>
									Nome:
									<input type="text" value={this.state.value} onChange={this.handleChange} />
									</label>
									<input type="submit" value="Submit" />
									</form>
								);
								}
								}
				
				Dato che l’attributo value viene impostato nel nostro elemento form, il valore visualizzato sarà sempre this.state.value, rendendo lo stato in React l’unica fonte di dati attendibile. Dato che la funzione handleChange viene eseguita ad ogni battitura per aggiornare lo stato di React, il valore visualizzato verrà aggiornato man mano che l’utente preme i tasti.

				Con un componente controllato, il valore dell’input viene sempre controllato dallo stato di React. Anche se ciò comporta la battitura di più codice, permette il passaggio del valore anche ad altri elementi della UI, o di resettarlo da altri event handlers.
				casella combinata creata: @9.1.FORMS.creazioneCasellaCombinata
		9.3.IL.TAG.TEXTAREA
				@CASELLA@DI@TESTO@textArea.(differenza tra Html e React)
				In HTML, l’elemento <textarea> definisce il testo in esso contenuto con i suoi elementi figli:
						<textarea>
						Nel mezzo del cammin di nostra vita
						mi ritrovai per una selva oscura
						ché la diritta via era smarrita.  - 9.3.IL.TAG.TEXTAREA@html@testo+figli
						</textarea>

				In React, invece, <textarea> utilizza l’attributo value. Per questo, un form che utilizza una <textarea> può essere scritto in modo molto simile a come verrebbe scritto se utilizzasse un semplice input di una sola riga:
				9.3.IL.TAG.TEXTAREA@react@testo+figli
					es.

						export class FormTema extends React.Component {
						constructor(props) {
							super(props);
							//Nota come this.state.value viene inizializzato nel costruttore, cosìcche la casella di testo è inizializzata con del testo al suo interno.
							this.state = {
								value: 'Per favore scrivi un tema riguardo il tuo elemento DOM preferito.'
							};
						
							this.handleChange = this.handleChange.bind(this);
							this.handleSubmit = this.handleSubmit.bind(this);
						}
						
						// I DUE EVENTI CHANGE + SUBMIT = INPUT -
						//-----------------------------------------------------------------------------//
						handleChange(event) {
							this.setState({value: event.target.value});
						}
						handleSubmit(event) {
							alert('Un tema è stato inviato: ' + this.state.value);
							event.preventDefault();
						}
						
						//-----------------------------------------------------------------------------//
						
						render() {
							return (
								//qui dovrebbe esserci la casella di testo
								<form onSubmit={this.handleSubmit}>
								<label>
									Tema:
									{/*reacat utilizza l'attributo value e quindi il form verrebbe scritto come un form che
									riceve un imput*/}
									<textarea value={this.state.value} onChange={this.handleChange} />
								</label>
								<input type="submit" value="Submit" />
								</form>
							);
						}
						}
				9.4.IL.TAG.SELECT

						In HTML, <select> crea una lista a discesa. Per esempio, questo HTML crea una lista a discesa di gusti:
								<select>
								  <option value="pompelmo">Pompelmo</option>
								  <option value="limone">Limone</option>
								  <option selected value="cocco">Cocco</option>
								  <option value="mango">Mango</option>
								</select>

						Nota come l’opzione Cocco venga preselezionata grazie all’attributo selected. React, piuttosto che usare l’attributo selected, usa l’attributo value dell’elemento radice select. Ciò facilita le cose in un componente controllato in quanto bisogna aggiornare lo stato in un posto solo. Ad esempio:
		9.4.TAG.SELECT
				In HTML, <select> crea una lista a discesa. Per esempio, questo HTML crea una lista a discesa di gusti:  @9.4.TAG.SELECT.(esempio lista a discesa HTML)
					<select>
					  <option value="pompelmo">Pompelmo</option>
					  <option value="limone">Limone</option>
					  <option selected value="cocco">Cocco</option>
					  <option value="mango">Mango</option>
					</select>

				Nota come l’opzione Cocco venga preselezionata grazie all’attributo selected. 

				React, piuttosto che usare l’attributo selected, usa l’attributo value dell’elemento radice select. Ciò facilita le cose in un componente controllato in quanto bisogna aggiornare lo stato in un posto solo. Ad esempio:

						import React from "react";

							class FormGusti extends React.Component {
							constructor(props) {
								super(props);
								this.state = {value: 'cocco'};
							
								this.handleChange = this.handleChange.bind(this);
								this.handleSubmit = this.handleSubmit.bind(this);
							}
							
							handleChange(event) {
								this.setState({value: event.target.value});
							}
							
							handleSubmit(event) {
								alert('Il tuo gusto preferito è: ' + this.state.value);
								event.preventDefault();
							}
							
							render() {
								//@9.4.TAG.SELECT.(esempio REACT che costruisce un COMPONENTE CONTROLLATO)
								return (
									<form onSubmit={this.handleSubmit}>
									<label>
										Seleziona il tuo gusto preferito:
										<select            value={this.state.value}
													onChange={this.handleChange}>
							
											<option value="pompelmo">Pompelmo</option>
											<option value="limone">Limone</option>
											<option value="cocco">Cocco</option>
											<option value="mango">Mango</option>
										</select>
									</label>
									<input type="submit" value="Submit" />
									</form>
								);
							}
							}



				Ricapitolando, ciò fa sì che <input type="text">, <textarea> e <select> funzionino in modo molto simile - tutti accettano un attributo value che puoi utilizzare per implementare un componente controllato.
					@9.4.TAG.SELECT.(text+texare+select sono simili accetto un attributo value)
					@CASELLA@COMBINATA@SELEZIONE@CMB.01

				Nota bene
				Puoi passare un array nell’attributo value, permettendoti di selezionare opzioni multiple in un tag select: @9.4.TAG.SELECT.(nell'attributo value con un array = opzioni multiple)
						ES @OPZIONI.MULTIPLE@REACT
							<select multiple={true} value={['B', 'C']}>
		9.5.IL.TAG.INPUT.FILE
				In HTML, un <input type="file"> permette all’utente di selezionare uno o più file da disco e di inviarli al server o manipolarli in JavaScript mediante le File API.
						@9.5.IL.TAG.INPUT.FILE_(input file con type= seleziona file ed invio al server)
						@GESTIONE@FILE
							<input type="file" />
				Dato che il suo valore è in sola-lettura, è un componente non controllato in React. Riprenderemo il discorso riguardo questo ed altri componenti non controllati in seguito.
		9.6.GESTIONE.DI.INPUT.MULTIPLI
				Quando devi gestire diversi elementi input, puoi aggiungere un attributo name ad ognuno di essi e far sì che la funzione handler controlli cosa fare in base al valore di event.target.name.
					@9.6.GESTIONE.DI.INPUT.MULTIPLI.(attributo name gestione diversi elementi)
					@ATTRIBUTO@NAME@handler@controlli

							/*CLASSE PRENOTAZIONE
									@9.6.GESTIONE.DI.INPUT.MULTIPLI.codice.(classe name di prenotazione)
							*/

							class Prenotazione extends React.Component {
									  	constructor(props) {
									    	super(props);
									    	this.state = {
									      	presente: true,
									      	numeroOspiti: 2,
									    	};
											
											//evento change
									    	this.handleInputChange = this.handleInputChange.bind(
									      	this
									    	);
									  	}
										
									  	/*Quando devi gestire diversi elementi input, puoi aggiungere un attributo name ad ognuno di essi e far sì che la funzione handler controlli cosa fare in base al valore di event.target.name.
									  	 setState() unisce uno stato parziale nello stato corrente automaticamente,*/

									  	handleInputChange(event) {
									    	const target = event.target;
									    	const value = target.type === 'checkbox' ? target.checked : target.value;
									    	const name = target.name;
										
									    	this.setState({
									      	[name]: value,
									    	});
									  	}
									  	render() {
									    	return (
									      	<form>
									        	<label>
									          	Sarà presente:
									          	<input
									            	name="presente"
									            	type="checkbox"
									            	checked={this.state.presente}
									            	onChange={this.handleInputChange}
									          	/>
									        	</label>
									        	<br />
									        	<label>
									          	Numero di ospiti:
									          	<input
									            	name="numeroOspiti"
									            	type="number"
									            	value={this.state.numeroOspiti}
									            	onChange={this.handleInputChange}
									          	/>
									        	</label>
									      	</form>
									    	);
									  	}
										}

							Nota come abbiamo utilizzato la sintassi @ES6 computed property name (“nome proprietà calcolato”) per aggiornare la rispettiva chiave nello stato a seconda dell’attributo name dell’input:
										this.setState({
										  	[name]: value
											});
							Il che in ES5 corrisponde al codice:
										var statoParziale = {};
										statoParziale[name] = value;
										this.setState(statoParziale);

							Inoltre, dato che setState() unisce uno stato parziale nello stato corrente automaticamente, dobbiamo chiamarla con le sole parti modificate.


						9.6.1.VALORE NULL IN INPUT CONTROLLATI
							Specificare la prop value in un componente controllato fa sì che l’utente possa cambiare l’input solo quando lo desideri. Se hai specificato un value ma l’input è ancora editabile, potresti aver accidentalmente impostato value come undefined o null.

							Il codice seguente lo dimostra. (L’input è inizialmente bloccato ma diventa editabile dopo un secondo)

						9.6.2.ALTERNATIVE AI COMPONENTI CONTROLLATI
						Utilizzare componenti controllati può sembrare laborioso a volte, soprattutto perché è necessario scrivere un event handler per ogni modo in cui i tuoi dati possono cambiare e perché si deve collegare lo stato di tutti gli input a quello di un componente React. Il tutto diventa particolarmente noioso quando bisogna convertire progetti preesistenti in React, o integrare un’applicazione React con una libreria non-React. In queste situazioni, si potrebbe ricorrere ai componenti non controllati, una tecnica alternativa per implementare forms ed i relativi campi di input.
							@COMPONENTI@CONTROLLATI 
							@COMPONENTI@NON@CONTROLLATI
							@COLLEGARE.LO.STATO
							@COLLEGARE.IMPUT


							Soluzioni Chiavi In Mano
								Se stai cercando una soluzione che include la validazione dei dati, il tener traccia dei campi visitati e la sottomissione del form, Formik è una delle scelte popolari. Comunque, si basa sugli stessi principi dei componenti controllati e della gestione dello stato — ecco perché è bene essere familiari con questi concetti.
## CAP. 10.1.SPOSTARE.LO.STATO
				Note
					Raccomandiamo di spostare lo stato condiviso in alto nella gerarchia fino al loro antenato più vicino. Vediamo come questo avviene in pratica.
					
					In questa sezione creeremo un calcolatore della temperatura che calcola se l’acqua bolle ad una data temperatura.
					
					Iniziamo con un componente chiamato VerdettoEbollizione. Questo, accetta la temperatura tramite la prop celsius e ritorna che sia sufficiente a far bollire l’acqua o no:
						ES.
							function VerdettoEbollizione(props) {
									  	if (props.celsius >= 100) {
									    	return <p>L'acqua bollirebbe.</p>;
									  	}
									  	return <p>L'acqua non bollirebbe.</p>;
										}
					Successivamente, creiamo un componente chiamato Calcolatore. Esso renderizza un <input> che permette di inserire la temperatura e mantiene il suo valore in this.state.temperatura.

					Inoltre, restituisce VerdettoEbollizione per il valore di input corrente.
						ES.
							/* 10.1.SPOSTARE.LO.STATO
							*
							- */
							
							import React from "react";
							
							//con la propos calcolo se bolle o no l'acqua
							function VerdettoEbollizione(props) {
						    	if (props.celsius >= 100) {
						        	return <p>L'acqua bollirebbe.</p>;
						    	}
						    	return <p>L'acqua non bollirebbe.</p>;
							}
							
							/* CLASSE CALCOLATORE CELSIUS
						    	@passggio@parametri.con.prop @props@parametri
							
							- */
							export class Calcolatore extends React.Component {
						    	constructor(props) {
						        	super(props);
						        	//handel evento
						        	this.handleChange = this.handleChange.bind(this);
						        	//stato della temperatura tex + risultato
						        	this.state = {temperatura: ''};
						    	}
							
						    	//se cambia inposta il nuovo stato
						    	handleChange(e) {
						        	this.setState({temperatura: e.target.value});
						    	}
							
						    	render() {
						        	//variabile temperatura a cui associa lo stato
						        	const temperatura = this.state.temperatura;
						        	return (
						            	<fieldset>
						                	<legend>Inserisci la temperatura in gradi Celsius:</legend>
						                	{/*l'evento change della casella di testo @input valore,
						                  	quando inserisci il valore viene attivato il change che chiama la funzione
						                  	che imposta lo stato nuovo*/}
						                	<input
						                    	value={temperatura}
						                    	onChange={this.handleChange} />
						                	{/*chiama la funzione di controllo e riporta il calcolo e lo visualizza*/}
						                	<VerdettoEbollizione
						                    	celsius={parseFloat(temperatura)} />
						            	</fieldset>
						        	);
						    	}
							}
		10.1.AGGIUNTA DI UN SECONDO INPUT

					Il nostro nuovo requisito è che, oltre a un input in gradi Celsius, forniamo un input in gradi Fahrenheit e l’aggiornamento dei due deve essere sincronizzato.
						@II@IMPUT

					Possiamo iniziare estraendo un componente InputTemperatura da Calcolatore. Aggiungiamo una nuova prop scala ad esso che può essere "c" o "f":

						ES.
							/* 	@10.1.AGGIUNTA.DI.UN.SECONDO.INPUT_(Codice sviluppato)

												Il nostro nuovo requisito è che, oltre a un input in gradi Celsius, forniamo un input in gradi Fahrenheit e l’aggiornamento dei due deve essere sincronizzato.
													@II@IMPUT
												Possiamo iniziare estraendo un componente InputTemperatura da Calcolatore. Aggiungiamo una nuova prop scala ad esso che può essere "c" o "f":


							*
							* */

							import React from "react";

							const scale = {
							    c: 'Celsius',
							    f: 'Fahrenheit'
							};

							/* IMPUT TEMPERATURA
							* */
							export   class InputTemperatura extends React.Component {
							    constructor(props) {
							        super(props);
							        this.handleChange = this.handleChange.bind(this);
							        this.state = {temperatura: ''};
							    }

							    handleChange(e) {
							        this.setState({temperatura: e.target.value});
							    }


							    render() {
							        const temperatura = this.state.temperatura;
							        const scala = this.props.scala;
							        return (
							            <fieldset>
							                <legend>Inserisci la temperatura in gradi {scale[scala]}:</legend>
							                <input value={temperatura}
							                       onChange={this.handleChange} />
							            </fieldset>
							        );
							    }
							}
		10.2.SCRITTURA DELLE FUNZIONI DI CONVERSIONE
					Innanzitutto, scriviamo due funzioni per convertire da Celsius a Fahrenheit e viceversa:
							es.
									function toCelsius(fahrenheit) {
										  	return (fahrenheit - 32) * 5 / 9;
											}
											
											function toFahrenheit(celsius) {
										  	return (celsius * 9 / 5) + 32;
											}

					Queste due funzioni convertono i numeri. Scriviamo un’altra funzione che accetta come argomenti una stringa temperatura e una funzione converti, e restituisce una stringa. La useremo per calcolare il valore di un input basato su un altro.

							function conversione(temperatura, converti) {
							    const input = parseFloat(temperatura);
							    if (Number.isNaN(input)) {
							        return '';
							    }
							    const output = converti(input);
							    const rounded = Math.round(output * 1000) / 1000;
							    //restituisce la stringa
							    return rounded.toString();
							}

					 Ad esempio, conversione('abc', toCelsius) restituisce una stringa vuota, e conversione('10 .22', toFahrenheit) restituisce '50.396'.
		10.3.SPOSTARE LO STATO “IN ALTO”
					Attualmente, entrambi i componenti InputTemperatura mantengono in modo indipendente i loro valori nello stato locale:

					Tuttavia, vogliamo che i valori di questi due input siano sincronizzati tra loro. Quando aggiorniamo l’input Celsius, l’input Fahrenheit dovrebbe aggiornare la temperatura convertita e viceversa.

					In React, la CONDIVISIONE dello stato si ottiene SPOSTANDOLO VERSO IL PIÙ VICINO ANTENATO comune dei componenti che ne hanno bisogno. Questo processo viene detto “SPOSTARE LO STATO VERSO L’ALTO” (@lifting state up). Rimuoviamo lo stato locale da InputTemperatura e invece lo spostiamo nel Calcolatore.
						@stato@condivisione@spostatare.in.alto

					Se il CALCOLATORE POSSIEDE LO STATO CONDIVISO, diventa la “unica fonte di verità” per la temperatura corrente in entrambi gli input. Può istruire entrambi ad avere valori coerenti l’uno con l’altro. Poiché le props di entrambi i componenti InputTemperatura provengono dallo stesso componente Calcolatore padre, i due input saranno sempre sincronizzati.

					Vediamo come funziona passo dopo passo.
						1)
							Per prima cosa sostituiremo (NEL RENDER) this.state.temperatura con this.props.temperatura nel componente InputTemperatura. Per ora, facciamo finta che this.props.temperatura esista già, anche se dovremo successivamente passarla dal Calcolatore:
								  render() {
								    // Prima: const temperatura = this.state.temperatura;
								    const temperatura = this.props.temperatura;
								    // ...
					    	Sappiamo già che LE PROPS SONO IN SOLA LETTURA. Quando temperatura era nello stato locale, INPUTTEMPERATURA poteva semplicemente chiamare this.setState() per cambiarla. Tuttavia, ora che la temperatura viene come prop dal componente genitore, INPUTTEMPERATURA non ha alcun controllo su di esso.


				    		@COMPONENTE@CONTROLLATO
					    	In React, questo è solitamente risolto rendendo un componente “controllato”. Proprio come nel DOM, <input> accetta sia una PROP VALUE che una PROP ONCHANGE, quindi il componente personalizzato InputTemperatura accetta sia la prop temperatura che onChangeTemperatura dal suo Calcolatore padre.

					    				   handleChange(e) {
									        // ho cambiato 'l'avvitiva da setstate a props.Onchange ed aggiorna la temperatura
									        // Prima: this.setState({temperatura: e.target.value});
									        this.props.onChangeTemperatura(e.target.value);
									        // ...
									    }

					    	Nota:
							
							Non vi è alcun significato speciale nei nomi delle props temperatura o onChangeTemperatura nei componenti personalizzati. Avremmo potuto chiamarle in qualsiasi altro modo, come chiamarle value e onChange, come da convenzione comune.


							PADRE CALCOLATORE
							La prop onChangeTemperatura viene fornita insieme alla prop temperatura dal componente padre Calcolatore. Gestirà i cambiamenti nel proprio stato locale, ri-renderizzando poi gli input con i nuovi valori. A breve, vedremo la nuova implementazione di Calcolatore.

							RICAPITOLAZIONE MODIFICHE
								Prima di immergerti nei cambiamenti del Calcolatore, ricapitoliamo le modifiche al componente InputTemperatura. 
									1) Abbiamo rimosso lo stato locale e invece di leggere this.state.temperatura, ora leggiamo this.props.temperatura. 
									2) Invece di chiamare this.setState() quando vogliamo apportare una modifica, ora chiamiamo this.props.onChangeTemperatura(), che sarà fornita dal Calcolatore:

							Ora passiamo al componente CALCOLATORE.

								Memorizzeremo 
									-  temperatura e 
									 - scale 
								dall’input corrente nel suo stato locale. 
								
								Questo è lo stato che abbiamo “spostato su” dagli input, e servirà da “unica fonte di verità” per entrambi. 
								È la rappresentazione minima di tutti i dati di cui dobbiamo essere a conoscenza per renderizzare entrambi gli input.

							Ad esempio, se inseriamo 37 nell’input Celsius, lo stato del componente Calcolatore è:
								{
								  	temperatura: '37',
								  	scala: 'c'
									}
							{
						  	temperatura: '212',
						  	scala: 'f'
							}

							Avremmo potuto memorizzare il valore di entrambi gli input, ma non è necessario. È sufficiente memorizzare il valore dell’input modificato più recentemente e la scala che rappresenta. Possiamo quindi dedurre il valore dell’altro input basato sulle sole temperatura e scala correnti.

							CALCOLO SINCRONIZZATO
								Gli input rimangono sincronizzati perché i loro valori sono calcolati dallo stesso stato:

									ES.
											class Calcolatore extends React.Component {
											  	constructor(props) {
											    	super(props);
											    	this.handleChangeCelsius = this.handleChangeCelsius.bind(this);
											    	this.handleChangeFahrenheit = this.handleChangeFahrenheit.bind(this);
											    	this.state = {temperatura: '', scala: 'c'};
											  	}
												
											  	handleChangeCelsius(temperatura) {
											    	this.setState({scala: 'c', temperatura});
											  	}
												
											  	handleChangeFahrenheit(temperatura) {
											    	this.setState({scala: 'f', temperatura});
											  	}
												
											  	render() {
											    	const scala = this.state.scala;
											    	const temperatura = this.state.temperatura;
											    	const celsius = scala === 'f' ? conversione(temperatura, toCelsius) : temperatura;
											    	const fahrenheit = scala === 'c' ? conversione(temperatura, toFahrenheit) : temperatura;
												
											    	return (
											      	<div>
											        	<InputTemperatura
											          	scala="c"
											          	temperatura={celsius}
											          	onChangeTemperatura={this.handleChangeCelsius} />
											        	<InputTemperatura
											          	scala="f"
											          	temperatura={fahrenheit}
											          	onChangeTemperatura={this.handleChangeFahrenheit} />
											        	<VerdettoEbollizione
											          	celsius={parseFloat(celsius)} />
											      	</div>
											    	);
											  	}
												}
		10.4.LEZIONI APPRESE
				Tutti i dati che cambiano in un’applicazione React dovrebbero avere una “unica fonte di verità”. Di solito, lo stato viene prima aggiunto al componente che ne ha bisogno per il rendering. Quindi, se anche altri componenti ne hanno bisogno, puoi spostarlo fino al loro antenato più vicino. Invece di provare a sincronizzare lo stato tra diversi componenti, dovresti affidarti sul flusso di dati top-down.
				@stato@al@componente@che.ne.ha@bisogno

				Spostare lo stato in alto nella gerarchia implica la scrittura di un codice più “standard” rispetto all’approccio two-way binding (a doppio senso), ma come vantaggio, trovare e isolare i bug risulta meno laborioso. Poiché ogni stato “vive” in alcuni componenti e solo quel componente può cambiarlo, la fonte di bugs viene notevolmente ridotta. Inoltre, è possibile implementare qualsiasi logica personalizzata per validare o trasformare l’input dell’utente.
					@sposta@lo@stato@verso@l'alto

				Se qualcosa può essere derivato da props o stato, probabilmente non dovrebbe essere nello stato. Ad esempio, invece di memorizzare sia valoreCelsius che valoreFahrenheit, memorizziamo solo l’ultima temperatura modificata e la sua scala. Il valore dell’altro input può sempre essere calcolato da loro nel metodo render(). Questo ci consente di cancellare o applicare l’arrotondamento all’altro campo senza perdere precisione nell’input dell’utente.
					@input@calcolato

				Quando vedi qualcosa di sbagliato nell’interfaccia utente, puoi utilizzare React Developer Tools per ispezionare le props e spostarti nell’albero finché non si trova il componente responsabile dell’aggiornamento dello stato. Questo ti permette di tracciare i bug alla loro fonte.
				@interfaccia@react@dev

## CAP. 11.1.COMPOSIZIONE VS EREDITARITÀ
			Note
				React ha un potente modello di composizione, raccomandiamo che lo si usi in alternativa all’ereditarietà per riutilizzare codice tra componenti.
					@react@composizione@modello@ereditarieta

				In questa sezione, considereremo alcuni problemi nei quali gli sviluppatori che sono ancora agli inizi in React utilizzano l’ereditarietà, mostreremo come si possa invece risolverli con la composizione.
		11.1.CONTENIMENTO
				@componenti@contenitori.di.altri.componenti
				@componenti@contenitori_(che contengono figli non conoscibili a priori)
				@CAP.11.1.@COMPOSIZIONE.VS.EREDITARITÀ
			Esistono componenti che si comportano da contenitori per altri componenti, non possono quindi sapere a priori quali componenti avranno come figli. Si pensi ad esempio a Sidebar (barra laterale) oppure Dialog (finestra di dialogo) che rappresentano “scatole” generiche.
				@componenti@scatole@generiche.contenitori@barra@lateral@Dialog@finestra.di.dialogo

			Raccomandiamo che questi componenti facciano uso della prop speciale children per passare elementi figli direttamente nell’output:
				@propo@speciale@children
					ES. di children
					function BordoFigo(props) {
						  	return (
						    	<div className={'BordoFigo BordoFigo-' + props.colore}>
						      	{props.children}  //props.children
						    	</div>
						  	);
							}

			Ciò permette di passare componenti figli arbitrariamente annidandoli nel codice JSX:
				@passaggio@parametri@componenti@figli
					ES
						function FinestraBenvenuto() {
						  	return (
						  		//@ESEMPIO@props@speciale_(passaggio componenti figli)
						  		//@TAG@JSX@passaggio@prop@children@otuput@finale
						    	<BordoFigo colore="blue">
						      	<h1 className="Finestra-titolo">Benvenuto/a!</h1>
						      	<p className="Finestra-messaggio">
						        	Ti ringraziamo per questa tua visita nella nostra
						        	nave spaziale!
						      	</p>
						    	</BordoFigo>
						  	);
							}

			Il contenuto del tag JSX <BordoFigo> viene passato nel componente BordoFigo come prop children. Dato che BordoFigo renderizza {props.children} all’interno di un <div>, gli elementi passati appaiono nell’output finale.
			Anche se si tratta di un approccio meno comune, a volte potresti ritrovarti ad aver bisogno di più di un “buco” all’interno di un componente. In questi casi potresti creare una tua convenzione invece di ricorrere all’uso di children:

					function Pannello(props) {
							  	return (
							    	<div className="Pannello">
							      	<div className="Pannello-sinistra">
							        	{props.sinistra}
							      	</div>
							      	<div className="Pannello-destra">{props.destra}</div>
							    	</div>
							  	);
								}
								
								function App() {
							  	return (
							    	<Pannello sinistra={<Contatti />} destra={<Chat />} />
							  	);
								}
				Gli elementi React <Contatti /> e <Chat /> sono dei semplici oggetti, quindi puoi passarli come props esattamente come faresti con altri dati. Questo approccio potrebbe ricordarti il concetto di “slots” in altre librerie, ma non ci sono limitazioni su cosa puoi passare come props in React.

		11.2.SPECIALIZZAZIONI
				A volte pensiamo ai componenti come se fossero “casi speciali” di altri componenti. Ad esempio, potremmo dire che FinestraBenvenuto è una specializzazione di Finestra.
					@11.2.SPECIALIZZAZIONI_(Tutorial)

				In React, ciò si ottiene mediante composizione, dove componenti più “specifici” renderizzano la versione più “generica” configurandola mediante props:

					//@es.@specializzazione@renderizzo@la@finestra@generica
							function Finestra(props) {
						  	return (
						    	<BordoFigo colore="blue">
						      	<h1 className="Finestra-title">{props.titolo}</h1>
						      	<p className="Finestra-messaggio">
						        	{props.messaggio}
						      	</p>
						    	</BordoFigo>
						  	);
							}
							
							function FinestraBenvenuto() {
						  	return (
						    	<Finestra
						      	titolo="Benvenuto/a!"
						      	messaggio="Ti ringraziamo per questa tua visita nella nostra      nave spaziale!"
							
						    	/>
						  	);
							}
					Finestra renderizzata con la funzione

					La composizione funziona ugualmente bene per i componenti definiti come classi:
							function Finestra(props) {
								  	return (
								    	<BordoFigo colore="blue">
								      	<h1 className="Finestra-titolo">{props.titolo}</h1>
								      	<p className="Finestra-messaggio">
								        	{props.messaggio}
								      	</p>
								      	{props.children}
								    	</BordoFigo>
								  	);
									}
									
									class FinestraRegistrazione extends React.Component {
								  	constructor(props) {
								    	super(props);
								    	this.handleChange = this.handleChange.bind(this);
								    	this.handleSignUp = this.handleSignUp.bind(this);
								    	this.state = {login: ''};
								  	}
									
								  	render() {
								    	return (
								      	<Finestra
								        	titolo="Programma di Esplorazione di Marte"
								        	messaggio="Qual'è il tuo nome?">
								        	<input
								          	value={this.state.login}
								          	onChange={this.handleChange}
								        	/>
								        	<button onClick={this.handleSignUp}>
								          	Registrami!
								        	</button>
								      	</Finestra>
								    	);
								  	}
									
								  	handleChange(e) {
								    	this.setState({login: e.target.value});
								  	}
									
								  	handleSignUp() {
								    	alert(`Benvenuto/a a bordo, ${this.state.login}!`);
								  	}
									}

					

		11.3.E PER QUANTO RIGUARDA L’EREDITARIETÀ?
				In Facebook, usiamo React in migliaia di componenti ma non abbiamo mai avuto alcun caso in cui sarebbe raccomandabile utilizzare gerarchie di ereditarietà per i componenti.

				Le props e la composizione ti offrono tutta la flessibilità di cui hai bisogno per personalizzare l’aspetto ed il comportamento di un componente in modo esplicito e sicuro. Ricorda che i componenti possono accettare props arbitrarie, inclusi valori primitivi, elementi React o funzioni.

				Se vuoi riutilizzare le funzionalità non strettamente legate alla UI tra componenti, suggeriamo di estrarre tali logiche all’interno di un modulo JavaScript separato. I componenti potranno quindi importarlo ed utilizzare quella funzione, oggetto o una classe di cui hanno bisogno, senza dover estendere tale modulo.

## CAP. 12.1.PENSARE IN REACT
			Note
				React è, secondo noi, il miglior modo per sviluppare applicazioni web complesse e performanti in JavaScript. Ha scalato molto bene per noi in Facebook ed Instagram.

				Una delle caratteristiche migliori di React è il modo in cui ti permette di pensare alle applicazioni mentre le sviluppi. In questo documento, ti guideremo nel processo di costruzione di una tabella di prodotti con funzionalità di ricerca usando React.

		12.1.COMINCIA CON UNA BOZZA
					Immaginiamo di avere già a disposizione una API JSON e che il nostro designer ci abbia fornito una bozza come questa:
					La nostra API JSON ritorna dati in questa forma:
						ES. di componenti @Esempio@Bozza@Tabella@prodotti
								[
						  	{categoria: "Attrezzatura Sportiva", prezzo: "$49.99", disponibile: true, nome: "Palla da calcio"},
						  	{categoria: "Attrezzatura Sportiva", prezzo: "$9.99", disponibile: true, nome: "Palla da tennis"},
						  	{categoria: "Attrezzatura Sportiva", prezzo: "$29.99", disponibile: false, nome: "Palla da canestro"},
						  	{categoria: "Elettronica", prezzo: "$99.99", disponibile: true, nome: "iPod Touch"},
						  	{categoria: "Elettronica", prezzo: "$399.99", disponibile: false, nome: "iPhone 5"},
						  	{categoria: "Elettronica", prezzo: "$199.99", disponibile: true, nome: "Nexus 7"}
							];

		12.2.PASSO 1: SCOMPONI LA UI IN UNA GERARCHIA DI COMPONENTI
					La prima cosa da fare è disegnare rettangoli attorno ad ogni componente (e sotto-componente) presente nella bozza e di dare un nome ad ognuno di essi. Se stai lavorando con un designer, probabilmente qualche passo in questa direzione è stato già fatto, consultatevi! I nomi dei livelli in Photoshop usati dai designers potrebbero dare nome anche ai tuoi componenti React!

					Ma come fare a sapere cosa deve essere un componente a se stante? Usa le stesse tecniche che usi per decidere se devi creare una nuova funzione od un oggetto. Una di queste tecniche è il principio di singola responsabilità, che dice che un componente dovrebbe idealmente occuparsi di una cosa soltanto. Nel caso in cui un componente diventi troppo grande e complesso, dovrebbe essere decomposto in sotto-componenti più piccoli e semplici.	@componente@singola@responsabilita

					Dato che ti ritroverai spesso a dover presentare all’utente dei modelli dati JSON, noterai che se tali modelli sono stati definiti correttamente, la tua UI (e di conseguenza la struttura della gerarchia dei tuoi componenti) corrisponderanno. Ciò avviene perché entrambe tendono ad aderire alla stessa architettura dell’informazione. Separa la tua UI in componenti, dove ognuno di essi corrisponde ad una parte del modello dati.
								@modello@componenti@gerarchia@componenti
									https://it.reactjs.org/docs/thinking-in-react.html

					Abbiamo identificato cinque componenti nella nostra applicazione. In corsivo, la parte del modello dati rappresentata da ogni componente. I numeri nell’immagine corrispondono ai numeri di seguito.
					Abbiamo identificato cinque componenti nella nostra applicazione. In corsivo, la parte del modello dati rappresentata da ogni componente. I numeri nell’immagine corrispondono ai numeri di seguito.

		12.2.PASSO 2: SVILUPPA UNA VERSIONE STATICA IN REACT
		12.3.PASSO 3: IDENTIFICA LA MINIMA (MA COMPLETA) RAPPRESENTAZIONE DELLO STATO DELLA UI
		12.4.PASSO 4: IDENTIFICA DOVE POSIZIONARE IL TUO STATO
		12.5.PASSO 5: INVERTIRE IL FLUSSO DATI
		12.6.È TUTTO






# FAQ E COME CREARE
 	###  GIT
		come creare un nuova repositori con git con riga di comando:
		1) cd directory in cui creare
			attenzione se la directori gia esiste impostare il cd.. fuori di una posizione
		2) git init REACT_CONCETTI_CHIAVE
		3) git add .
		4) git commit -m "messaggio del commit	
		5) git push <remote_name> <branch_name>
			   Es. react        origin
			   
			   su https://github.com/icivixwalter
			   passw walter_01_
		   
 	###  LE FUNZIONI ARROW E NORMALI
	Come creare una funzione arrow e quella normale:
		// funzione arrow
				this.setState((state, props) => ({
				counter: state.counter + props.increment
				}));


		
		// funzione normale
			this.setState(function(state, props) {
			return {
			counter: state.counter + props.increment
			};
			});
 	###  LE COSTANTI ESPRESSIONI JFX

	1) ES = COSTANTE STRINGA
		creo una costante stringa semplice
		const name = 'Giuseppe Verdi';
			
	2) ES = CREO UN ELEMENTO CON H1 + STRINGA + RISULTATO FUNZIONE
			creo un elemento con  h1 + stringa + il risultato di una funzione chiamata
			const element = <h1>Hello, {name}</h1>;
	
	3) ES = CREA UNA ELEMENTO ELEMENTO H1 + STRINGA + RISULTATO DELLA FUNZIONE CHIAMATA
		Questa è sempre una  ESSRESSIONE JAVA SCRIPT DENTRO LE GRAFFE COMPOSTA DA 
		un elemento html h1 		+
		una stringa = hello 		+
		da una stringa formatata con {formatName(user)
			{formatName(user), RESTITUISCE il risultato della chiamata alla 
			descritta in {} la  quale  combina due costanti e le restituisce.
			
			const element = (
				<h1>
					Hello, {formatName(user)}!
				</h1>
				);
				
		//qui creo sempre una costante e tra parenti {} inserisco espressioni javascript tipo firstName
		const user = {
		firstName: 'Giuseppe',
		lastName: 'Verdi'
		};
		
		ES: CREATA  LA FUNZIONE DA CHIAMARE
		function formatName(user) {
		return user.firstName + ' ' + user.lastName;
		}
 	###  SPECIFICARE ATTRIBUTI CON JFX
	ATTRIBUTI CON VIRGOLETTE
		 const element = <a href="https://www.reactjs.org"> link </a>;

	ATTRIBUTI CON PARENTESI GRAFFE SPECIFICANDO UNA ESPRESSIONE JavaScript
		 const element = <img src={user.avatarUrl}></img>;
 	###  SEPARATORE A LINEE ROSSE
	CREARE UN SEPARATORE DI LINEE COLORATO NEL PROGETTO
	  @codice--->CREARE_UN_SEPARATORE = creare un separatore il linee rosse
 	###  TAG
		TAG VUOTI
			Se un tag è vuoto, puoi chiuderlo immediatamente con />, come in XML:
			const element = <img src={user.avatarUrl} />;
		TAG CON FIGLI
			I tag JSX possono contenere figli:

				const element = (
					  <div>
					    <h1>Hello!</h1>
					    <h2>Good to see you here.</h2>
					  </div>
					);
 	###  TEXAREA-CASELLA-DI-TESTO
		@casella@di@testo@texarea.(casella di testo)
			come creare una casella di testo in react:
				vedere questo codice @CASELLA@DI@TESTO@textArea.(per vedere il codice sviluppato)
 	###  CSS ED EVENTO BUTTON
			Come creare una classe .css, applicarla ad un componente es. button.


			APPLICAZIONE ALL'INTERNO DI UN FILE .TXT
				Note
					Nell'elemnto button vengono effettuati 2 richiami:
						<button className="btn" onClick={() => setCount((count) => count + 1)}>
				count is {count}
			</button>

						className="btn"
					e questo richiama la classe .css costruita per i button.

					onClick={() => setCount((count) => count + 1)
						questo è l'evento button e la funzione richiamata


				Per applicare la classe .css al button occorre costruire un file 
				index.css in cui viene costruito la parte grafica del button denomando
				l'elemento in 
					button {......}
						Esempio .css per il button

								/*//BUTTON MODELLO PER TUTTO*/
								/*//=======================================================//*/
								
								button {
								border-radius: 8px;
								border: 4px solid transparent;
								padding: 0.6em 1.2em;
								font-size: 1em;
								font-weight: 500;
								font-family: inherit;
								background-color: #1a1a1a;
								cursor: pointer;
								transition: border-color 0.25s;
								}
								/*hover = mouse sopra*/
								button:hover {
								border-color: #ea0009;
								}
								button:focus,
								button:focus-visible {
								outline: 4px auto -webkit-focus-ring-color;
								}
								
								/*//=======================================================//*/
								
						
				ATTENZIONE nel file css, puoi anche

				
 	###  GIT
	per aggiungere il nuovo
		git add.

		git commit -m "messaggio"	= salva su disco

		git push   						= salva sulla rete
 	###  EVENTI
		Per gli eventi ci sono 2 possibilita
			UTILIZZO DI BIND

											class Interruttore extends React.Component {
														constructor(props) {
														super(props);
														this.state = {acceso: true};
														
														// Necessario per accedere al corretto valore di `this` all'interno della callback
														//ATTENZINE ad utilizzare bind per l'associazione e passarlo a onclick??
														this.handleClick = this.handleClick.bind(this);
														}
														
														handleClick() {
														this.setState(prevState => ({
															acceso: !prevState.acceso
														}));
														}
														
														render() {
														return (
															<button onClick={this.handleClick}>
															{this.state.acceso ? 'Acceso' : 'Spento'}
															</button>
														);
														}
														}


			PROPRIETA PUBBLICHE DELLA CLASSE

											
										class LoggingButton extends React.Component {
														//SINTASSI DELLE PROPRIETA PUBBLICHE DELLE CLASSI 
														//ed associare il callback
														// This syntax ensures `this` is bound within handleClick.
														handleClick = () => {
														console.log('this is:', this);
														};
														render() {
														return (
															<button onClick={this.handleClick}>
															Clicca qui
															</button>
														);
														}
														}


					class LoggingButton extends React.Component {
														// This syntax ensures `this` is bound within handleClick.
														handleClick = () => {
														console.log('this is:', this);
														};
														render() {
														return (
															<button onClick={this.handleClick}>
															Clicca qui
															</button>
														);
														}
														}
 	###  ERRORI
    #### Errori su React
			IntelliJ IDEA sta segnalando un errore TS2339 perché non riconosce il metodo “setState” che stai utilizzando nel tuo progetto. Questo potrebbe essere dovuto al fatto che il plugin Deno non è configurato correttamente.

			Per risolvere questo problema, puoi provare a installare il plugin TypeScript per IntelliJ IDEA e assicurarti di avere le definizioni dei tipi React installate nel tuo progetto. Puoi farlo eseguendo il comando npm install @types/react @types/react-dom --save-dev nella tua cartella di progetto.
			
			Inoltre, potresti voler verificare che la tua versione di TypeScript sia aggiornata alla versione più recente.
			
			Spero che questo ti aiuti! Fammi sapere se hai altre domande. 

	####	Errori su Vite
				per partire
					Task dev deno run -A --node-modules-dir npm:vite

				ma questo errore 
					Cannot read properties of undefined (reading 'bold')
					10:46:01 [vite] Internal server error: Cannot read properties of undefined (reading 'bold')
					Plugin: vite:react-babel

					con chatgpt ho trovato questa soluzione.
					nella directory del progetto 
						 C:\CASA\LINGUAGGI\HTML\PROGETTI_HTML\REACT_CONCETTI_CHIAVE\Project\react-concetti-chiave 
						 digitare deno info
						 e 		 deno update
						 e fa l'aggiornamento.
 	### COME CREARE UN NUOVO PROGETTO REACT ELEMENTI ESSENZIALI
		  USARE REACT CON DENO
				CREARE UN PROGETTO DENO REACT	

			NOTE
				il tutorial di deno qui 		: https://deno.land/manual@v1.31.1/node/how_to_with_npm/react
					Il progetto si trova qui 	: https://github.com/denoland/examples/tree/main/with-react
				React è il frontend JavaScript più utilizzato struttura. Ha reso popolare un approccio dichiarativo verso la progettazione dell'utente interfacce, con un modello di dati reattivo. A causa della sua popolarità, non è Sorprendente che sia il framework più richiesto quando si tratta di costruire web app con Deno.

				Questo è un tutorial che ti guida attraverso la creazione di una semplice app React con Deno in meno di cinque minuti. L'app visualizzerà un elenco di dinosauri. Quando si Fai clic su uno, ti porterà a una pagina di dinosauro con maggiori dettagli.

				Ecco la versione ospitata dell'app. Visualizza la fonte qui.
			OPERAZIONI
			CREA VITE EXTRA

				1) CREA UNA NUOVA CARTELLA PER IL PROGETTO 
						C:\CASA\LINGUAGGI\HTML\PROGETTI_HTML\REACT_CONCETTI_CHIAVE 
												
							apri il terminale DOS e vai in project
								
										cd .\Project\


										e vai nella cartella creaata con cd react-concetti-chiave

				2) 	CREA L'IMPALCATURA VITE
						Questo tutorial utilizzerà Vite per impalcare rapidamente un Deno e l'app React USA QUESTO COMANDO DENO: 
							
								deno run -A npm:create-vite-extra

							VITE richiede il nome da dare al  progetto e alla cartella ? :  sara chiamato 
									
									react-concetti-chiave

				3)	SELEZIONARE IL TEMPLATE	
						tra i vari template utilizzare
								deno-react
				
				4) SELEZIONARE LA VARIABILE
							TypeScript

				5) COMANDO DOS CD
						Vai  nella cartella del progetto creata con il comando dos:
									cd react-concetti-chiave

				6) COMANDO DONE DI CREAZIONE PROGETTO
						digita il comando
							
							deno task dev

						viene creato il progetto funzionante.

						SI APRE NEL DOS  il comando VITE il quale indica:
								la porta ---> Local:   http://localhost:5173/
								il nt 	--->  Network: use --host to expose
								cmd vite	--->   press h to show help
									
								  i comandi che puoi attivare sono: 
								  	
								  Shortcuts
										  	press r to restart the server
										  	press u to show server url
										  	press o to open in browser
										  	press c to clear console
										  	press q to quit



			  













nadex
https://www.nadex.com/demo/
email		: icivix@tiscali.it
user name	: contowr
pass		: Ninazzo44

phone		: 3662631843 (corretto per la verifica - numero di fabio)
	
	
	
	
	
