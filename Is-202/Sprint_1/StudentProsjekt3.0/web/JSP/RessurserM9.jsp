<%-- 
    Document   : RessurserM9
    Created on : 19.okt.2017, 13:54:57
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
        <title>Modul 9</title>
    </head>
    <body>
        <h1>Modul 9</h1>
        <h2>Arv og Subklasser I<h2/>
        <form action="" method="post">
                    <button class="button button "onclick="alert('Modul skal godkjennes i samtale')">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                <p>I denne modulen skal du lære om arv og subklasser.<br>
                    Arv gjør det mulig å gjenbruke kode på en strukturert måte, og kanskje enda viktigere:<br>
                    Det gjør det mulig å modellere komplekse fenomener uten at koden blir altfor komplisert</p>
                
                <h3>Oppgave:</h3>
                <ul><p>Du skal skrive et program som bruker arv. Du kan godt basere deg på et prosjekt fra en tidligere modul.<br>
                        (Spillet world-of-zuul ser ut til å være veldig godt egnet, se de ekstra eksemplene vi har lagt ut til modul 7,<br>
                        men det finnes muligheter i alle ikke-trivielle prosjekter)</p></ul>
                
                <h3>Godkjenning:</h3>
                <ul><p>Godkjennes av foreleser eller hjelpelærer i intervju</p></ul>
                
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Kjenner betydningen av begrepene arv, superklasse, subklasse, subtype og substitusjon</li>
                    <li>Kan lage en subklasse av en annen klasse</li>
                    <li>Kan bruke superklassens constructor</li>
                    <li>Vet hvordan du bruker metoder og felt som er arvet fra superklassen</li>
                    <li>Vet hvordan arv kan brukes til å forenkle gjenbruk av kode</li>
                    <li>Kjenner til klassen Object, og metodene som blir arvet fra den</li>
                    
                </ul>
                
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>Lærebok:</b></li>
                    <li style="list-style-type:none;"><b>Kapitel 8</b></li>
                    <li style="list-style-type:none;">David J. Barnes and Michael Kölling</li>
                    <li style="list-style-type:none;">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>
                    <li style="list-style-type:none;">ISBN: 978-0-13-283554-1</li>
                    <br>
                    <li><b>Prosjekter:</b></li>
                    <li style="list-style-type:none;">Network-v1, network-v2</li>
                    <li style="list-style-type:none;">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href="https://www.bluej.org/objects-first/">HER</a> </li>
                    <br>
                    
                    <li><b>Video fra forfatterne av læreboka:</b></li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/MBBU1HALR6A" frameborder="0" allowfullscreen></iframe>            
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/U9pdy8eUKUg" frameborder="0" allowfullscreen></iframe>
                    
                </ul>
      
    </body>
</html>