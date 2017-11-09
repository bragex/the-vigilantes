package Servlet;


import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
 * Servlet som laster ned fra databasen til pcen. 
 */
@WebServlet(urlPatterns = {"/downloadServlet"})
public class FileDownloadDBServlet extends HttpServlet {
 
    // Buffer for filen. 
    private static final int BUFFER_SIZE = 4096;   
     
    // Database setings
    private String dbURL = "jdbc:mysql://localhost:3306/FileDB";
    private String dbUser = "root";
    private String dbPass = "Warstar123";
     
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // Henter upload_id fra url.
        //int uploadid = Integer.parseInt(request.getParameter("upload_id"));
         
        Connection conn = null; // Forbindelsen til databasen. 
         
        try {
            // Forbindelse til databasen. 
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // queries the database
            String sql = "Select * from `contacts` where contact_id  = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, 1); //TODO: Fix uploadId (line 37 in html, and parese this in here)
            
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                // Henter filen og file blob. 
                String fileName = result.getString("file_name");
                Blob blob = result.getBlob("file");
                InputStream inputStream = blob.getBinaryStream();
                int fileLength = inputStream.available();
                 
                System.out.println("fileLength = " + fileLength);
 
                ServletContext context = getServletContext();
 
                // sets MIME type for the file download
                String mimeType = context.getMimeType(fileName);
                if (mimeType == null) {        
                    mimeType = "application/octet-stream";
                }              
                 
                // set content properties and header attributes for the response
                response.setContentType(mimeType);
                response.setContentLength(fileLength);
                String headerKey = "Content-Disposition";
                String headerValue = String.format("attachment; filename=\"%s\"", fileName);
                response.setHeader(headerKey, headerValue);
 
                // writes the file to the client
                OutputStream outStream = response.getOutputStream();
                 
                byte[] buffer = new byte[BUFFER_SIZE];
                int bytesRead = -1;
                 
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outStream.write(buffer, 0, bytesRead);
                }
                 
                inputStream.close();
                outStream.close();             
            } else {
                // Ingen fil funnet.
                response.getWriter().print("File not found for the id: " );  
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            response.getWriter().print("SQL Error: " + ex.getMessage());
        } catch (IOException ex) {
            ex.printStackTrace();
            response.getWriter().print("IO Error: " + ex.getMessage());
        } finally {
            if (conn != null) {
                // Lukker forbindelsen til databasen når arbeidet er fullført. 
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }          
        }
    }
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        System.out.println("nullll");
    }
   }

