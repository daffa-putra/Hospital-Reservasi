/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controller;

import com.db.DBConnection;
import com.model.SignUpBeans;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SignUpDAO {
    public void registerUser(SignUpBeans signup) throws SQLException {
    Connection conn = null;
    PreparedStatement stmt = null; //menyiapan query sql

    try {
        conn = new DBConnection().setConnection();
        String sql = "INSERT INTO tbl_signup (username, email, password) VALUES (?, ?, ?)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, signup.getUsername());
        stmt.setString(2, signup.getEmail());
        stmt.setString(3, signup.getPassword());

        stmt.executeUpdate();
    } finally {
        if (stmt != null) {
            stmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
}

public static List<SignUpBeans> getAllUser() {
        List<SignUpBeans> UserList = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = new DBConnection().setConnection();
            String sql = "SELECT * FROM tbl_signup";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                SignUpBeans su = new SignUpBeans();
                su.setUsername(rs.getString("username"));
                su.setEmail(rs.getString("email"));
                su.setPassword(rs.getString("password"));
                UserList.add(su);
            }
        } catch (SQLException e) {
            System.out.println("Error in getAllProducts: " + e.getMessage());
        } 
        return UserList;
}
}
