<%-- 
    Document   : Moduler
    Created on : 22.sep.2017, 11:33:25
    Author     : by-cr
--%>
<%--This page is for showing the user what modules exist, and a link too delivering them.--%>
<%--Depends on HeaderMenu.jsp--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Moduler</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--Implement icon? <link rel="shortcut icon" type="image/ico" href="/WebResources/uiafavicon.ico"/>-->
        <style>
            body {
                font-family: Segoe UI;
            }
            #list1 {
                list-style-type:none;
                margin-left: -25px;
                margin-top: -20px;
            }
            #h11 {
                font-size:2vw;
                
            }
            #list1 li {
                font-size:1.1vw;
                list-style: none;
            }
            #list1 a {
                text-decoration: none;
                color: #4169E1;
            }
            #list1 a:hover {
                text-decoration: none;
                color: #00BFFF;
            }
        </style>
    </head>
    <body>
        <header>
            <jsp:include page="HeaderMenu.jsp"/>
        </header>
        <h1 id="h11">Modul oversikt</h1>
        <p>IS-109 inneholder 5 moduler, i tillegg til de 10 nye i IS-110 <br>
            (alt dere lærer i IS-110 bygger på modulene fra IS-109, så dere må fortsatt kunne dem like godt).<br>
            Modul 1-10 er obligatoriske, og må tas i rekkefølge. Så er modul 14 og 15 obligatorisk.<br>
            De valgfrie modulene kan tas i hvilken som helst rekkefølge.<br>
            Minstekravet for å få gå opp til eksamen er at dere har fått godkjent de obligatoriske modulene, men husk at alle modulene er pensum.<br>
            Hvis dere sikter mot en god karakter bør dere ta alle.
        <div id="list1">
            <table> <!--Rework table?-->
                <tr>
                    <td>
                        <ul>
                            <li><a href="RessurserM1">Modul 1</a></li>
                            <li><a href="RessurserM2">Modul 2</a></li>
                            <li><a href="RessurserM3">Modul 3</a></li> 
                            <li><a href="RessurserM4">Modul 4</a></li> 
                            <li><a href="RessurserM5">Modul 5</a></li> 
                            <li><a href="RessurserM6">Modul 6</a></li>
                            <li><a href="RessurserM7">Modul 7</a></li>  
                            <li><a href="RessurserM8">Modul 8</a></li>
                            <li><a href="RessurserM9">Modul 9</a></li>
                            <li><a href="RessurserM10">Modul 10</a></li>
                            <li><a href="RessurserM11">Modul 11</a></li> 
                            <li><a href="RessurserM12">Modul 12</a></li> 
                            <li><a href="RessurserM13">Modul 13</a></li> 
                            <li><a href="RessurserM14">Modul 14</a></li>     
                            <li><a href="RessurserM15">Modul 15</a></li>                      
                        </ul>
                    </td>
                    <td>
                        <ul>
                            <li><a href="ModulLevering?modul=1">Lever her</a></li>
                            <li><a href="ModulLevering?modul=2">Lever her</a></li>
                            <li><a href="ModulLevering?modul=3">Lever her</a></li>
                            <li><a href="ModulLevering?modul=4">Lever her</a></li>                            
                            <li><a href="ModulLevering?modul=5">Lever her</a></li>
                            <li><a href="ModulLevering?modul=6">Lever her</a></li>
                            <li><a href="ModulLevering?modul=7">Lever her</a></li>
                            <li><a href="ModulLevering?modul=8">Lever her</a></li>                             
                            <li><a href="ModulLevering?modul=9">Lever her</a></li>
                            <li><a href="ModulLevering?modul=10">Lever her</a></li>
                            <li><a href="ModulLevering?modul=11">Lever her</a></li>
                            <li><a href="ModulLevering?modul=12">Lever her</a></li>
                            <li><a href="ModulLevering?modul=13">Lever her</a></li>
                            <li><a href="ModulLevering?modul=14">Lever her</a></li>
                            <li><a href="ModulLevering?modul=15">Lever her</a></li>                   
                        </ul>
                    </td>    
                </tr>    
            </table>
        </div>    
    </body>
</html>

