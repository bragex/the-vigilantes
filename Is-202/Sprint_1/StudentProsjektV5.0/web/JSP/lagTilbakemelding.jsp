<%-- 
    Document   : lagTilbakemelding
    Created on : 15.nov.2017, 12:05:02
    Author     : bags
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%--
    Denne siden skal bestå av felt hvor man lager en tilbakemelding.
    Trenger felt for feedback_id, feedback_content, feedback_date, feedback_points, submit_id
    Denne løsningen vil ikke være den beste.
--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>lagTilbakemelding</title>
    </head>
    <body>
        <h3>Lag Tilbakemelding</h3> <!--Move the upload aspect too a java class.-->
        <form method="post" action="tilbakemeldingLager" enctype="multipart/form-data">
            <center>                 
                    <table border="0">
                        <h3>et eller annet</h3>
                        <tr>
                            <td>feedback_id: </td>
                            <td><input type="text" name="fId" size="50"/></td>
                        </tr>
                        <tr>
                            <td>feedback_content: </td>
                            <td><input type="text" name="content" size="50"/></td>
                        </tr>
                        <%-- 
                        <tr>
                            <td>feedback_date: </td>
                            <td><input type="text" name="date" size="50"/></td>
                        </tr>
                        --%>
                        <tr>
                            <td>feedback_points: </td>
                            <td><input type="text" name="points" size="50"/></td>
                        </tr>
                        <tr>
                            <td>submit_id: </td>
                            <td><input type="text" name="sId" size="50"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Save">
                            </td>
                        </tr>
                    </table>               
            </center>
        </form>
    </body>
</html>
