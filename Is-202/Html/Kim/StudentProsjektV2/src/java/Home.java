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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>\n" +
"<html>\n" +
"    <head>\n" +
"        <title>Studentlisten</title>\n" +
"        <style>\n" +
"            body {\n" +
"                font-family: Segoe UI;\n" +
"            }\n" +
"            #table01 {\n" +
"                width: 90%;\n" +
"                margin-left: 8%;\n" +
"                margin-right: 2%;\n" +
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
"            \n" +
"            .divlines1 {\n" +
"                width: 35px;\n" +
"                height: 5px;\n" +
"                background-color: black;\n" +
"                margin: 7px 0;\n" +
"            }\n" +
"            #button1menu {\n" +
"                background-color: #f7f7f7;\n" +
"                border: none;\n" +
"                color: white;\n" +
"                padding: 15px 32px;\n" +
"                text-align: center;\n" +
"                text-decoration: none;\n" +
"                display: inline-block;\n" +
"                position: absolute;\n" +
"                top: 0;\n" +
"                right: 0;\n" +
"                margin-top: 18.5px;\n" +
"                margin-right: 21px;\n" +
"            }\n" +
"        </style>\n" +
"    </head>\n" +
"    <body>\n" +
"        <header>\n" +
"            <div id=\"headerbox1\" class=\"headerbox\">\n" +
"                <div id=\"menudiv1\" class=\"divfrontpage\">\n" +
"                    <h1 id=\"h1menu1\">Studentlisten</h1>\n" +
"                    <form id=\"search00\" class=searchclass>\n" +
"                        <button id=\"search01\">Søk</button>\n" +
"                        <input id=\"search02\" type=\"search\" name=\"search1\">\n" +
"                    </form>\n" +
"                </div>\n" +
"                <div id=\"sumbox1\">\n" +
"                    <p id=\"psum\">X̄ =<b>12</b></p>\n" +
"                </div>\n" +
"                <div>\n" +
"                    <form action=\"test.html\">\n" +
"                        <button id=\"button\">test</button>\n" +
"                    </form>\n" +
"                </div>\n" +
"            </div>\n" +
"        </header>\n" +
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
"                    <td><a href=\"blogg1\">Tonnes.blogg.no</a></td>\n" +
"                    <td><a href=\"mailto:tonnes.mail@gmail.com\">tonnes.mail@gmail.com</a></td>\n" +
"                    <td>40</td>\n" +
"                    <td>10</td>\n" +
"                    <td>10</td>\n" +
"                    <td>10</td>\n" +
"                    <td>10</td>\n" +
"                    <td>osv</td>\n" +
"                </tr>\n" +
"                <tr>\n" +
"                    <td><a href=\"profil2\">Brannmann Sam</a></td>\n" +
"                    <td><a href=\"blogg2\">Samblogg.com</a></td>\n" +
"                    <td><a href=\"mailto:brannSam.mann@gmail.com\">brannSam.mann@gmail.com</a></td>\n" +
"                    <td>24</td>\n" +
"                    <td>6</td>\n" +
"                    <td>6</td>\n" +
"                    <td>4</td>\n" +
"                    <td>8</td>\n" +
"                    <td>osv</td>\n" +
"                </tr>\n" +
"                <tr>\n" +
"                    <td><a href=\"profil3\">Byggmester Bob</a></td>\n" +
"                    <td><a href=\"blogg3\">Paalblogg.no</a></td>\n" +
"                    <td><a href=\"mailto:byggmester.bob@gmail.com\">byggmester.bob@gmail.com</a></td>\n" +
"                    <td>33</td>\n" +
"                    <td>10</td>\n" +
"                    <td>10</td>\n" +
"                    <td>7</td>\n" +
"                    <td>6</td>\n" +
"                    <td>osv</td>\n" +
"                </tr>\n" +
"            </table>\n" +
"        </div>\n" +
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
