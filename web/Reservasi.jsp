<%-- 
    Document   : Reservasi
    Created on : Jul 18, 2024, 11:15:35 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservasi Online</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #f4f4f9;
}

.consultation-form {
    background-color: #fff;
    padding: 20px 40px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 500px;
    box-sizing: border-box;
}

.consultation-form h1 {
    margin-bottom: 20px;
    font-size: 2em;
    color: #333;
}

.consultation-form label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #555;
}

.consultation-form input,
.consultation-form select,
.consultation-form textarea {
    width: calc(100% - 22px);
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    font-size: 1em;
    color: #333;
    background-color: #f9f9f9;
}

.consultation-form textarea {
    resize: vertical;
    height: 100px;
}

.consultation-form button {
    width: 100%;
    padding: 10px;
    background-color: #5cb85c;
    border: none;
    border-radius: 5px;
    font-size: 1.2em;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.consultation-form button:hover {
    background-color: #4cae4c;
}

    </style>
</head>
<body>
    <form class="consultation-form" action="AddReservasi.jsp" method="post">
        <h1>Reservasi Online</h1>
        <label for="nama">Nama Pasien</label>
        <input type="text" id="nama" name="nama_pasien" required>

        <label for="jenis-kelamin">Jenis Kelamin</label>
        <select id="jenis-kelamin" name="jenis_kelamin" required>
            <option value="Pria">Pria</option>
            <option value="Wanita">Wanita</option>
        </select>

        <label for="umur">Umur</label>
        <input type="number" id="umur" name="umur" required>

        <label for="alamat">Alamat</label>
        <input type="text" id="alamat" name="alamat" required>

        <label for="keluhan">Keluhan</label>
        <textarea id="keluhan" name="keluhan" required></textarea>

        <label for="dokter">Pilih Dokter</label>
        <select id="dokter" name="dokter" required>
            <option value="Dr.Winda Meyrisa">Dr.Winda Meyrisa</option>
            <option value="Dr.Lestari Raharjo">Dr.Lestari Raharjo</option>
        </select>
        
        <label for="tanggal">Tanggal</label>
        <input type="date" id="tanggal" name="tanggal" required>

        <button type="submit">Reservasi</button>
    </form>
</body>
</html>

