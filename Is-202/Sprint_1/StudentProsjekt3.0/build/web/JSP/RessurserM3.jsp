<%-- 
    Document   : RessurserM3
    Created on : 18.okt.2017, 15:59:27
    Author     : jenny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <header>
            <jsp:include page="HeaderMenu.jsp"/>
    </header>
    <style>
                .button {
                background-color: lightgray;
                color: black; 
                border: 1px solid black;
                float: left;
            }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modul 3</title>
    </head>
    <body>
        <h1>Modul 3</h1>
        <h2>Flere Objekter<h2/>
        <form action="MinSide" method="post">
                    <button class="button button">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                <p>Virkelige bruksområder for programmer er nesten alltid så kompliserte at programmene ikke kan skrives som en klasse.<br>
                    Den ville bli for komplisert. I denne modulen skal du lære om hvordan du kan bruke flere klasser og objekter i samme program.<br>
                    Du skal også lære litt om hvordan vi bruker klasser til å bryte ned store problemer i mindre og enklere delproblemer. </p>
                <h3>Oppgave:</h3>
                <ul><p>Lag et program fra scratch med flere klasser, der en klasse blir brukt av en annen klasse Programmet skal bruke if-setninger.<br>
                        Skriv en oppsumering om det du har lært så langt på bloggen din.<br>
                        I dette eksempelet skal du bruke PMD og Checkstyle. PMD rapporterer ting som KAN være feil i koden.<br>
                        CheckStyle rapporterer om "feil" layout. PS: Ikke alt Checkstyle melder som feil, er feil.<br>
                        Du skal og laste opp prosjektet i innleveringsmappa for modulen i Fronter.<br>
                        Lag en video der du går gjennom og forklarer programmet. Link til video legges på bloggen</p></ul>
                <h3>Godkjenning:</h3>
                <ul><p>Send mail til hjelpelærer eller foreleser som godkjenner oppsummering på blogg, samt video.</p></ul>
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Kan forklare hva som menes med abstraksjon og modularisering</li>
                    <li>Kan bruke debuggeren i BlueJ</li>
                    <li>Har lært litt mer java, og kan:</li>
                    <li style="list-style-type:none;">- Forklare forskjellen på primitive typer og objekttyper</li>
                    <li style="list-style-type:none;">- Kan skrive kode som lager nye objekter</li>
                    <li style="list-style-type:none;">- Kan skrive kode som kaller metoder i samme objekt, og i andre objekter</li>
                    <li>Kan tegne klassediagrammer og objektdiagrammer</li>
                </ul>
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>Lærebok:</b></li>
                    <li style="list-style-type:none;"><b>Kapittel 3</b></li>
                    <li style="list-style-type:none;">David J. Barnes and Michael Kölling</li>
                    <li style="list-style-type:none;">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>
                    <li style="list-style-type:none;">ISBN: 978-0-13-283554-1</li>
                    <br>
                    
                    <li><b>Prosjekter:</b></li>
                    <li style="list-style-type:none;">Prosjekteksempler her</li>
                    <li style="list-style-type:none;">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href="https://www.bluej.org/objects-first/">HER</a> </li>
                    <br>
                    
                    <li><b>Miniforelsninger:</b></li>
                    <li style="list-style-type:none;">Om hvordan objekter kan bruke hverandre.ppt</li>
                    <p>Presentasjon av clock-display prosjektet</p>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-3/KlokkePPT.mp4" type="video/mp4"> </video>
                    <p>Gjennomgang av koden til clock-display prosjektet</p>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-3/klokke_clockdisplay.mp4" type="video/mp4"> </video>
                    <p>Gjennomgang av det andre klokkeeksampelet</p>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-3/klokke_numberdisplay.mp4" type="video/mp4"> </video>
                    <p>Intro til debuggeren i BlueJ 1</p>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-3/debugvindu.mp4" type="video/mp4"> </video>
                    <p>Hvordan du kan kjøre et javaprogram linje for linje</p>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-3/stepping.mp4" type="video/mp4"> </video>
                    <p>Gode råd om abstraksjon og modularisering</p>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-3/abstraksjon_modularisering.mp4" type="video/mp4"> </video>
                    <br>
                    
                    <li><b>Egene eksempler:</b></li>
                    <li style="list-style-type:none;">Sykkel.jar</li>
                    <br>
                    <p>Sykkel oversikt og Sykkel</p>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-3/eksempel_sykkel/Sykkel_oversikt_og_Sykkel.mp4" type="video/mp4"> </video>
                    <p>Sykkel Gir</p>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-3/eksempel_sykkel/Sykkel_Gir.mp4" type="video/mp4"> </video>
                    <p>Modul 3 eksempel opprette objekter i kode og kalle metoder fra objektet (Christian Moen)</p>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/1USwl9h6zbk" frameborder="0" allowfullscreen></iframe>
                    <br>
                    <br>
                    
                    <li><b>Video fra forfatterne av læreboka:</b></li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/72DsdvA80yo" frameborder="0" allowfullscreen></iframe>            
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/AbEVfqG-sZc" frameborder="0" allowfullscreen></iframe>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/1p5Uf7LDoO0" frameborder="0" allowfullscreen></iframe>
                    <br>
                    
                </ul>
      
    </body>
</html>