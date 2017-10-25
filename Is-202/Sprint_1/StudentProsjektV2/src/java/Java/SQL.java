package Java;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author by-cr
 */

public class SQL {

    String URL = "jdbc:mysql://localhost:3306/slit";
    String USERNAME = "root";
    String PASSWORD = "";
    Connection connection = null;
    PreparedStatement insertUsers = null;
    PreparedStatement selectUser = null;
    PreparedStatement deleteUser = null;
    ResultSet resultSet = null;

    public void Connect() {
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
     public void Sql() {
            try {
                   
                    insertUsers = connection.prepareStatement(
                    "INSERT INTO user (user_fname, user_lname, user_email, user_status)"
                    + " VALUES (?, ?, ?, ?)" );
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
     
     public void User() {
            try {
                    connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    selectUser = connection.prepareStatement(
                      /*  "SELECT user_fname, user_lname, user_email, m1_points, m2_points, m3_points, m4_points, m5_points FROM user, m1, m2, m3, m4, m5 where user.user_id  = m1.user_id and user.user_id = m2.user_id and user.user_id = m3.user_id and user.user_id = m4.user_id and user.user_id = m5.user_id;"); */
                       

                       " SELECT user_fname, user_lname, user_email, m1_points, m2_points, m3_points, m4_points, m5_points " +
                         " FROM user, m1, m2, m3, m4, m5 " +
                         " where user.user_id  = m1.user_id " +
                         " and user.user_id = m2.user_id " +
                         " and user.user_id = m3.user_id " +
                         " and user.user_id = m4.user_id " +
                         " and user.user_id = m5.user_id; ");

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
     
      public void Delete() {
                    try {
                        connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

                        selectUser = connection.prepareStatement(
                                "SELECT user_id, user_fname, user_lname FROM user");

                        deleteUser = connection.prepareStatement(
                                "DELETE FROM user WHERE user_id = ?");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }

                public ResultSet getUser() {

                    try {
                        resultSet = selectUser.executeQuery();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }

                    return resultSet;
                }

                public int deleteUser(Integer id) {
                    int result = 0;

                    try {
                        deleteUser.setInt(1, id);
                        result = deleteUser.executeUpdate();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    return result;
    
    
}
                
                public void Insert() {
            try {
                    connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    insertUsers = connection.prepareStatement(
                    "INSERT INTO user (user_fname, user_lname, user_email, user_status)"
                    + " VALUES (?, ?, ?, ?)" );
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            public int setUsers (String first, String last, String email, String status) {

                int result = 0;
                try {
                insertUsers.setString(1, first);
                insertUsers.setString(2, last);
                insertUsers.setString(3, email);
                insertUsers.setString(4, status);
                result = insertUsers.executeUpdate();

                } catch (SQLException e) {
                    e.printStackTrace();
}
            
         return result;
}
}
