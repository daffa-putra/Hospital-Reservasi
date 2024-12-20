<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.model.Dokter" %>
<%@ page import="com.model.Poli" %>
<%@ page import="com.model.Jadwal" %>
<%@ page import="com.controller.DokterDAO" %>

<%
    DokterDAO dokterDAO = new DokterDAO();
    List<Dokter> dokterList = dokterDAO.getAllDokter();
    List<Poli> poliList = dokterDAO.getAllPoli();
%>

<html>
<head>
    <title>Dokter Management</title>
</head>
<body>
    <h1>Dokter Management</h1>

    <h2>Tambah Dokter</h2>
    <form action="Dokter.jsp" method="post">
        <input type="hidden" name="action" value="insert">
        <div>
            <label for="nama">Nama:</label>
            <input type="text" name="nama" id="nama" required>
        </div>
        <div>
            <label for="spesialis">Spesialis:</label>
            <input type="text" name="spesialis" id="spesialis" required>
        </div>
        <div>
            <label for="poli_id">Poli:</label>
            <select name="poli_id" id="poli_id">
                <% for (Poli poli : poliList) { %>
                    <option value="<%= poli.getId() %>"><%= poli.getNama() %></option>
                <% } %>
            </select>
        </div>
        <button type="submit">Tambah Dokter</button>
    </form>

