<%-- 
    Document   : TilbakeMelding
    Created on : 22.sep.2017, 11:10:35
    Author     : by-cr
--%>
<%--This page shows the user the --%>
<%--Depends on HeaderMenu.jsp--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tilbakemelding</title>
        <style>
            .pmargin {
                width: 300px;
                border: 2px solid black;
                padding: 15px; 
                margin: 10px;
            }
            .pdiv {
                margin-left: 10px;
            }
        </style>
    </head>
    <body>
        <header>
            <jsp:include page="HeaderMenu.jsp"/>
        </header>
        <h1>Modul 1</h1>
        <div class="pmargin">
            <p><b>Tilbakemelding</b></p>
            <div id="pdiv">
                <p> <!--not final--> <!--Implement users and diffrent modules.-->
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                    Aliquam congue pharetra enim, at efficitur nibh iaculis nec. 
                    Pellentesque neque felis, faucibus at sapien ut, suscipit aliquam dolor. 
                    Praesent bibendum accumsan arcu, eget vulputate orci commodo at. 
                    Aliquam non lacus sed velit sagittis euismod nec molestie nibh. 
                    Pellentesque euismod felis in pharetra placerat. Aliquam ante leo, tristique in hendrerit sit amet, faucibus et odio. 
                    Quisque varius viverra tincidunt. Nam pharetra ac urna vel venenatis.
                </p>
            </div>
        </div>
    </body>
</html>


