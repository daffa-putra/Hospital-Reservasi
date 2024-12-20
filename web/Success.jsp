<%-- 
    Document   : success
    Created on : Jul 19, 2024, 12:10:47 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservasi Berhasil</title>
    <style>
         body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            color: #333;
        }

        h1 {
            color: #4CAF50;
        }

        p {
            font-size: 18px;
            text-align: center;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            text-decoration: none;
            color: #fff;
            background-color: #4CAF50;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>
    <h1>Reservasi Anda Berhasil</h1>
    <p>Terima kasih telah melakukan reservasi. Kami akan segera menghubungi Anda.</p>
    <a href="TabelReservasi.jsp">Go to Tabel</a>
</body>
</html>