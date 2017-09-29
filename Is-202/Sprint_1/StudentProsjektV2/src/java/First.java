
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kim
 */
@WebServlet(urlPatterns = {"/First1"})
public class First extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) /*Change authentication from this to TomEE built-inn version.*/
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        try (PrintWriter out = response.getWriter()) {
            if (uname.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("admin")) { 
                HttpSession session = request.getSession();
                session.setAttribute("user", uname);
                RequestDispatcher rd = request.getRequestDispatcher("Home");
                rd.forward(request, response);
                /*TESTING out.println(uname);*/
            }
            else if (uname.equalsIgnoreCase("tonnes") && pass.equalsIgnoreCase("tonnes")) { 
                HttpSession session = request.getSession();
                session.setAttribute("user", uname);
                RequestDispatcher rd = request.getRequestDispatcher("Home");
                rd.forward(request, response);
            }
            else if (uname.equalsIgnoreCase("morten") && pass.equalsIgnoreCase("morten")) { 
                HttpSession session = request.getSession();
                session.setAttribute("user", uname);
                RequestDispatcher rd = request.getRequestDispatcher("Home");
                rd.forward(request, response);
            }
            else if (uname.equalsIgnoreCase("kim") && pass.equalsIgnoreCase("kim")) { 
                HttpSession session = request.getSession();
                session.setAttribute("user", uname);
                RequestDispatcher rd = request.getRequestDispatcher("Home");
                rd.forward(request, response);
            }
            else {
                out.println("Feil passord eller brukernavn.");
                RequestDispatcher rd = request.getRequestDispatcher("index.html");
                rd.include(request, response);
            }
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

