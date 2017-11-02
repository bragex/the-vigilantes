<%-- 
    Document   : RessurserM8
    Created on : 19.okt.2017, 13:40:59
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
        <title>Modul 8</title>
    </head>
    <body>
        <h1>Modul 8</h1>
        <h2>Testing og Debugging<h2/>
        <form action="MinSide" method="post">
                    <button class="button button ">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                <p>Hvordan vet vi at systemet virker som det skal? Hvis det ikke gjør det, hvordan kan vi finne feilen.<br>
                    Hvis vi ikke vet nøyaktig hva systemet skal gjøre er det håpløst.<br>
                    Derfor er det viktig å skaffe seg et godt utgangspunkt ved å gjøre en god jobb med design- og dokumentasjonsprosessen du har lært om i de foregående modulene.<br>
                    Du skal lære å lage enhetstester, som sjekker om hver enkelt klasse gjør det den skal, og å gjøre kodegjennomganger.<br> 
                    Du skal også lære noen teknikker for å finne feil.</p>
                
                <h3>Oppgave:</h3>
                <ul><p>Ta utgangspunkt i et av prosjektene du har skrevet tidligere.<br>
                        Lag testklasser for de viktigste to klassene, og lag tester for de viktigste funskjonene.<br>
                        Husk å teste grensetilfeller og "rare" input-verdier, ikke bare normale tilfeller.</p></ul>
                
                <h3>Godkjenning:</h3>
                <ul><p>Godkjennes av foreleser eller hjelpelærer.<br>
                        Enten spiller du inn en video eller så viser du dette til foreleser eller hjelpelærer</p></ul>
                
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Kan lage og kjøre enhetstester i BlueJ</li>
                    <li>Kan gjennomføre en manuell kodegjennomgang</li>
                    <li>Kan bruke utskrifter/logging til å finne feil</li>
                    <li>Kan bruke assert-setninger til å bekrefte at programmeet virker som det skal</li>
                                        
                </ul>
                
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>Lærebok:</b></li>
                    <li style="list-style-type:none;"><b>Kapitel 7</b></li>
                    <li style="list-style-type:none;">David J. Barnes and Michael Kölling</li>
                    <li style="list-style-type:none;">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>
                    <li style="list-style-type:none;">ISBN: 978-0-13-283554-1</li>
                    <br>
                    
                    <li><b>Prosjekter:</b></li>
                    <li style="list-style-type:none;">Bricks, calculator-engine, calculator-engine-print, calculator-full-solution, calculator-gui, diary-prototype, online-shop, onlinle-shop-junit-</li>
                    <li style="list-style-type:none;">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href="https://www.bluej.org/objects-first/">HER</a> </li>
                    <br>
                    
                    <li><b>Miniforelsninger:</b></li>
                    <li style="list-style-type:none;">Intro til Modul 8</li>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-8/intro.mp4" type="video/mp4"> </video>
                    <li style="list-style-type:none;">Debugvindu</li>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-8/debugvindu.mp4" type="video/mp4"> </video>
                    <li style="list-style-type:none;">Stepping</li>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-8/stepping.mp4" type="video/mp4"> </video>
                    <li style="list-style-type:none;">Variable</li>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-8/variable.mp4" type="video/mp4"> </video>
                    <br>
                    <br>
                    
                    <li><b>Video fra forfatterne av læreboka:</b></li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/_CvzkTVaBxQ" frameborder="0" allowfullscreen></iframe>            
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/iENnVe4aKuo" frameborder="0" allowfullscreen></iframe>
                                        
                </ul>
      
    </body>
</html>
