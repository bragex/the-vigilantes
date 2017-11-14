<%-- 
    Document   : RessurserM10
    Created on : 19.okt.2017, 14:06:30
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
        <title>Modul 10</title>
    </head>
    <body>
        <h1>Modul 10</h1>
        <h2>Arv og Subklasser II<h2/>
        <form action="" method="post">
                    <button class="button button "onclick="alert('Modul skal godkjennes i samtale')">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                <p>Denne modulen tar opp mer avanserte sider ved arv og subklasser.<br>
                    Det kan f.eks. være ønskelig, og noen ganger helt nødvendig, å kunne omdefinere metoder som er arvet fra superklassen.<br>
                    Det gir oss et par nye problemstillinger: Hvordan vet vi at det er den riktige metoden som blir kalt? <br>
                    I noen tilfeller trenger vi tilgang til både den omdefinerte, og den opprinnelige metoden. <br>
                    Hva gjør vi da? Denne modulen gir deg svar på disse spørsmålene</p>
                
                <h3>Oppgave:</h3>
                <ul><p>Fortsett med prosjektet ditt (eller start et nytt),<br>
                        og ta i bruk det du har lært i denne modulen, spesielt overriding og polymofisme.</p></ul>
                
                <h3>Godkjenning:</h3>
                <ul><p>Godkjennes av foreleser eller hjelpelærer i intervju</p></ul>
                
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Kan omdefinere metoder som er arvet fra en superklasse</li>
                    <li>Kan kalle den opprinnelige metoden når det er nødvendig</li>
                    <li>Kan kalle constructor'en til superklassen</li>
                    <li>Kan forklare forskjellen på statisk og dynamisk type</li>
                    <li>Kan forklare begrepet polymorfisme</li>
                    <li>Kan forklare hvordan runtimesystemet i Java finner riktig metode, når et metodekall skal utføres</li>
                    
                </ul>
                
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>Lærebok:</b></li>
                    <li style="list-style-type:none;"><b>Kapitel 9</b></li>
                    <li style="list-style-type:none;">David J. Barnes and Michael Kölling</li>
                    <li style="list-style-type:none;">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>
                    <li style="list-style-type:none;">ISBN: 978-0-13-283554-1</li>
                    <br>
                    <li><b>Prosjekter:</b></li>
                    <li style="list-style-type:none;">Network-v3</li>
                    <li style="list-style-type:none;">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href="https://www.bluej.org/objects-first/">HER</a> </li>
                    <br>
                    <li><b>Miniforelsninger:</b></li>
                    <li style="list-style-type:none;">Litt om Polymorfisme</li>
                    <video width="560" height="315" controls>
                    <source src="https://home.uia.no/hallgeir/video/is110/Polymorfisme.mp4" type="video/mp4"> </video>
                    <br>
                    <br>
                    
                    <li><b>Video fra forfatterne av læreboka:</b></li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/aGRRAdXT7VU" frameborder="0" allowfullscreen></iframe>            
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/wX71K9jJ3ps" frameborder="0" allowfullscreen></iframe>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/DP0vR0gPufg" frameborder="0" allowfullscreen></iframe>
                    
                    
                </ul>
      
    </body>
</html>