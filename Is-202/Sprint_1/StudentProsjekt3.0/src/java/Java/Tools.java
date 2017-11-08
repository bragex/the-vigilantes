/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *Dette er en Java klasse som er laget for å holde metoder som bruker av flere sider.
 * Dette har vi valgt å gjøre for å ikke ha duplisering av kode, samt å lette kunne lese koden.
 * @author by-cr
 */
public class Tools {

    String URL = "jdbc:mysql://localhost:3306/slit";
    String USERNAME = "root";
    String PASSWORD = "";
    Connection connection = null;
    PreparedStatement insertUsers = null;
    PreparedStatement selectUsers = null;
    PreparedStatement selectUsersDel = null;
    PreparedStatement deleteUser = null;
    ResultSet resultSet = null;
    
    public void connect() {
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (SQLException ex) {
            Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //Henter ut en liste med studenter og modulpoeng.
    public void User() {
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            selectUsers = connection.prepareStatement(
                    /*  "SELECT user_fname, user_lname, user_email, m1_points, m2_points, m3_points, m4_points, m5_points FROM user, m1, m2, m3, m4, m5 where user.user_id  = m1.user_id and user.user_id = m2.user_id and user.user_id = m3.user_id and user.user_id = m4.user_id and user.user_id = m5.user_id;"); */
                    " SELECT user_fname, user_lname, user_email, m1_points, m2_points, m3_points, m4_points, m5_points "
                    + " FROM user, m1, m2, m3, m4, m5 "
                    + " where user.user_id  = m1.user_id "
                    + " and user.user_id = m2.user_id "
                    + " and user.user_id = m3.user_id "
                    + " and user.user_id = m4.user_id "
                    + " and user.user_id = m5.user_id; ");

        } catch (SQLException e) {
        }
    }

    public ResultSet getUser() {
        try {
            resultSet = selectUsers.executeQuery();

        } catch (SQLException e) {
        }

        return resultSet;
    }

        //Lager en ny bruker i databasen
    public void newUser(String first, String last, String email, String status) {
            
         PreparedStatement newStud; 
         int result = 0;                    
            try {
                insertUsers = connection.prepareStatement(
                                            "INSERT INTO user (user_fname, user_lname, user_email, user_status)"
                                             + " VALUES (?, ?, ?, ?)");
                insertUsers.setString(1, first);
                insertUsers.setString(2, last);
                insertUsers.setString(3, email);
                insertUsers.setString(4, status);
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

                public ResultSet getUserDel() {

                    try {
                        resultSet = selectUsersDel.executeQuery();
                    } catch (SQLException e) {
                    }

                    return resultSet;
                }

                public int deleteUser(Integer id) {
                    int result = 0;

                    try {
                        deleteUser.setInt(1, id);
                        result = deleteUser.executeUpdate();
                    } catch (SQLException e) {
                    }
                    return result;
                }
}