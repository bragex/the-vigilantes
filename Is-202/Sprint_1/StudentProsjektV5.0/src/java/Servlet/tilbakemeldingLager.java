/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Java.Tools;
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
@WebServlet(name = "tilbakemeldingLager", urlPatterns = {"/tilbakemeldingLager"})
public class tilbakemeldingLager extends HttpServlet {

<<<<<<< HEAD
    
    
    private String dbURL = "jdbc:mysql://localhost:3306/SLIT";
    private String dbUser = "root";
    private String dbPass = "";
    
    
=======
>>>>>>> d52ea1b496f22075d66891becce65eede50afb07
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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet tilbakemeldingLager</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet tilbakemeldingLager at " + request.getContextPath() + "</h1>");
            
        String fId = request.getParameter("fId");     
        String content = request.getParameter("content");
        //String date = request.getParameter("date");
        String points = request.getParameter("points");
        int parsePoints = Integer.parseInt(points);
        String sId = request.getParameter("sId");
        int parseSId = Integer.parseInt(sId);
            
        Tools dbTools = new Tools();
        dbTools.connect();
        dbTools.createFeedback(fId, content, parsePoints, parseSId);
        
        
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
