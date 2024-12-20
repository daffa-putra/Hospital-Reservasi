<%-- 
    Document   : TabelReservasi
    Created on : Jul 19, 2024, 12:55:05 AM
    Author     : ASUS
--%>

<%@page import="com.controller.ReservasiDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.model.ReservasiBeans"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    List<ReservasiBeans> list = ReservasiDAO.getAllRecords();
    request.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        /* Gaya Umum untuk Tabel */
        .table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
        }

        .table thead th {
            background-color: #f8f9fc;
            color: #4e73df;
            font-weight: bold;
            padding: 12px;
            text-align: left;
            border-bottom: 2px solid #4e73df;
        }

        .table tbody tr {
            border-bottom: 1px solid #ddd;
        }

        .table tbody td {
            padding: 12px;
            vertical-align: middle;
        }

        .table tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .table tbody tr:hover {
            background-color: #e9ecef;
        }

        /* Gaya untuk Tombol */
        .btn {
            display: inline-block;
            font-size: 14px;
            font-weight: 600;
            color: #ffffff;
            background-color: #4e73df;
            border: 1px solid transparent;
            border-radius: 4px;
            padding: 6px 12px;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.2s, border-color 0.2s;
        }

        .btn:hover {
            background-color: #2e59d9;
            border-color: #2e59d9;
        }

        .btn:focus, .btn:active {
            outline: none;
            box-shadow: none;
        }

        /* Gaya untuk Header Kartu */
        .card-header {
            background-color: #4e73df;
            color: #ffffff;
            padding: 15px;
            font-size: 16px;
            font-weight: 700;
            border-bottom: 2px solid #2e59d9;
        }

        .card-body {
            padding: 20px;
        }

        /* Gaya untuk Kartu */
        .card {
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Gaya untuk Tabel Responsif */
        .table-responsive {
            overflow-x: auto;
        }
    </style>
</head>
<body>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Reservation Data</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Nama Pasien</th>
                            <th>Jenis Kelamin</th>
                            <th>Umur</th>
                            <th>Alamat</th>
                            <th>Keluhan</th>
                            <th>Dokter</th>
                            <th>Tanggal</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="r">     
                            <tr>
                                <td>${r.getNama_pasien()}</td>
                                <td>${r.getJenis_kelamin()}</td>
                                <td>${r.getUmur()}</td>
                                <td>${r.getAlamat()}</td>
                                <td>${r.getKeluhan()}</td>
                                <td>${r.getDokter()}</td>
                                <td>${r.getTanggal()}</td>
                                <td>                                    
                                    <a href="FormUpdate.jsp?id_reservasi=${r.getId_reservasi()}">Update</a>
                                    <a href="DeleteReservasi.jsp?id_reservasi=${r.getId_reservasi()}" class="btn btn-danger btn-icon-split" onclick="return confirm('Are you sure you want to delete this item?');">
                                        <span class="text">Delete</span>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>

  
                            