<%-- 
    Document   : MinSide
    Created on : 22.sep.2017, 10:25:22
    Author     : by-cr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <title>Minside</title>
    <style>
        .button {
            background-color: gray;
            border: none;
            color: white;
            padding: 10px 25px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
        .button1 {
            background-color: lightgreen; 
            color: black; border: 1px solid green;
        }
        .button2 {
            background-color: lightcoral; 
            color: black; border: 1px solid red;
        }
        .button3 {
            background-color: gold;
            color: black; border: 1px solid orange;
        }
        .button4 {
            background-color: lightgray;
            color: black; border: 1px solid gray;
        }
        .disabled {
            background-color: gray;
            color: black;
            cursor: not-allowed; border: 1px solid black;
        }
        form {
            display: inline;
        }
        body{font-family:Segoe UI; margin-left:10px;}
        #minsidediv1{margin-left:15px;}n"+
    </style>
</head>
<body>
    <h1>Min side</h1>
    <p>Navn:</p>
    <p>Blogg</p>
    <p>E-post:</p>
    <div id="minsidediv1">
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
    </div>
</body>
</html>
