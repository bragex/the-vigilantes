/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author by-cr
 */
@WebServlet(urlPatterns = {"/Home"})
public class Home extends HttpServlet {

    private int tint1; /*Find a better way of doing this. Use hashmaps or arraylist*/
    private int tint2;private int tint3;private int tint4;private int bint1;private int bint2;private int bint3;
    private int bint4;private int mint1;private int mint2;private int mint3;private int mint4;private int savg1;
    private int savg2;private int savg3;private int savg4;private int sumt;private int sumb;private int summ;
    private int posum;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */ 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)   
            throws ServletException, IOException {
            tint1 = 10;tint2 = 10;tint3 = 10;tint4 = 10; /* Hashmaps/Arrays */
            bint1 = 10;bint2 = 7;bint3 = 8;bint4 = 9;
            mint1 = 9;mint2 = 4;mint3 = 7;mint4 = 4;
            sumt = tint1+tint2+tint3+tint4; /* Do better math */
            sumb = bint1+bint2+bint3+bint4;
            summ = mint1+mint2+mint3+mint4;
            savg1 = (tint1+bint1+mint1)/3;
            savg2 = (tint2+bint2+mint2)/3;
            savg3 = (tint3+bint3+mint3)/3;
            savg4 = (tint4+bint4+mint4)/3;
            posum = (sumt+sumb+summ)/3;
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>\n" +
"<html>\n" +
"    <head>\n" +
"        <title>Studentlisten</title>\n" +
"        <style>\n" +
"            body {\n" +
"                font-family: Segoe UI;\n" +
"            }\n" +
"            h1 {\n" +
"                font-size: 2vw;\n" +
"            }\n" +
"            #table01 {\n" +
"                width: 90%;\n" +
"                margin-left: 8%;\n" +
"                margin-right: 2%;\n" +
"				margin-top: 1.5%;\n" +
"            }\n" +
"            tr,th,td,table {\n" +
"                border: 1px solid black;\n" +
"                border-collapse: collapse;\n" +
"            }\n" +
"            th {\n" +
"                font-size: 1.5vw;\n" +
"            }\n" +
"            td {\n" +
"                font-size: 1vw;\n" +
"            }\n" +
"            a:link {\n" +
"                text-decoration: none;\n" +
"                color: #4169E1; /* Royal Blue */\n" +
"            }\n" +
"            a:hover {\n" +
"                text-decoration: none;\n" +
"                color: #00BFFF; /* DeepSkyBlue */\n" +
"            }\n" +
"            #menudiv1 {\n" +
"                display: inline;\n" +
"            }\n" +
"            .headerbox {\n" +
"                margin: 0 0 0px;\n" +
"                padding: 10px;\n" +
"                height: 45px;\n" +
"                border-radius: 5px;\n" +
"                border: 1px solid gray;\n" +
"                color: black;\n" +
"            }\n" +
"            #search01, #search02 {\n" +
"                float: right;\n" +
"                padding: 5px;\n" +
"                padding-right: 10px;\n" +
"                padding-left: 10px;\n" +
"                margin-top: 1.8%;\n" +
"            }\n" +
"            #search01 {\n" +
"                margin-right: 5.2%;\n" +
"            }\n" +
"            #search01,#search02,#search03 {\n" +
"                margin-bottom: 1%;\n" +
"                margin-top: 0.5%;\n" +
"            }\n" +
"            #h1menu1 {\n" +
"                float: left;\n" +
"                padding: 0px;\n" +
"                margin-left: 0.5%;\n" +
"                margin-top: 0px;\n" +
"            }\n" +
"            #psum {\n" +
"                text-align: center;\n" +
"                font-size: 1.5vw;\n" +
"                margin-top: 5px;\n" +
"            }\n" +
"            /* Dropdown menu + links */\n" +
"            .divlines1 {\n" +
"                width: 35px;\n" +
"                height: 5px;\n" +
"                background-color: black;\n" +
"                margin: 6px 0;\n" +
"                pointer-events: none;\n" +
"            }\n" +
"            .dropbtn {\n" +
"                background-color: #f9f9f9;\n" +
"                color: white;\n" +
"                padding: 4px;\n" +
"                padding-left: 7px;\n" +
"                padding-right: 7px;\n" +
"                border: 1px solid black;\n" +
"                border-radius: 3px;\n" +
"                cursor: pointer;\n" +
"                display: inline-block;\n" +
"                position: absolute;\n" +
"                top: 0;\n" +
"                right: 0;\n" +
"                margin-top: 16.6px;\n" +
"                margin-right: 21px;\n" +
"            }\n" +
"            .dropbtn:hover, .dropbtn:focus {\n" +
"                background-color: #e5e5e5;\n" +
"            }\n" +
"            .dropdown {\n" +
"                display: inline-block;\n" +
"                position: absolute;\n" +
"                float: right;\n" +
"                top: 0;\n" +
"                right: 0;\n" +
"            }\n" +
"            .dropdown-content {\n" +
"                display: none;\n" +
"                background-color: #f7f7f7;\n" +
"                min-width: 100px;\n" +
"                margin-top: 66px;\n" +
"                margin-right: 20px;\n" +
"                z-index: 1;\n" +
"				border: 1px solid black;\n" +
"            }\n" +
"            .dropdown-content a:hover {\n" +
"                background-color: #f1f1f1\n" +
"            }\n" +
"            .show {\n" +
"                display:block;\n" +
"            }\n" +
"            /* Link button with post method */\n" +
"            .linkbutton {\n" +
"                background: none;\n" +
"                border: none;\n" +
"                color: black;\n" +
"                display: block;\n" +
"                text-decoration: none;\n" +
"                cursor: pointer;\n" +
"                font-size: 26px;\n" +
"                font-family: Segoe UI;\n" +
"                font-weight: bold;\n" +
"                padding: 12px 16px;\n" +
"                width: 100%;\n" +
"                text-align: left;\n" +
"            }\n" +
"			.linkbutton:hover {\n" +
"				background-color: lightgray;\n" +
"			}\n" +
"        </style>\n" +
"    </head>\n" +
"    <body>\n" +
"        <header>\n" +
"            <div id=\"headerbox1\" class=\"headerbox\">\n" +
"                <div id=\"menudiv1\" class=\"divfrontpage\">\n" +
"                    <h1 id=\"h1menu1\">Studentlisten</h1>\n" +
"                    <form id=\"search00\" class=searchclass action=\"\" method=\"get\">\n" +
"                        <button id=\"search01\">Søk</button>\n" +
"                        <input id=\"search02\" type=\"search\" name=\"Search\">\n" +
"                    </form>\n" +
"                </div>\n" +
"            </div>\n" +
"        </header>\n" +
"        <div id=\"mathdiv1\"\n"+                    
"        <div id=\"tablediv1\" class=\"divfrontpage\">\n" +
"            <table id=\"table01\">\n" +
"                <tr>\n" +
"                    <th>Navn</th>\n" +
"                    <th>Blogg</th>\n" +
"                    <th>E-post</th>\n" +
"                    <th>Poengscore</th>\n" +
"                    <th>Modul 1</th>\n" +
"                    <th>Modul 2</th>\n" +
"                    <th>Modul 3</th>\n" +
"                    <th>Modul 4</th>\n" +
"                    <th>osv</th>\n" +
"                </tr>\n" +
"                <tr>\n" +
"                    <td><a href=\"MinSide\">Tønnes Røren</a></td>\n" +
"                    <td><a href=\"http://home.uia.no/ttrore16/\">Tonnes.blogg.no</a></td>\n" +
"                    <td><a href=\"mailto:tonnes.mail@gmail.com\">tonnes.mail@gmail.com</a></td>\n" +
"                    <td>"+sumt+"</td>\n" +
"                    <td>"+tint1+"</td>\n" +
"                    <td>"+tint2+"</td>\n" +
"                    <td>"+tint3+"</td>\n" +
"                    <td>"+tint4+"</td>\n" +
"                    <td>osv</td>\n" +
"                </tr>\n" +
"                <tr>\n" +
"                    <td><a href=\"profil2\">Brannmann Sam</a></td>\n" +
"                    <td><a href=\"blogg2\">Samblogg.com</a></td>\n" +
"                    <td><a href=\"mailto:brannSam.mann@gmail.com\">brannSam.mann@gmail.com</a></td>\n" +
"                    <td>"+sumb+"</td>\n" +
"                    <td>"+bint1+"</td>\n" +
"                    <td>"+bint2+"</td>\n" +
"                    <td>"+bint3+"</td>\n" +
"                    <td>"+bint4+"</td>\n" +
"                    <td>osv</td>\n" +
"                </tr>\n" +
"                <tr>\n" +
"                    <td><a href=\"profil3\">Byggmester Bob</a></td>\n" +
"                    <td><a href=\"blogg3\">Paalblogg.no</a></td>\n" +
"                    <td><a href=\"mailto:byggmester.bob@gmail.com\">byggmester.bob@gmail.com</a></td>\n" +
"                    <td>"+summ+"</td>\n" +
"                    <td>"+mint1+"</td>\n" +
"                    <td>"+mint2+"</td>\n" +
"                    <td>"+mint3+"</td>\n" +
"                    <td>"+mint4+"</td>\n" +
"                    <td>osv</td>\n" +
"                </tr>\n" +
"                <tr>\n" +
"                    <td></td>\n" +
"                    <td></td>\n" +
"                    <td><b>Gjennomsnitt</b></td>\n" +
"                    <td>"+posum+"</td>\n" +
"                    <td>"+savg1+"</td>\n" +
"                    <td>"+savg2+"</td>\n" +
"                    <td>"+savg3+"</td>\n" +
"                    <td>"+savg4+"</td>\n" +
"                    <td>osv</td>\n" +
"                </tr>\n" +
"            </table>\n" +
"        </div>\n" +
"        <div class=\"dropdown\">\n" +
"            <button onclick=\"myFunction()\" class=\"dropbtn\">\n" +
"                <div class=\"divlines1\"></div>\n" +
"                <div class=\"divlines1\"></div>\n" +
"                <div class=\"divlines1\"></div>\n" +
"            </button>\n" +
"            <div id=\"myDropdown\" class=\"dropdown-content\">\n" +
"                <b>\n" +
"                    <form action=\"studentliste\" method=\"post\" class=\"inline\">\n" +
"                        <button class=\"linkbutton\">Forum</button>\n" +
"                    </form>\n" +
"                    <form action=\"Moduler\" method=\"post\" class=\"inline\">\n" +
"                        <button class=\"linkbutton\">Moduler</button>\n" +
"                    </form>\n" +
"                    <form action=\"studentliste\" method=\"post\" class=\"inline\">\n" +
"                        <button class=\"linkbutton\">Innstillinger</button>\n" +
"                    </form>\n" +
"                     <form action=\"index.html\" method=\"post\" class=\"inline\">\n" +
"                        <button class=\"linkbutton\">Logg ut</button>\n" +
"                    </form>\n" +
"                </b>\n" +
"            </div>\n" +
"        </div>\n" +
"        <script>\n" +
"            function myFunction() {\n" +
"                document.getElementById(\"myDropdown\").classList.toggle(\"show\");\n" +
"            }\n" +
"            window.onclick = function(event) {\n" +
"              if (!event.target.matches('.dropbtn')) {\n" +
"                var dropdowns = document.getElementsByClassName(\"dropdown-content\");\n" +
"                var i;\n" +
"                for (i = 0; i < dropdowns.length; i++) {\n" +
"                  var openDropdown = dropdowns[i];\n" +
"                  if (openDropdown.classList.contains('show')) {\n" +
"                    openDropdown.classList.remove('show');\n" +
"                  }\n" +
"                }\n" +
"              }\n" +
"            }    \n" +
"        </script>\n" +
"    </body>\n" +
"</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
