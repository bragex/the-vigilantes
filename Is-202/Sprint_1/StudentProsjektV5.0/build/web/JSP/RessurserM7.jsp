<%-- 
    Document   : RessurserM7
    Created on : 19.okt.2017, 13:26:51
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
        <title>Modul 7</title>
    </head>
    <body>
        <h1>Modul 7</h1>
        <h2>Designe Gode/Robuste Klasser<h2/>
        <form action="" method="post">
                    <button class="button button "onclick="alert('Modul skal godkjennes i samtale')">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                
                <h3>Oppgave:</h3>
                <ul><p>Ta utgangspunkt i ett eksempel, enten kode dere har skrevet selv, eller ett eksempel fra boka.<br>
                        Dere skal forklare bruken av coupling og cohesion i dette eksempelet.<br>
                        Forklar også hva fordelene / ulempene med dette kan være i dette konkrete eksempelet.<br>
                        (Coupling og Cohesion kan gjøres på flere måter)</p></ul>
                
                <h3>Godkjenning:</h3>
                <ul><p>Godkjennes i intervju med foreleser eller hjelpelærer</p></ul>
                
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Kjenner konsekvensene av dårlig design</li>
                    <li style="list-style-type:none;">- Vet hva duplisering av kode er, og hvorfor det ikke er bra</li>
                    <li style="list-style-type:none;">- Vet hva 'localizing change' betyr</li>
                    <li>Kjenner betydningen av begrepene kobling (coupling) og sammenheng (cohesion)</li>
                    <li>Kjenner begrepet innkapsling (encapsulation) og kan bruke det til å redusere kobling</li>
                    <li>Vet hva refactoring er, og kan bruke refactoring til å forbedre et system</li>
                    
                </ul>
                
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>Lærebok:</b></li>
                    <li style="list-style-type:none;"><b>Kapitel 6</b></li>
                    <li style="list-style-type:none;">David J. Barnes and Michael Kölling</li>
                    <li style="list-style-type:none;">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>
                    <li style="list-style-type:none;">ISBN: 978-0-13-283554-1</li>
                    <br>
                    <li><b>Prosjekter:</b></li>
                    <li style="list-style-type:none;">Zuul-bad, zuul-better, zuul-with-enums-v1, zuul-with-enums-v2</li>
                    <li style="list-style-type:none;">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href="https://www.bluej.org/objects-first/">HER</a> </li>
                    <br>
                    <li><b>Eksempler:</b></li>
                    <li style="list-style-type:none;">lever-oblig1.jar</li>
                    <li style="list-style-type:none;">lever-oblig2.jar</li>
                    <li style="list-style-type:none;">lever-oblig3.jar</li>
                    
                    <br>
                    <li><b>Video fra forfatterne av læreboka:</b></li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/chaE5EvdfZQ" frameborder="0" allowfullscreen></iframe>            
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/u2MNFJEz7FA" frameborder="0" allowfullscreen></iframe>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/n_hpbJlZuNc" frameborder="0" allowfullscreen></iframe>
                    
                    
                </ul>
      
    </body>
</html>