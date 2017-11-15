/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Java.Tools;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author bags
 */
@WebServlet(name = "tilbakemeldingLager", urlPatterns = {"/tilbakemeldingLager"})
public class tilbakemeldingLager extends HttpServlet {

    
    
    private String dbURL = "jdbc:mysql://localhost:3306/SLIT";
    private String dbUser = "root";
    private String dbPass = "";
    
    
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
            
            //Tools dbTools = new Tools();
            //dbTools.connect();
            
        Connection conn = null; // Forbindelse til databasen. 
        String message = null;  // Melding blir sendt tilbake til klienten. 
         
        try {
            // Forbindelse til databasen. 
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
            
            String sql = "INSERT INTO feedback (feedback_id, feedback_content, feedback_points, submit_id) values (?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, fId);
            statement.setString(2, content);
            statement.setInt(3, parsePoints);
            statement.setString(4, sId);
            
            
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // Lukker databasen 
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            
            out.println("</body>");
            out.println("</html>");
            }
            }
        }
    }
}
