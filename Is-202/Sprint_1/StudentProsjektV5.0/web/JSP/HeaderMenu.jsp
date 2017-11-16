<%-- 
    Document   : Menu
    Created on : 22.sep.2017, 15:48:04
    Author     : Tonnes
--%>
<%--This page handels the header menu used for the rest of the page.--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                font-family: Segoe UI;
            }
            .h1header {
                font-size: 2vw;
            }
            #menudiv1 {
                display: inline;
            }
            .headerbox {
                margin: 0 0 0px;
                padding: 10px;
                height: 45px;
                border-radius: 5px;
                border: 1px solid gray;
                color: black;
            }
            
            #search01, #search02 {
                float: right;
                padding: 5px;
                padding-right: 10px;
                padding-left: 10px;
                margin-top: 1.8%;
            }
            #search01 {
                margin-right: 5.2%;
            }
            #search01,#search02,#search03 {
                margin-bottom: 1%;
                margin-top: 0.5%;
            }
            
            #h1menu1 {
                float: left;
                padding: 0px;
                margin-left: 0.5%;
                margin-top: 0px;
            }
            .divlines1 {
                width: 35px;
                height: 5px;
                background-color: black;
                margin: 6px 0;
                pointer-events: none;
            }
            .dropbtn {
                background-color: #f9f9f9;
                color: white;
                padding: 4px;
                padding-left: 7px;
                padding-right: 7px;
                border: 1px solid black;
                border-radius: 3px;
                cursor: pointer;
                display: inline-block;
                position: absolute;
                top: 0;
                right: 0;
                margin-top: 16.6px;
                margin-right: 21px;
            }
            .dropbtn:hover, .dropbtn:focus {
                background-color: #e5e5e5;
            }
            .dropdown {
                display: inline-block;
                position: absolute;
                float: right;
                top: 0;
                right: 0;
            }
            .dropdown-content {
                display: none;
                background-color: #f7f7f7;
                min-width: 100px;
                margin-top: 66px;
                margin-right: 20px;
                z-index: 1;
                border: 1px solid black;
            }
            .dropdown-content a:hover {
                background-color: #f1f1f1
            }
            .show {
                display:block;
            } 
            .linkbutton {
                background: none;
                border: none;
                color: black;
                display: block;
                text-decoration: none;
                cursor: pointer;
                font-size: 26px;
                font-family: Segoe UI;
                font-weight: bold;
                padding: 12px 16px;
                width: 100%;
                text-align: left;
            }
            .linkbutton:hover {
                background-color: lightgray;
            }
        </style>
    </head>
    <body>          <% String url = request.getRequestURI(); 
                       String url1 = "/StudentProsjektV5.0/Home"; 
                       String bruker = (String)session.getAttribute("bruker");
                    %>
                       
            <div id="headerbox1" class="headerbox">
                <div id="menudiv1" class="divfrontpage">
                    <a href="Home"><img src="pic/uia_logo.gif" alt="logo" width="200" height = 37,5></a>
                   
        <header>                    
            
    <%--Viser søkebaren bare på Home.jsp--%>
    
                    <% if (url.equals(url1)){%>
                        <form id="search00" class=searchclass action="" method="get">
                            <button id="search01">Søk</button>
                            <input id="search02" type="search" name="Search">
                        </form>
                    <%}%> 
                </div>
            </div>
        </header>    
        <div class="dropdown">
            <button onclick="myFunction()" class="dropbtn">
                <div class="divlines1"></div> <!--Dropdown menu lines-->
                <div class="divlines1"></div>
                <div class="divlines1"></div>
            </button>
            <div id="myDropdown" class="dropdown-content">
                <b>
                    <form action="Home" method="post" class="inline">
                        <button class="linkbutton">Hjem</button>
                    </form>
                    <form action="Moduler" method="post" class="inline">
                        <button class="linkbutton">Moduler</button>
                    </form>
                    <form action="studentliste" method="post" class="inline">
                        <button class="linkbutton">Innstillinger</button>
                    </form>
                    <%
                        if(!bruker.equals("Student")){
                        %>
                    <form action="AddUser" method="post" class="inline">
                        <button class="linkbutton">Legg til student</button>
                    </form>
                    <form action="DeleteUser" method="post" class="inline">
                        <button class="linkbutton">Slett student</button>
                    </form>
                        <%}
                            %>
                    <form action="SendEmail" method="post" class="inline">
                        <button class="linkbutton">Send email</button>
                    </form>
                    <form action="index.html" method="post" class="inline">
                        <button class="linkbutton">Logg ut</button>
                    </form>
                </b>
            </div>
        </div>
        <div style="display:inline-block;float:left;margin-left: 2%;margin-top: -2.5%;font-size:0.8vw;">
            <% if (session.getAttribute("user") == null) { %>
                <!--if the user value is empty, this part of the code will show.-->
            <% } else {%>
                <!--If the user value aren't empty, this part of the code will show.-->
                <b><p>Logget inn som: <%=session.getAttribute("user")%>     -       Brukerstatus: <%=session.getAttribute("bruker")%></p></b>
            <% } %>
        </div>
        <script type="text/javascript"> //Javascript for dropdown menu.
            function myFunction() {
              document.getElementById("myDropdown").classList.toggle("show");
            }
            window.onclick = function(event) {
                if (!event.target.matches('.dropbtn')) {
                var dropdowns = document.getElementsByClassName("dropdown-content");
                var i;
                for (i = 0; i < dropdowns.length; i++) {
                    var openDropdown = dropdowns[i];
                    if (openDropdown.classList.contains('show')) {
                    openDropdown.classList.remove('show');
                    }
                }
                }
            };    
        </script>
    </body>
</html>

