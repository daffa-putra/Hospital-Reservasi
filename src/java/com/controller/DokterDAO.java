package com.controller;

import com.db.DBConnection;
import com.model.Dokter;
import com.model.Jadwal;
import com.model.Poli;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DokterDAO {

    public List<Dokter> getAllDokter() {
        List<Dokter> dokterList = new ArrayList<>();
        String sql = "SELECT * FROM dokter";

        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Dokter dokter = new Dokter();
                dokter.setId(rs.getInt("id"));
                dokter.setNama(rs.getString("nama"));
                dokter.setSpesialis(rs.getString("spesialis"));
                dokter.setPoliId(rs.getInt("poli_id"));
                dokterList.add(dokter);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dokterList;
    }

    public Dokter getDokterById(int id) {
        Dokter dokter = new Dokter();
        String sql = "SELECT * FROM dokter WHERE id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                dokter.setId(rs.getInt("id"));
                dokter.setNama(rs.getString("nama"));
                dokter.setSpesialis(rs.getString("spesialis"));
                dokter.setPoliId(rs.getInt("poli_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dokter;
    }

    public void addDokter(Dokter dokter) {
        String sql = "INSERT INTO dokter (nama, spesialis, poli_id) VALUES (?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, dokter.getNama());
            ps.setString(2, dokter.getSpesialis());
            ps.setInt(3, dokter.getPoliId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateDokter(Dokter dokter) {
        String sql = "UPDATE dokter SET nama = ?, spesialis = ?, poli_id = ? WHERE id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, dokter.getNama());
            ps.setString(2, dokter.getSpesialis());
            ps.setInt(3, dokter.getPoliId());
            ps.setInt(4, dokter.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteDokter(int id) {
        String sql = "DELETE FROM dokter WHERE id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Poli> getAllPoli() {
        List<Poli> poliList = new ArrayList<>();
        String sql = "SELECT * FROM poli";

        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Poli poli = new Poli();
                poli.setId(rs.getInt("id"));
                poli.setNama(rs.getString("nama"));
                poliList.add(poli);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return poliList;
    }

    public void addJadwal(Jadwal jadwal) {
        String sql = "INSERT INTO jadwal (dokter_id, hari, waktu) VALUES (?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, jadwal.getDokterId());
            ps.setString(2, jadwal.getHari());
            ps.setString(3, jadwal.getWaktu());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Jadwal> getJadwalByDokterId(int dokterId) {
        List<Jadwal> jadwalList = new ArrayList<>();
        String sql = "SELECT * FROM jadwal WHERE dokter_id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, dokterId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Jadwal jadwal = new Jadwal();
                jadwal.setId(rs.getInt("id"));
                jadwal.setDokterId(rs.getInt("dokter_id"));
                jadwal.setHari(rs.getString("hari"));
                jadwal.setWaktu(rs.getString("waktu"));
                jadwalList.add(jadwal);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return jadwalList;
    }

    public void updateJadwal(Jadwal jadwal) {
        String sql = "UPDATE jadwal SET hari = ?, waktu = ? WHERE id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, jadwal.getHari());
            ps.setString(2, jadwal.getWaktu());
            ps.setInt(3, jadwal.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteJadwal(int id) {
        String sql = "DELETE FROM jadwal WHERE id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
