<%-- 
    Document   : RessurserM4
    Created on : 18.okt.2017, 16:35:19
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
                cursor: not-allowed; 
            }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modul 4</title>
    </head>
    <body>
        <h1>Modul 4</h1>
        <h2>Samlinger av Objekter og Løkker<h2/>
        <form action="" method="post">
                    <button class="button button "onclick="alert('Modul skal godkjennes i samtale')">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                
                <h3>Oppgave:</h3>
                <ul><p>Lag ditt eget prosjekt fra bunnen av. Skriv all koden selv og bruk ting du har lært i modul 1-4.<br>
                        Bruk PMD og Checkstyle. De skal ikke rapportere feil eller mangler(i stor grad).</p></ul>
                <h3>Godkjenning:</h3>
                <ul><p>Ta med prosjektet til intervjuet med foreleser, godkjennes av foreleser</p></ul>
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Vet når du trenger samlinger av objekter</li>
                    <li>Kan bruke klassen ArrayList</li>
                    <li style="list-style-type:none;">- Kan gjøre rede for de viktigste metodene i ArrayList</li>
                    <li style="list-style-type:none;">- Vet hvordan du spesifiserer hvilken type objekter ei liste kan inneholde</li>
                    <li style="list-style-type:none;">- Kan skrive metoder som setter inn, finner og fjerner objekter i ei liste</li>
                    <li>Kan bruke for-each løkker til å gå gjennom ei liste</li>
                    <li>Kan bruke while-løkker og iteratorer til å gå gjennom ei løkke</li>
                    <li>Vet hva en array er, og når det er fornuftig å bruke array</li>
                    <li>Vet om standardbibliotektet</li>
                    <li>Vet hvorfor vi bruker import-setninger</li>
                    
                </ul>
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>Lærebok:</b></li>
                    <li style="list-style-type:none;"><b>Kapitel 4</b></li>
                    <li style="list-style-type:none;">David J. Barnes and Michael Kölling</li>
                    <li style="list-style-type:none;">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>
                    <li style="list-style-type:none;">ISBN: 978-0-13-283554-1</li>
                    <br>
                    <li><b>Prosjekter:</b></li>
                    <li style="list-style-type:none;">Auction, club, music-organizer v 1-5, products og weblog-analyzer</li>
                    <li style="list-style-type:none;">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href="https://www.bluej.org/objects-first/">HER</a> </li>
                    <br>
                    <li><b>Miniforelsninger:</b></li>
                    <li style="list-style-type:none;">Intro til Modul 4</li>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-4/Intro.mp4" type="video/mp4"> </video>
                    <li style="list-style-type:none;">Deklarasjon av listevariable</li>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-4/1%20Listedekl.mp4" type="video/mp4"> </video>
                    <li style="list-style-type:none;">For-each løkker</li>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-4/for-each.mp4" type="video/mp4"> </video>
                    
                    <br>
                    <li><b>Andre eksempler/videoer (Krever at dere har lest kap. 4)</b></li>
                    <li style="list-style-type:none;">EksempelSykkel.jar</li>
                    <br>
                    <p>Modul 4 eksempel arrayList (Christian Moen) PS: Les kap 4 først</p>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/7bo7kPsI-D4" frameborder="0" allowfullscreen></iframe>
                    <p>Sykkelbutikk del 1 Registrere sykkel, skriv alle</p>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-4/sykkel/SykkelButikkListe1.mp4" type="video/mp4"> </video>
                    <p>Slette mange, og returnere ei liste</p>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/is110/moduler/modul-4/sykkel/SykkelbutikkFjerneReturnereListe.mp4" type="video/mp4"> </video>
                    <p>Iterator (Christian Moen)</p>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/JpwmAencj9g" frameborder="0" allowfullscreen></iframe> 
                    <br>
                    <br>
                    <li><b>Video fra forfatterne av læreboka:</b></li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/_75i6SCwVPM" frameborder="0" allowfullscreen></iframe>            
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/6-A1g2liBh4" frameborder="0" allowfullscreen></iframe>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/dcK1pxon7zM" frameborder="0" allowfullscreen></iframe>
                    
                    
                </ul>
      
    </body>
</html>