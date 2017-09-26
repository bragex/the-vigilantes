<<<<<<< HEAD
<%-- 
    Document   : ModulLevering
    Created on : 22.sep.2017, 10:24:31
    Author     : jenny
--%>
<%--This is a jsp page--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Levering</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {
                font-family:Segoe UI;
            }
            .form1 {
                border:1px black solid;
                margin-left:15px;
            }
            #lmål1 {
                margin-left:24px;
                font-size:15px;
            }
            .alevering {
                text-decoration:none;
            }
            .alevering:hover {
                color:#4169E1;
            }
            #p1 {
                margin-left:10px;
                margin-bottom:-3px;
                margin-top:-5px;
            }
            #Modulh21 {
                margin-left: 0px;
                display: inline-block;
            }
        </style>
    </head>
    <body>
        <header>
            <jsp:include page="HeaderMenu.jsp"/>
        </header>
        <div>
            <p style="font-size: 30px;"></p> <!--Margin error somewhere. No idea how this fixed the issue-->
            <h1 id="Modulh21">Modul 1</h1>
            <h3>Læringsmål:</h3>
            <a href="Moduler">
                <h4 id="p1">Oversikt over alle Moduler</h4>
            <a>
            <div id="lmål1">
                <p><a id="alevering" href="http://home.uia.no/hallgeir/is110/moduler/modul-1/beskrivelse.xhtml">Læringsmål modul 1</a></p>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Bruke BlueJ, bl.a. til å:</li>
                    <li style="list-style-type:none;">Åpne, lagre, og lukke prosjekter.</li>
                    <li style="list-style-type:none;">Lage objekter</li>
                    <li style="list-style-type:none;">Kalle metoder i objektene, med og uten parametere</li>
                    <li style="list-style-type:none;">Bruke editoren til å se på kildekoden til en klasse</li>
                    <li style="list-style-type:none;">Kunne kompilere prosjektet</li>
                    <li>Litt java, du skal f.eks.</li>
                    <li style="list-style-type:none;">Kunne kjenne igjen en klassedefinisjon, og kunne finne navnet på klassen</li>
                    <li style="list-style-type:none;">Kjenne til forskjellige typer data</li>
                    <li style="list-style-type:none;">Kalle metoder med et objekt som parameter</li>
                    <li style="list-style-type:none;">Kalle metoder som returnerer en verdi</li>
                    <li style="list-style-type:none;">Kjenne forskjellen mellom klasser og objekter</li>
                </ul>
            </div>
            <footer>
            <!--Morten upload code-->
                <jsp:include page="upload.jsp"/>
            <!--Morten upload code-->
            </footer>
        </div>
    </body>
=======
<%-- 
    Document   : ModulLevering
    Created on : 22.sep.2017, 10:24:31
    Author     : jenny
--%>
<%--This is a jsp page--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Levering</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {
                font-family:Segoe UI;
            }
            .form1 {
                border:1px black solid;
                margin-left:15px;
            }
            #lmål1 {
                margin-left:24px;
                font-size:15px;
            }
            .alevering {
                text-decoration:none;
            }
            .alevering:hover {
                color:#4169E1;
            }
            #p1 {
                margin-left:10px;
                margin-bottom:-3px;
                margin-top:-5px;
            }
            #Modulh21 {
                margin-left: 0px;
                display: inline-block;
            }
        </style>
    </head>
    <body>
        <header>
            <jsp:include page="HeaderMenu.jsp"/>
        </header>
        <div>
            <p style="font-size: 30px;"></p> <!--Margin error somewhere. No idea how this fixed the issue-->
            <h1 id="Modulh21">Modul 1</h1>
            <h3>Læringsmål:</h3>
            <a href="Moduler">
                <h4 id="p1">Oversikt over alle Moduler</h4>
            <a>
            <div id="lmål1">
                <p><a id="alevering" href="http://home.uia.no/hallgeir/is110/moduler/modul-1/beskrivelse.xhtml">Læringsmål modul 1</a></p>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Bruke BlueJ, bl.a. til å:</li>
                    <li style="list-style-type:none;">Åpne, lagre, og lukke prosjekter.</li>
                    <li style="list-style-type:none;">Lage objekter</li>
                    <li style="list-style-type:none;">Kalle metoder i objektene, med og uten parametere</li>
                    <li style="list-style-type:none;">Bruke editoren til å se på kildekoden til en klasse</li>
                    <li style="list-style-type:none;">Kunne kompilere prosjektet</li>
                    <li>Litt java, du skal f.eks.</li>
                    <li style="list-style-type:none;">Kunne kjenne igjen en klassedefinisjon, og kunne finne navnet på klassen</li>
                    <li style="list-style-type:none;">Kjenne til forskjellige typer data</li>
                    <li style="list-style-type:none;">Kalle metoder med et objekt som parameter</li>
                    <li style="list-style-type:none;">Kalle metoder som returnerer en verdi</li>
                    <li style="list-style-type:none;">Kjenne forskjellen mellom klasser og objekter</li>
                </ul>
            </div>
            <footer>
            <!--Morten upload code-->
                <jsp:include page="upload.jsp"/>
            <!--Morten upload code-->
            </footer>
        </div>
    </body>
>>>>>>> Test
</html>