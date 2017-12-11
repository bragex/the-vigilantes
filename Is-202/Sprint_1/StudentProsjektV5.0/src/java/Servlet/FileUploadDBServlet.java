package Servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // File kan vær opp til 16mb
public class FileUploadDBServlet extends HttpServlet {
     
    // Brukes for å koble til databasen.
    private String dbURL = "jdbc:mysql://localhost:3306/SLIT";
    private String dbUser = "root";
    private String dbPass = "root";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // Henter verdier fra text linjene i databasen. 
        String filNavn = request.getParameter("filNavn");
        String module = request.getParameter("module");
        String studentID = request.getParameter("studentID");
              
        InputStream inputStream = null; // streamen opp til databasen. 
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("file");
        if (filePart != null) {
            // Brukes for å teste opp mot debugging. 
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // Forbindelse til databasen. 
        String message = null;  // Melding blir sendt tilbake til klienten. 
         
        try {
            // Forbindelse til databasen. 
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
            
 
            // Lager SQL statement.
            String sql = "INSERT INTO submit (submit_name, module_id, student_id, submit_file) values (?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, filNavn);
            statement.setString(2, module);
            statement.setString(3, studentID);

            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(4, inputStream);
            }
 
            // Sender en kommando til database serveren hvis det er vellyket. 
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
            }
          
        }
    }
}
