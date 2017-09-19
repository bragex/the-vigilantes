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
            out.println("<!DOCTYPE html>\n" +
"\n" +
"<html>\n" +
"    <head>\n" +
"        <title>Moduler</title>\n" +
"        <meta charset=\"UTF-8\">\n" +
"        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
"        <style>\n" +
"           body{font-family: Segoe UI;margin-left:2%;}ul{list-style-type:none;}h1{font-size:2vw;}li{font-size:1.1vw;}\n" +
"        </style>\n"+
"    </head>\n" +
"    <body>\n" +
"        <h1>Modul oversikt</h1>\n" +
"           <table>\n" +
"                <tr>\n" +
"                    <td>\n" +
"                        <ul>\n" +
"                            <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-1/beskrivelse.xhtml\">Modul 1</a></li> \n" +
"                             <li<a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-2/beskrivelse.xhtml\">Modul 2</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-3/beskrivelse.xhtml\">Modul 3</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-4/beskrivelse.xhtml\">Modul 4</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-5/beskrivelse.xhtml\">Modul 5</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-6/beskrivelse.xhtml\">Modul 6</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-7/beskrivelse.xhtml\">Modul 7</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-8/beskrivelse.xhtml\">Modul 8</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-9/beskrivelse.xhtml\">Modul 9</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-10/beskrivelse.xhtml\">Modul 10</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-11/beskrivelse.xhtml\">Modul 11</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-12/beskrivelse.xhtml\">Modul 12</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-13/beskrivelse.xhtml\">Modul 13</a></li> \n" +
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-14/beskrivelse.xhtml\">Modul 14</a></li> \n" +    
"                             <li><a href=\"http://home.uia.no/hallgeir/is110/moduler/modul-15/beskrivelse.xhtml\">Modul 15</a></li> \n" +                     
"                        </ul>\n" +
"                    </td>\n" +
"                    <td>\n" +
"                        <ul>\n" +
"                             <li><a href=\"ModulLevering\">Lever her!</a></li> \n" +
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
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +
"                             <li>Lever her!</li>\n" +                    
"                        </ul>\n" +
"                    </td>\n" +
"                </tr>\n" +
"           </table> \n" +
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
