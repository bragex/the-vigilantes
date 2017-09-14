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
@WebServlet(urlPatterns = {"/Moduler"})
public class Moduler extends HttpServlet {

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
"\n" +
"<html>\n" +
"    <head>\n" +
"        <title>Is-200 prosjekt</title>\n" +
"        <meta charset=\"UTF-8\">\n" +
"        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
"    </head>\n" +
"    <body>\n" +
"        <h1>Modul oversikt</h1>\n" +
"        <p>Go to <a href=\"Moduler\">Moduler</a></p>\n" +
"        \n" +
"         <table>\n" +
"                <tr>\n" +
"                    <td>\n" +
"                        <ul>\n" +
"                            <li><a href=\"Moduler\">Modul 1</a></li> \n" +
"                             <li>Modul 2</li>\n" +
"                             <li>Modul 3</li>\n" +
"                             <li>Modul 4</li>\n" +
"                             <li>Modul 5</li>\n" +
"                             <li>Modul 6</li>\n" +
"                             <li>Modul 7</li>\n" +
"                             <li>Modul 8</li>\n" +
"                             <li>Modul 9</li>\n" +
"                             <li>Modul 10</li>\n" +
"                             <li>Modul 11</li>\n" +
"                             <li>Modul 12</li>\n" +
"                        </ul>\n" +
"                    </td>\n" +
"                    <td>\n" +
"                        <ul>\n" +
"                             <li>Lever her!</li> \n" +
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +
"                        </ul>\n" +
"                    </td>\n" +
"                </tr>\n" +
"        </table> \n" +
"        \n" +
"\n" +
"        \n" +
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
