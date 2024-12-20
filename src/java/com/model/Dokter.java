package com.model;

public class Dokter {
    private int id;
    private String nama;
    private String spesialis;
    private int poliId;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getSpesialis() {
        return spesialis;
    }

    public void setSpesialis(String spesialis) {
        this.spesialis = spesialis;
    }

    public int getPoliId() {
        return poliId;
    }

    public void setPoliId(int poliId) {
        this.poliId = poliId;
    }
}
