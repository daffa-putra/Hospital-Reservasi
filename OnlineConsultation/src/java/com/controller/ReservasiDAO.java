/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controller;

import com.db.DBConnection;
import com.model.ReservasiBeans;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ReservasiDAO {
     static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;
    
    public static int save(ReservasiBeans rb) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("insert into db_reservasi.tbl_reservasi(nama_pasien,jenis_kelamin,umur,alamat,keluhan,dokter, tanggal) values(?,?,?,?,?,?,?)");
            ps.setString(1, rb.getNama_pasien());
            ps.setString(2, rb.getJenis_kelamin());
            ps.setInt(3, rb.getUmur());
            ps.setString(4, rb.getAlamat());
            ps.setString(5, rb.getKeluhan());
            ps.setString(6, rb.getDokter());
            ps.setString(7, rb.getTanggal());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

public static List<ReservasiBeans> getAllRecords() {
        List<ReservasiBeans> list = new ArrayList<>();

        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from tbl_reservasi");
            ResultSet rsu;
            rsu = ps.executeQuery();
            while (rsu.next()) {
                ReservasiBeans u = new ReservasiBeans();
                u.setId_reservasi(rsu.getInt("id_reservasi"));
                u.setNama_pasien(rsu.getString("nama_pasien"));
                u.setJenis_kelamin(rsu.getString("jenis_kelamin"));
                u.setUmur(rsu.getInt("umur"));
                u.setAlamat(rsu.getString("alamat"));
                u.setKeluhan(rsu.getString("keluhan"));
                u.setDokter(rsu.getString("dokter"));
                u.setTanggal(rsu.getString("tanggal"));
                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public static int delete(ReservasiBeans rb) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("delete from db_reservasi.tbl_reservasi where id_reservasi=?");
            ps.setInt(1, rb.getId_reservasi());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

        return status;
    }
    public static int update(ReservasiBeans rb) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("update db_reservasi.tbl_reservasi set nama_pasien=?,jenis_kelamin=?,umur=?,alamat=?,keluhan=?,dokter=?,tanggal=? where id_reservasi=?");
            ps.setString(1, rb.getNama_pasien());
            ps.setString(2, rb.getJenis_kelamin());
            ps.setInt(3, rb.getUmur());
            ps.setString(4, rb.getAlamat());
            ps.setString(5, rb.getKeluhan());
            ps.setString(6, rb.getDokter());
            ps.setString(7, rb.getTanggal());
            ps.setInt(8, rb.getId_reservasi());
            status = ps.executeUpdate();
        Logger.getLogger(ReservasiDAO.class.getName()).log(Level.INFO, "Update executed with status: " + status);
        } catch (SQLException e) {
            Logger.getLogger(ReservasiDAO.class.getName()).log(Level.SEVERE, "Error updating review: ", e);
        }
        return status;
    }
    public static ReservasiBeans getRecordById(int id) {
        ReservasiBeans u = null;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from tbl_reservasi where id_reservasi=?");
            ps.setInt(1, id);
            ResultSet rsu;
            rsu = ps.executeQuery();
            while (rsu.next()) {
                u = new ReservasiBeans();
                u.setId_reservasi(rsu.getInt("id_reservasi"));
                u.setNama_pasien(rsu.getString("nama_pasien"));
                u.setJenis_kelamin(rsu.getString("jenis_kelamin"));
                u.setUmur(rsu.getInt("umur"));
                u.setAlamat(rsu.getString("alamat"));
                u.setKeluhan(rsu.getString("keluhan"));
                u.setDokter(rsu.getString("dokter"));
                u.setTanggal(rsu.getString("tanggal"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return u;
    }
}

