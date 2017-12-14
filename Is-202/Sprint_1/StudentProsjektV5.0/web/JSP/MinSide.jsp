<%--  
    Document   : MinSide 
    Created on : 22.sep.2017, 10:25:22 
    Author     : by-cr 
--%> 
<%@page import="Java.Tools"%> 
<%@page import="java.sql.*"%> 
<%Class.forName("com.mysql.jdbc.Driver");%> 
<%--This is the user profile--%> 
<%--Depends on HeaderMenu.jsp--%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="javax.servlet.jsp.JspWriter"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>MinSide</title> 
    </head> 
    <body> 
        <header> 
            <jsp:include page="HeaderMenu.jsp"/> 
        </header>         
        <%
            //Driver for database
            Class.forName("com.mysql.jdbc.Driver");
            //Kobling til databasen
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/slit", "root", "asd123");
            
            //variabel med innlogget bruker verdi
            String brukernavn = (String)session.getAttribute("fnavn");
            String query = "SELECT * FROM user where user_fname = '" + brukernavn + "'";  
            Statement st = conn.createStatement();
                    String farge1 = "PaleGreen"; 
                    String farge2 = "PaleGreen";
                    String farge3 = "PaleGreen";
                    String farge4 = "PaleGreen";
                    String farge5 = "PaleGreen"; 
            try {
                    ResultSet rs = st.executeQuery(query);
                    rs.next();
                    String m1 = rs.getString("user_m1"); 
                    String m2 = rs.getString("user_m2"); 
                    String m3 = rs.getString("user_m3"); 
                    String m4 = rs.getString("user_m4"); 
                    String m5 = rs.getString("user_m5"); 
                    
                    int f1 = Integer.valueOf(m1); 
                    if (f1<7) { 
                        farge1="LightCoral"; 
                    }
                    else if (f1==0) {
                        farge1="lightgrey";
                    } 
                    else {
                        farge1="paleGreen";
                    } 
                    
                    int f2 = Integer.valueOf(m2); 
                    if (f2<7) { 
                        farge2="LightCoral"; 
                    }
                    else if (f2<1) {
                        farge2="lightgrey";
                    } 
                    else {
                        farge2="paleGreen";
                    } 
                     
                    int f3 = Integer.valueOf(m3); 
                    if (f3<7) { 
                        farge3="LightCoral"; 
                    }
                    else if (f3<1) {
                        farge3="lightgrey";
                    } 
                    else {
                        farge3="paleGreen";
                    } 
                     
                    int f4 = Integer.valueOf(m4); 
                    if (f4<7) { 
                        farge4="LightCoral"; 
                    }
                    else if (f4<1) {
                        farge4="lightgrey";
                    } 
                    else {
                        farge4="paleGreen";
                    } 
                 
                    int f5 = Integer.valueOf(m5); 
                    if (f5<7) { 
                        farge5="LightCoral"; 
                    }
                    else if (f5<1) {
                        farge5="lightgrey";
                    } 
                    else {
                        farge5="paleGreen";
                    }
                    //debug
                    //out.println(m1 + m2 + m3 + m4 + m5);
                %>
        <div id="bodydiv"> <!--Implement users and Database!--> 
            <h1 id="MinSideh1">Min side</h1> 
            <div class = "MinSidediv"> 
                <p>Navn: <%=session.getAttribute("fnavn")%> <%=session.getAttribute("lnavn")%></p>  
                <p>Blogg:</p> 
                <p>E-post: </p> 
            </div> 
                <form> 
                    <button style="background-color:<%=farge1%>">Modul1</button>  
                    <button style="Background-color:<%=farge2%>">Modul2</button>  
                    <button style="background-color:<%=farge3%>">Modul3</button>  
                    <button style="background-color:<%=farge4%>">Modul4</button>  
                    <button style="background-color:<%=farge5%>">Modul5</button>
                </form> 
            <%}
            finally {
                st.close();
            }%>     
                 
                 
              
                    
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
     
