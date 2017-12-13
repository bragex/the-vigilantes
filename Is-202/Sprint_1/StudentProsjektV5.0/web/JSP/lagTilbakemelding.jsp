<%-- 
    Document   : lagTilbakemelding
    Created on : 15.nov.2017, 12:05:02
    Author     : bags
--%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%--
    Denne siden skal bestå av felt hvor man lager en tilbakemelding.
    Denne løsningen vil ikke være den beste.
--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lag Tilbakemelding</title>
    </head>
    <body>
        <h3>Lag Tilbakemelding</h3>
        <form method="post" action="tilbakemeldingLager">
            <center>                 
                    <table border="0">
                        <tr>
                            <td>Tilbakemelding Tekst: </td>
                            <td><input type="text" name="content" size="50"/></td>
                        </tr>
                        <tr>
                            <td>Poeng: 1-10</td>
                            <td><input type="text" name="points" size="50"/></td>
                        </tr>
                        <%-- Dårlig løsning --%>
                        <tr>
                            <td>Submit ID: Krever at foreleser kan ID på innlevering</td>
                            <td><input type="text" name="sId" size="50"/></td>
                        </tr>
                        <tr>
                            <td>Modul: Eks. user_m1 for modul 1</td>
                            <td><input type="text" name="module" size="50"/></td>
                        </tr>
                        <tr>
                            <td>Bruker ID: Krever at foreleser kan bruker ID til student</td>
                            <td><input type="text" name="uId" size="50"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Save" name="send"/>
                            </td>
                        </tr>
                    </table>
            </center>
        </form>
    </body>
</html>
