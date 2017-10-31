/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import java.io.PrintWriter;
import java.sql.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author by-cr
 */
public class Tools {

    String URL = "jdbc:mysql://localhost:3306/slit";
    String USERNAME = "root";
    String PASSWORD = "";
    Connection connection = null;
    PreparedStatement insertUsers = null;
    PreparedStatement selectUsers = null;
    PreparedStatement deleteUser = null;
    ResultSet resultSet = null;

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

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ResultSet getUser() {
        try {
            resultSet = selectUsers.executeQuery();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return resultSet;
    }
}
