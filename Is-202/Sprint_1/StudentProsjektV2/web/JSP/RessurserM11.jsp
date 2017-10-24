<%-- 
    Document   : RessurserM11
    Created on : 24.okt.2017, 10:46:02
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
        <title>Modul 11</title>
    </head>
    <body>
        <h1>Modul 11</h1>
        <h2>Abstrakte Klasser og Interface<h2/>
        <form action="" method="post">
                    <button class="button button "onclick="alert('Modul skal godkjennes i samtale')">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                <p>Noen ganger vet vi at alle subklasser må ha en bestemt metode,<br> 
                    men vi har ikke noe fornuftig denne metoden kan gjøre i superklassen. <br>
                    Et eksempel på dette er utskriftsmetoden i eksemplene til modul 9 og 10.<br>
                    Det er her abstrakte klasser og interface kommer inn. De gjør det mulig å definere abstrakte metoder, <br>
                    som bare består av en header. Dvs. at de definerer signaturen til en eller flere metoder, <br>
                    men ikke hvordan metoden gjør det den skal gjøre.</p> 
                <h3>Oppgave:</h3>
                <ul><p>Ta i bruk abstrakte klasser og interface i prosjektet ditt.<br>
                        Hvis det ikke passer å bruke dette i de prosjektene du har, lager du et nytt.</p></ul>
                <h3>Godkjenning:</h3>
                <ul><p>Godkjennes av foreleser eller hjelpelærer i intervju</p></ul>
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Definere abstrakte metoder og klasser (og interface)</li>
                    <li>Definere konkrete subklasser av en abstrakt klasse, og klasser som implementerer et interface</li>
                    <li>Kan forklare hvorfor det er mulig for en klasse å arve fra flere interface, men bare fra en klasse</li>
                    
                </ul>
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>Lærebok:</b></li>
                    <li style="list-style-type:none;"><b>Kapitel 10</b></li>
                    <li style="list-style-type:none;">David J. Barnes and Michael Kölling</li>
                    <li style="list-style-type:none;">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>
                    <li style="list-style-type:none;">ISBN: 978-0-13-283554-1</li>
                    <br>
                    <li><b>Prosjekter:</b></li>
                    <li style="list-style-type:none;">Foxes-and-rabbits</li>
                    <li style="list-style-type:none;">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href="https://www.bluej.org/objects-first/">HER</a> </li>
                    <br>
                    <li><b>Video fra forfatterne av læreboka:</b></li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/F7KtfGELZsM" frameborder="0" allowfullscreen></iframe>            
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/u1Ozi0919D0" frameborder="0" allowfullscreen></iframe>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/4JqwzFsXfcI" frameborder="0" allowfullscreen></iframe>
                
                </ul>
      
    </body>
</html>
