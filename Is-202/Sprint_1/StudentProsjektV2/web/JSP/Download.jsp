<%-- 
    Document   : Download
    Created on : 23.okt.2017, 12:11:04
    Author     : hytta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h3>Last ned modul</h3> <!--Move the upload aspect too a java class.-->
        <form method="post" action="DownloadServlet" enctype="multipart/form-data">
            <center>                 
                    <table border="0">                          
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Download">
                            </td>
                        </tr>
                    </table>               
            </center>
        </form>
    </body>
</html>
