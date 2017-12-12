/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Dette er en Java klasse som er laget for å holde metoder som bruker av flere
 * sider. Dette har vi valgt å gjøre for å ikke ha duplisering av kode, samt å
 * lette kunne lese koden.
 *
 * @author by-cr
 */
public class Tools {

    String URL = "jdbc:mysql://localhost:3306/slit";
    String USERNAME = "root";
    String PASSWORD = "root";
    Connection connection = null;
    PreparedStatement insertUsers = null;
    PreparedStatement selectUsers = null;
    PreparedStatement selectUsersDel = null;
    PreparedStatement deleteUser = null;
    PreparedStatement feedback = null;
    ResultSet resultSet = null;

    /**
     * Kobbler til databasen med oppgitt brukernavn og passord
     */
    public void connect() {
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (SQLException ex) {
            Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //Henter ut en liste med fra databasen av brukere og modulpoenge de har.
    public void User(String user) {
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            selectUsers = connection.prepareStatement(
                    " SELECT user_id, user_fname, user_lname, user_email, user_m1, user_m2, user_m3, user_m4, user_m5 FROM user where user_status='Student' ORDER BY FIELD(user_fname, '" + user + "') DESC");

            //" SELECT user_fname, user_lname, user_email, user_m1, user_m2, user_m3, user_m4, user_m5 FROM user;");
        } catch (SQLException e) {
        }
    }

    // Laggrer et resultSet fra en spørring til database
    public ResultSet getUser() {
        try {
            resultSet = selectUsers.executeQuery();

        } catch (SQLException e) {
        }

        return resultSet;
    }

    //Lager en ny bruker i databasen
    public void newUser(String first, String last, String password, String email, String status) {

        PreparedStatement newStud;
        int result = 0;
        try {
            insertUsers = connection.prepareStatement(
                    "INSERT INTO user (user_fname, user_lname, user_password, user_email, user_status)"
                    + " VALUES (?, ?, ?, ?, ?)");
            insertUsers.setString(1, first);
            insertUsers.setString(2, last);
            insertUsers.setString(3, password);
            insertUsers.setString(4, email);
            insertUsers.setString(5, status);
            result = insertUsers.executeUpdate();

        } // end try     
        catch (SQLException ex) {
            ex.printStackTrace();

        }
    }

    // Sletter en bruker fra databasen. Gir en alfabetisk liste hvor du hvelger hvem som slettes. Slettes basert på id.
    public void Delete() {
        try {

            selectUsersDel = connection.prepareStatement(
                    "SELECT user_id, user_fname, user_lname FROM user ORDER BY user_fname");

            deleteUser = connection.prepareStatement(
                    "DELETE FROM user WHERE user_id = ?");
        } catch (SQLException e) {
        }

    }

    /*
     *aggrer et resultSet fra en spørring til database. 
     *Dette er det samme som getUser, er bare brukt med et annet navn for å gjøre kodingen lettere
    */
    public ResultSet getUserDel() {

        try {
            resultSet = selectUsersDel.executeQuery();
        } catch (SQLException e) {
        }

        return resultSet;
    }
    /**
     * Sletter en user fra tabelen user i databasen basert på id
     * @param id
     * @return 
     */
    public int deleteUser(Integer id) {
        int result = 0;

        try {
            deleteUser.setInt(1, id);
            result = deleteUser.executeUpdate();
        } catch (SQLException e) {
        }
        return result;
    }

    public void createFeedback(String content, int points, int sId) {
        
        PreparedStatement newStud; 
        int result = 0;   
        try {
            feedback = connection.prepareStatement(
                                            "INSERT INTO feedback (feedback_content, feedback_date, feedback_points, submit_id)"
                                             + " VALUES (?, current_timestamp, ?, ?)");
            feedback.setString(1, content);
            feedback.setInt(2, points);
            feedback.setInt(3, sId);
            result = feedback.executeUpdate();
        }
        catch (SQLException ex) {
                            ex.printStackTrace();

        }
    }

    public void søk(String Navn) throws SQLException {
        String navn = Navn;
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/slit", "root", "root");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from user where user_fname='" + navn + "'");
        if (rs.next()) {
            if (rs.getString(2).equals(navn)) {
                rs = st.executeQuery("SELECT user_fname, user_lname, user_email, user_m1, user_m2, user_m3, user_m4, user_m5 FROM user WHERE user_fname='" + navn + "'");
            }

        } else {
            if (rs.getString(2).equals(navn)) {
                rs = st.executeQuery("SELECT user_fname, user_lname, user_email, user_m1, user_m2, user_m3, user_m4, user_m5 FROM user WHERE user_fname='" + navn + "'");
            }
        }

        out.println("Ingen ved navnet " + Navn + " funnet");

    }

    public void poeng() {

    }
}
