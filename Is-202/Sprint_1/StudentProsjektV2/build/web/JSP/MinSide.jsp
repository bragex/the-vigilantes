<<<<<<< HEAD
<%-- 
    Document   : MinSide
    Created on : 22.sep.2017, 10:25:22
    Author     : by-cr
--%>
<%--This is a jsp page--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MinSide</title>
        <style>
            .button {
                color: white;
                padding: 10px 25px;
                text-align: center;
                text-decoration: none;
                font-size: 16px;
                cursor: pointer;
                display: inline-block;
                margin: 1px;
            }
            .button1 {
                background-color: lightgreen;
                color: black; 
                border: 1px solid black;
                float: left;
            }
            .button2 {
                background-color: lightcoral; 
                color: black; 
                border: 1px solid black;
                float: left;
            }
            .button3 {
                background-color: gold;
                color: black; 
                border: 1px solid black;
                float: left;
            }
            .button4 {
                background-color: lightgray;
                color: black; 
                border: 1px solid black;
                float: left;        
            }
            .button5 {
                background-color: lightgray;
                color: black; 
                border: 1px solid black;
                float: left;        
            }            
            .disabled {
                background-color: gray;
                color: black;
                cursor: not-allowed; 
                border: 1px solid black;
                float: left;
            }    
            .bodydiv{
                font-family:Segoe UI; 
                
            }
            #MinSideh1{
                font-size: 2vw;
            }
            .MinSidediv{
                margin-left: 8px;
            }
        </style>
    </head>
    <body>
        <header>
            <jsp:include page="HeaderMenu.jsp"/>
        </header>
        <div id="bodydiv">
            <h1 id="MinSideh1">Min side</h1>
            <div class = "MinSidediv">
                <p>Navn: <!--Declare name--></p>
                <p>Blogg: <!--Declare blog link--></p>
                <p>E-post:<!--Declare epost link--></p>
            </div>
            <div class="divminside">
                <form action="TilbakeMelding" method="post">                    
                    <button class="button button1">Modul 1</button>
                </form>
                <form action="TilbakeMelding" method="post"> 
                    <button class="button button2" onclick="alert = "Modul ikke godkjent">Modul2</button>
                </form>
                <form action="TilbakeMelding" method="post">
                    <button class="button button3" onclick="alert = "Venter godkjenning">Modul3</button>
                </form>
                <form action="ModulLevering" method="post">
                    <button class="button button4">Modul4</button>
                </form>
                <form action="" method="post">
                    <button class="button disabled" onclick="alert('Vent til modul 4 er levert')">Modul5</button>
                </form>
                <form action="" method="post">
                    <button class="button disabled" onclick="alert('Vent til modul 5 er levert')">Modul6</button>
                </form>
                <form action="" method="post">
                    <button class="button disabled" onclick="alert('Vent til modul 6 er levert')">Modul7</button>
                </form>
            </div>
        </div>
    </body>
</html>
=======
<%-- 
    Document   : MinSide
    Created on : 22.sep.2017, 10:25:22
    Author     : by-cr
--%>
<%--This is a jsp page--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MinSide</title>
        <style>
            .button {
                color: white;
                padding: 10px 25px;
                text-align: center;
                text-decoration: none;
                font-size: 16px;
                cursor: pointer;
                display: inline-block;
                margin: 1px;
            }
            .button1 {
                background-color: lightgreen;
                color: black; 
                border: 1px solid black;
                float: left;
            }
            .button2 {
                background-color: lightcoral; 
                color: black; 
                border: 1px solid black;
                float: left;
            }
            .button3 {
                background-color: gold;
                color: black; 
                border: 1px solid black;
                float: left;
            }
            .button4 {
                background-color: lightgray;
                color: black; 
                border: 1px solid black;
                float: left;        
            }
            .button5 {
                background-color: lightgray;
                color: black; 
                border: 1px solid black;
                float: left;        
            }            
            .disabled {
                background-color: gray;
                color: black;
                cursor: not-allowed; 
                border: 1px solid black;
                float: left;
            }    
            .bodydiv{
                font-family:Segoe UI; 
                
            }
            #MinSideh1{
                font-size: 2vw;
            }
            .MinSidediv{
                margin-left: 8px;
            }
        </style>
    </head>
    <body>
        <header>
            <jsp:include page="HeaderMenu.jsp"/>
        </header>
        <div id="bodydiv">
            <h1 id="MinSideh1">Min side</h1>
            <div class = "MinSidediv">
                <p>Navn: <!--Declare name--></p>
                <p>Blogg: <!--Declare blog link--></p>
                <p>E-post:<!--Declare epost link--></p>
            </div>
            <div class="divminside">
                <form action="TilbakeMelding" method="post">                    
                    <button class="button button1">Modul 1</button>
                </form>
                <form action="TilbakeMelding" method="post"> 
                    <button class="button button2" onclick="alert = "Modul ikke godkjent">Modul2</button>
                </form>
                <form action="TilbakeMelding" method="post">
                    <button class="button button3" onclick="alert = "Venter godkjenning">Modul3</button>
                </form>
                <form action="ModulLevering" method="post">
                    <button class="button button4">Modul4</button>
                </form>
                <form action="" method="post">
                    <button class="button disabled" onclick="alert('Vent til modul 4 er levert')">Modul5</button>
                </form>
                <form action="" method="post">
                    <button class="button disabled" onclick="alert('Vent til modul 5 er levert')">Modul6</button>
                </form>
                <form action="" method="post">
                    <button class="button disabled" onclick="alert('Vent til modul 6 er levert')">Modul7</button>
                </form>
            </div>
        </div>
    </body>
</html>
>>>>>>> Test
