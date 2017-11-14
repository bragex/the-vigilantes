<%-- 
    Document   : RessurserM6
    Created on : 19.okt.2017, 12:51:40
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
        <title>Modul 6</title>
    </head>
    <body>
        <h1>Modul 6</h1>
        <h2>Dokumentasjon av Programmer<h2/>
        <form action="ModulLevering" method="post">
                    <button class="button button ">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                
                <h3>Oppgave:</h3>
                <ul><p>Lag et nytt prosjekt hvor du bruker noen klasser fra standardbiblioteket.<br>
                        Dokumenter prosjektet slik det er beskrevet i appendix I og J.<br>
                        Skriv et lite notat med dine egne tanker om hvoran kode bør dokumenteres.</p></ul>
                
                <h3>Godkjenning:</h3>
                <ul><p>Lever prosjektet og notatet i innleveringsmappe i fronter, og send en mail til hjelpelærer.<br>
                       Prosjektet og notatet godkjennes av hjelpelærer eller foreleser.</p></ul>
                
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Lese og forstå dokumentasjonen for standardbiblioteket</li>
                    <li>Bruke klasser fra standardbiblioteket</li>
                    <li style="list-style-type:none;">- String, ArrayList, Random, HashMap, Iterator, ...</li>
                    <li>Skrive dokumentasjon for egne klasser</li>
                    <li>Bruke public/private</li>
                    <li>Forklare forskjellen på felt i klassen og klassevariable
                    <li>Definere konstanter i en klasse</li>
                </ul>
                
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>Lærebok:</b></li>
                    <li style="list-style-type:none;"><b>Kapitel 5, Appendix I,J</b></li>
                    <li style="list-style-type:none;">David J. Barnes and Michael Kölling</li>
                    <li style="list-style-type:none;">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>
                    <li style="list-style-type:none;">ISBN: 978-0-13-283554-1</li>
                    <br>
                    <li><b>Prosjekter:</b></li>
                    <li style="list-style-type:none;">Bouncing-balls, scribble, tech-support1, tech-support2, tech-support-complete</li>
                    <li style="list-style-type:none;">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href="https://www.bluej.org/objects-first/">HER</a> </li>
                    <br>
                    <li><b>Miniforelsninger:</b></li>
                    <p>Intro til Modul 6</p>
                    
                    <p>Intro javas standard klassebibliotek</p>
                    
                    <p>Hva betyr private og public</p>
                    
                    <p>Slette mange, og returnere ei liste</p>
                    
                    <p>Klassevariable og -metoder</p>
                    
                    <p>Alt du ikke vil vite om String</p>
                    
                    <br>
                    
                    <li><b>Video fra forfatterne av læreboka:</b></li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/dYhRz-RPxB4" frameborder="0" allowfullscreen></iframe>            
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/foc-GdHup9Y" frameborder="0" allowfullscreen></iframe>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/qFA9BFY1tN4" frameborder="0" allowfullscreen></iframe>
                                        
                </ul>
      
    </body>
</html>