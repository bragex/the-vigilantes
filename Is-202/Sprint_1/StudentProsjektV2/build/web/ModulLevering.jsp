<%-- 
    Document   : ModulLevering
    Created on : 22.sep.2017, 10:24:31
    Author     : jenny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ModulLevering</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {font-family:Segoe UI;}
            .form1{border:1px black solid;margin-left:15px;}#lmål1{margin-left:24px;font-size:15px;}
            a{text-decoration:none;}a:hover{color:#4169E1;}#p1{margin-left:10px;margin-bottom:-3px;margin-top:-5px;}
        </style>
    </head>
    <body>
        <div>
        <h2>Modul 1</h2>
        <h3>Læringsmål:</h3><a href="Moduler"><h4 id="p1">Oversikt over alle Moduler</h4><a>
        <div id="lmål1">
        <p><a href="link">Læringsmål modul 1</a></p>
        <p> 
            Du har fullført modulen når du kan:
            
            Bruke BlueJ, bl.a. til å:
            Åpne, lagre, og lukke prosjekter.
            Lage objekter
            Kalle metoder i objektene, med og uten parametere
            Bruke editoren til å se på kildekoden til en klasse
            Kunne kompilere prosjektet
            Litt java, du skal f.eks.
            Kunne kjenne igjen en klassedefinisjon, og kunne finne navnet på klassen
            Kjenne til forskjellige typer data
            Kalle metoder med et objekt som parameter
            Kalle metoder som returnerer en verdi
            Kjenne forskjellen mellom klasser og objekter
        </p>
        </div>
        <p><b>Last opp fil</b></p>
        <form action="levere">
        <input class="form1" type="file" name="myfile">
        <input class="form1" type="submit">
        </form>
        </div>
    </body>
</html>;