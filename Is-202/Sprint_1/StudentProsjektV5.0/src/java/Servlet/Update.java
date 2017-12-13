package Servlet;


import Java.Tools;
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
 * @author jenny
 */
@WebServlet(name = "Update", urlPatterns = {"/Update"})
public class Update extends HttpServlet {

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
        HttpSession session = request.getSession(); 
        String user = (String) session.getAttribute ("user"); 
        String gpass = request.getParameter("gpass");
        session.setAttribute("gpass", gpass);
        String npass1 = request.getParameter("npass1");
        session.setAttribute("npass1", npass1);
        String npass2 = request.getParameter("npass2");
        session.setAttribute("npass2", npass2);
        
         
         try (PrintWriter out = response.getWriter()) {
             
         if (gpass.equals((String)session.getAttribute("pass"))){
             
         if (npass1.equals(npass2)){
            Tools dbTools = new Tools(); 
            dbTools.connect();
            dbTools.update(user, npass1);
            
             RequestDispatcher rd = request.getRequestDispatcher("JSP/Innstillinger.jsp");
             rd.include (request, response);
             out.println ("Passoret er endret");
         }
         
         else {
             RequestDispatcher rd = request.getRequestDispatcher("JSP/Innstillinger.jsp");
             rd.include (request, response);
             out.println ("De nye passordene er ikke like");
         }
         }
         else {
             RequestDispatcher rd = request.getRequestDispatcher("JSP/Innstillinger.jsp");
             rd.include (request, response);
             out.println ("Feil gammelt passord");
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
