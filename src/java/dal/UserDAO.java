/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Account;
import java.security.interfaces.RSAKey;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class UserDAO extends DBContext {

    public Account getUser(String email, String pass) {
        String sql = "select * from [User] where user_email=? AND user_pass=?";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, email);
            pre.setString(2, pass);
            ResultSet resultSet = pre.executeQuery();
            while (resultSet.next()) {
                Account acc = new Account(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
                        resultSet.getString(4), resultSet.getBoolean(5));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean checkEmailExisted(String regisEmail) {
        String sql = "select * from [User] where user_email=?";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, regisEmail);
            ResultSet resultSet = pre.executeQuery();
            while (resultSet.next()) {
                return resultSet.getString("user_email").equals(regisEmail);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void addUser(Account account) {
        String sql = """
                     INSERT INTO [dbo].[User]
                                ([user_name]
                                ,[user_email]
                                ,[user_pass]
                                ,[isAdmin])
                          VALUES
                                (?
                                ,?
                                ,?
                                ,?)""";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, account.getUser_name());
            pre.setString(2, account.getUser_email());
            pre.setString(3, account.getUser_pass());
            pre.setBoolean(4, account.isIsAdmin());
            pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        System.out.println(new UserDAO().checkEmailExisted("admin123@gmail.com"));
    }

}
