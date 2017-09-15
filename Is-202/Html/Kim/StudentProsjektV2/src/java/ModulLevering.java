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
@WebServlet(urlPatterns = {"/ModulLevering"})
public class ModulLevering extends HttpServlet {

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
"<html>\n" +
"    <head>\n" +
"        <title>Modulside</title>\n" +
"        <meta charset=\"UTF-8\">\n" +
"        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
"        <style>\n"+
"           body {font-family:Segoe UI;}\n"+
"           .form1{border:1px black solid;margin-left:15px;}#lmål1{margin-left:24px;font-size:15px;}\n"+
"           a{text-decoration:none;}a:hover{color:#4169E1;}#p1{margin-left:10px;margin-bottom:-3px;margin-top:-5px;}\n"+
"        </style>\n"+
"    </head>\n" +
"    <body>\n" +
"       <div>\n" +
"           <h2>Modul 1</h2>\n" +
"           <h3>Læringsmål:</h3><a href=\"Moduler\"><h4 id=\"p1\">Oversikt</h4><a>\n" +
"           <div id=\"lmål1\">\n"+                    
"               <p><a href=\"link\">Læringsmål moudl 1</a></p>\n" +
"               <p><a href=\"link\">Læringsmål modul 2</a><p>\n" +
"               <p>Læringsmål modul 3</p>\n" +
"               <p>Læringsmål modul 4</p>\n" +
"               <p>Læringsmål modul 5</p>\n" +
"           </div>\n" +
"           <p><b>Last opp fil</b></p>\n" +
"           <form action=\"levere\">\n" +
"               <input class=\"form1\" type=\"file\" name=\"myfile\">\n" +
"               <input class=\"form1\" type=\"submit\">\n" +
"           </form>\n" +
"       </div> \n" +
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
