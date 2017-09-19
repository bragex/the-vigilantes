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
 * @author Amand
 */
@WebServlet(name = "TilbakeMelding", urlPatterns = {"/TilbakeMelding"})
public class TilbakeMelding extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Tilbakemelding</title>");
            out.println("<style>" +
                        "div {width: 300px; border: 2px solid black;" +
                        "padding: 15px; margin: 10px;}" +
                        "h1 {margin: 10px;}" +
                        "p {margin: 10px;}" +
                        "body {font-family: Segoe UI}" +
                        "</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Modul 1</h1>");
            out.println("<p><b>Tilbakemelding</b></p>");
            out.println("<div>"
                    + "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue pharetra enim, at efficitur nibh iaculis nec. Pellentesque neque felis, faucibus at sapien ut, suscipit aliquam dolor</p>"
                    + "<p>Praesent bibendum accumsan arcu, eget vulputate orci commodo at. Aliquam non lacus sed velit sagittis euismod nec molestie nibh. Pellentesque euismod felis in pharetra placerat.</p>"
                    + "<p>Aliquam ante leo, tristique in hendrerit sit amet, faucibus et odio. Quisque varius viverra tincidunt. Nam pharetra ac urna vel venenatis.</p>"
                    + "</div>");
            out.println("<form action=\"Home\">"
                    + "<p><input type=\"submit\" value=\"Hjem\"></p></form>");
            out.println("</body>");
            out.println("</html>");
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