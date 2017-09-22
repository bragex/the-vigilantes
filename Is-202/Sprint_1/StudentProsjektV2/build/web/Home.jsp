<%-- 
    Document   : Home
    Created on : 22-Sep-2017, 10:30:48
    Author     : Tonnes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- Restructure jsp Folders -->
<%!
    int tint1 = 10; /*Bad way of doing things. Change me!*/
    int tint2 = 10;
    int tint3 = 10;
    int tint4 = 10;
    int bint1 = 10;
    int bint2 = 7;
    int bint3 = 8;
    int bint4 = 9;
    int mint1 = 9;
    int mint2 = 4;
    int mint3 = 7;
    int mint4 = 4;
    int sumt = tint1+tint2+tint3+tint4;
    int sumb = bint1+bint2+bint3+bint4;
    int summ = mint1+mint2+mint3+mint4;
    int savg1 = (tint1+bint1+mint1)/3;
    int savg2 = (tint2+bint2+mint2)/3;
    int savg3 = (tint3+bint3+mint3)/3;
    int savg4 = (tint4+bint4+mint4)/3;
    int posum = (sumt+sumb+summ)/3;
%>
<!DOCTYPE html>
<html>
  <head>
      <title>Studentliste</title>
      <style>
          body {
              font-family: Segoe UI;
          }
          h1 {
              font-size: 2vw;
          }
          #table01 {
              width: 90%;
              margin-left: 8%;
              margin-right: 2%;
              margin-top: 1.5%;
          }
          tr,th,td,table {
              border: 1px solid black;
              border-collapse: collapse;
          }
          th {
              font-size: 1.5vw;
          }
          td {
              font-size: 1vw;
          }
          a:link {
              text-decoration: none;
              color: #4169E1; /* Royal Blue */
          }
          a:hover {
              text-decoration: none;
              color: #00BFFF; /* DeepSkyBlue */
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
          #psum {
              text-align: center;
              font-size: 1.5vw;
              margin-top: 5px;
          }
          /* Dropdown menu + links */
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
          /* Link button with post method */
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
  <body>
      <header>
          <div id="headerbox1" class="headerbox">
              <div id="menudiv1" class="divfrontpage">
                  <h1 id="h1menu1">Studentlisten</h1>
                  <form id="search00" class=searchclass action="" method="get">
                      <button id="search01">Søk</button>
                      <input id="search02" type="search" name="Search">
                  </form>
              </div>
          </div>
      </header>
      <div id="mathdiv1">                    
      <div id="tablediv1" class="divfrontpage">
          <table id="table01">
              <tr>
                  <th>Navn</th>
                  <th>Blogg</th>
                  <th>E-post</th>
                  <th>Poengscore</th>
                  <th>Modul 1</th>
                  <th>Modul 2</th>
                  <th>Modul 3</th>
                  <th>Modul 4</th>
                  <th>osv</th>
              </tr>
              <tr>
                  <td><a href="MinSide">Tønnes Røren</a></td>
                  <td><a href="http://home.uia.no/ttrore16/">Tonnes.blogg.no</a></td>
                  <td><a href="mailto:tonnes.mail@gmail.com">tonnes.mail@gmail.com</a></td>
                  <td><%=sumt%></td>
                  <td><%=tint1%></td>
                  <td><%=tint2%></td>
                  <td><%=tint3%></td>
                  <td><%=tint4%></td>
                  <td>osv</td>
              </tr>
              <tr>
                  <td><a href="profil2">Brannmann Sam</a></td>
                  <td><a href="blogg2">Samblogg.com</a></td>
                  <td><a href="mailto:brannSam.mann@gmail.com">brannSam.mann@gmail.com</a></td>
                  <td><%=sumb%></td>
                  <td><%=bint1%></td>
                  <td><%=bint2%></td>
                  <td><%=bint3%></td>
                  <td><%=bint4%></td>
                  <td>osv</td>
              </tr>
              <tr>
                  <td><a href="profil3">Byggmester Bob</a></td>
                  <td><a href="blogg3">Paalblogg.no</a></td>
                  <td><a href="mailto:byggmester.bob@gmail.com">byggmester.bob@gmail.com</a></td>
                  <td><%=summ%></td>
                  <td><%=mint1%></td>
                  <td><%=mint2%></td>
                  <td><%=mint3%></td>
                  <td><%=mint4%></td>
                  <td>osv</td>
              </tr>
              <tr>
                  <td></td>
                  <td></td>
                  <td><b>Gjennomsnitt</b></td>
                  <td><%=posum%></td>
                  <td><%=savg1%></td>
                  <td><%=savg2%></td>
                  <td><%=savg3%></td>
                  <td><%=savg4%></td>
                  <td>osv</td>
              </tr>
          </table>
      </div>
      <div class="dropdown">
          <button onclick="myFunction()" class="dropbtn">
              <div class="divlines1"></div>
              <div class="divlines1"></div>
              <div class="divlines1"></div>
          </button>
          <div id="myDropdown" class="dropdown-content">
              <b>
                  <form action="studentliste" method="post" class="inline">
                      <button class="linkbutton">Forum</button>
                  </form>
                  <form action="Moduler" method="post" class="inline">
                      <button class="linkbutton">Moduler</button>
                  </form>
                  <form action="studentliste" method="post" class="inline">
                      <button class="linkbutton">Innstillinger</button>
                  </form>
                   <form action="index.html" method="post" class="inline">
                      <button class="linkbutton">Logg ut</button>
                  </form>
              </b>
          </div>
      </div>
      <script>
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
          }    
      </script>
  </body>
</html>