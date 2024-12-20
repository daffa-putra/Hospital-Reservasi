    <%-- 
    Document   : admin
    Created on : Jul 15, 2024, 6:47:39 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <style>
            *{
                background-color: black;
            }
            .container{
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                color: white;
            }
            .con-main{
                display: flex;
               justify-content: space-between;
               gap: 20px;
               margin: 30px;
            }
            .con-isi1{
                border: solid white;
                padding: 20px 65px;
                color: white;
            }
            .con-isi1:hover{
                color: blue;
            }
            .con-isi2{
                border: solid white;
                padding: 20px 40px;
                color: white;
            }   
            .con-isi2:hover{
                color: blue;
            }
            .con-isi3{
                border: solid white;
                padding: 20px 40px;
                color: white;
            }
            .con-isi3:hover{
                color: blue;
            }
           
        </style>
            
    </head>
    <body>
        <div class="container">   
            <h1>Halaman Admin</h1>
            <div class="con-main">
                <a href="Dokter.jsp"><h2 class="con-isi2">ADD DOKTER</h2><a>     
                <a href="AdminProduct.jsp"><h2 class="con-isi2">ADD Poli</h2><a>   
                <a href="ListProduct.jsp"><h2 class="con-isi3">LIST Jadwal</h2><a> 
            </div>
        </div>
    </body>
</html>
