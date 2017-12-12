package Servlet;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
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
 * Denne Servelten sjekker loggin infoen opp mot en bruker i databasen for¨å se om den finner en matchende bruker.
 * Hvis den finner en match blir det da sent med et par sessions som brukes videre i programmet for å identifisere brukeren og gi rettigheter.
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
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(); // Oppretter en session
        String idName=request.getParameter("uname");
        session.setAttribute("user", idName);   //Setter  user navnet som en session kalt idName
        String pwd=request.getParameter("pass");
        try (PrintWriter out = response.getWriter()) {
        Class.forName("com.mysql.jdbc.Driver");
              
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/slit","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from user where user_fname='"+idName+"'");   //Ser i databasen for alle med gitt brukernavn
if(rs.next()) 
{ 
if(rs.getString(4).equals(pwd))
{
    String bruker = rs.getString(6);
    session.setAttribute("bruker", bruker); // En session som gir deg rettigheter basert på retighetene til brukeren fra databasen
    RequestDispatcher rd = request.getRequestDispatcher("Home"); 
    rd.forward(request, response);
    

} 
}
else 
{ out.println("Feil passord eller brukernavn.");
                RequestDispatcher rd = request.getRequestDispatcher("index.html");
                rd.include(request, response);
} 
        
    }   catch (ClassNotFoundException ex) {
            Logger.getLogger(First.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /*@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            rd.forward(request, response);
        }*/

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(First.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(First.class.getName()).log(Level.SEVERE, null, ex);
        }
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

