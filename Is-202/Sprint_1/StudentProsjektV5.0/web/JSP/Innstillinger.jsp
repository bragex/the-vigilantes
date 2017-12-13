
<%-- 
    Document   : Innstillinger
    Created on : 12.des.2017, 13:17:54
    Author     : jenny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <header>
            <jsp:include page="HeaderMenu.jsp"/>
    </header>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Innstillinger</title>
    </head>
    <body>
        <h1>Innstillinger</h1>
        
        <form action="Update" method="post">
                <p><b>Gammelt passord: </b></p><input type="password" name="gpass" placeholder="Gammelt passord"/><br/>
                <p><b>Nytt passord: </b></p><input type="password" name="npass1" placeholder=" Nytt passord"/><br/>
                <p><b>Gjenta nytt passord: </b></p><input type="password" name="npass2" placeholder="Gjenta nytt passord"/><br/>
                <br>
                <input id="UpdatePass" type="submit" value="Endre"/>
              
            </form>
    </body>
</html>
