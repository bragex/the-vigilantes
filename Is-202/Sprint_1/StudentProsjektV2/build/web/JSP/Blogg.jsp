<%-- 
    Document   : Blogg
    Created on : 04.okt.2017, 12:04:19
    Author     : by-cr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
    <style>
            #textarea {
  display: block;
  width: 100%;
            }
        </style>
<body>
 
<table>
    <tr><td>Blogg</td></tr>
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
 
<script type="text/javascript">
 
function saveTextAsFile()
{
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
 
function destroyClickedElement(event)
{
    document.body.removeChild(event.target);
}
 
function loadFileAsText()
{
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

