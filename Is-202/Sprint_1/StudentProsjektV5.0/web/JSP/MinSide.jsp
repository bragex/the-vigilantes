<%-- 
    Document   : MinSide
    Created on : 22.sep.2017, 10:25:22
    Author     : by-cr
--%>
<%@page import="Java.Tools"%>
<%--This is the user profile--%>
<%--Depends on HeaderMenu.jsp--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MinSide</title>
        <style>
            .button {
                color: white;
                padding: 7px 10px;
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
        
        <div id="bodydiv"> <!--Implement users and Database!-->
            <h1 id="MinSideh1">Min side</h1>
            <div class = "MinSidediv">
                <p>Navn: <%=session.getAttribute("fnavn")%> <%=session.getAttribute("lnavn")%></p> 
                <p>Blogg:</p>
                <p>E-post: </p>
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
        </div><br>
        <br>
         
            <h1>Blogg</h1>
        <table>

            <tr>
                <td colspan="3">
                    <textarea id="inputTextToSave" cols="80" rows="25"></textarea>
                </td>
            </tr>
            <tr>
                <td>Lagre som:</td>
                <td><input id="inputFileNameToSaveAs"></input></td>
                <td><button onclick="saveTextAsFile()">Lagre fil</button></td>
            </tr>
            <tr>
                <td>Last opp fil</td>
                <td><input type="file" id="fileToLoad"></td>
                <td><button onclick="loadFileAsText()">Last opp valgt fil</button><td>
            </tr>
        </table>
        <script type="text/javascript"> //Crashes if you try to upload other files than text files.
            function saveTextAsFile() {
                var textToSave = document.getElementById("inputTextToSave").value;
                var textToSaveAsBlob = new Blob([textToSave], {type:"text/plain"});
                var textToSaveAsURL = window.URL.createObjectURL(textToSaveAsBlob);
                var fileNameToSaveAs = document.getElementById("inputFileNameToSaveAs").value;
                var downloadLink = document.createElement("a");
                downloadLink.download = fileNameToSaveAs;
                downloadLink.innerHTML = "Download File";
                downloadLink.href = textToSaveAsURL;
                downloadLink.onclick = destroyClickedElement;
                downloadLink.style.display = "none";
                document.body.appendChild(downloadLink);
                downloadLink.click();
            }
            function destroyClickedElement(event) {
                document.body.removeChild(event.target);
            }
            function loadFileAsText() {
                var fileToLoad = document.getElementById("fileToLoad").files[0];
                var fileReader = new FileReader();
                fileReader.onload = function(fileLoadedEvent) 
                {
                    var textFromFileLoaded = fileLoadedEvent.target.result;
                    document.getElementById("inputTextToSave").value = textFromFileLoaded;
                };
                fileReader.readAsText(fileToLoad, "UTF-8");
            }
        </script>
       </body>
</html>

