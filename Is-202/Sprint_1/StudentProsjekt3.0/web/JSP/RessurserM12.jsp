<%-- 
    Document   : RessurserM12
    Created on : 24.okt.2017, 11:14:38
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
        <title>Modul 12</title>
    </head>
    <body>
        <h1>Modul 12</h1>
        <h2>Grafiske Brukergrensesnitt<h2/>
        <form action="" method="post">
                    <button class="button button "onclick="alert('Modul skal godkjennes i samtale')">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                <p>I denne modulen skal du lære å lage enkle grafisek brukergrensesnitt. Det er ikke spesielt vanskelig, men litt fiklete.

Du må nødvendigvis også lære en del detaljer om javas bibliotek av brukergrensesnittkomponenter.

Digresjon: Dette biblioteket heter av en eller annen grunn Swing. Forgjengeren, som swing bygger på - så den er fortsatt i standardbiblioteket, heter Abstract Window Toolkit (AWT) som sier noe fornuftig om hva det er.</p> 
                <h3>Oppgave:</h3>
                <ul><p>Lag grafisk brukergrensesnitt til et av programmene du har laget tidligere.<br>
                       Hvis du har et større prosjekt som du har jobbet med i flere moduler er det ideelt, men ingen forutsetning. <br>
                       Ta et av prosjektene du har.<br><br>
                       
                       Hvis du vil, kan du løse denne oppgaven i JavaFX i stedet for swing.<br>
                       Du må i tilfelle bruke ressursene under. Læreboka tar bare for seg Swing</p></ul>
                
                <h3>Godkjenning:</h3>
                <ul><p>Godkjennes av foreleser eller hjelpelærer i intervju</p></ul>
                
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Vet hva brukergrensesnittkomponenter er, og hvordan de brukes til bygge opp brukergrensesnitt.</li>
                    <li>Vet hvordan man bestemmer layout i Swing, og kjenner til problemer knyttet til layout.</li>
                    <li>Kan forklare eventmodellen i Swing, og bruke den til å implementere funksjonaliteten til brukergrensesnittet.</li>
                    
                </ul>
                
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>Lærebok:</b></li>
                    <li style="list-style-type:none;"><b>Kapitel 11</b></li>
                    <li style="list-style-type:none;">David J. Barnes and Michael Kölling</li>
                    <li style="list-style-type:none;">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>
                    <li style="list-style-type:none;">ISBN: 978-0-13-283554-1</li>
                    <br>
                    <li><b>Prosjekter:</b></li>
                    <li style="list-style-type:none;">Imageviewer</li>
                    <li style="list-style-type:none;">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href="https://www.bluej.org/objects-first/">HER</a> </li>
                    <br>
                    <li><b>Video fra forfatterne av læreboka:</b></li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/klmfvMb6B4I" frameborder="0" allowfullscreen></iframe>            
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/prHTMZr4GnI" frameborder="0" allowfullscreen></iframe>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/43lMIHRypQ0" frameborder="0" allowfullscreen></iframe>
                  
                </ul>
      
    </body>
</html>
