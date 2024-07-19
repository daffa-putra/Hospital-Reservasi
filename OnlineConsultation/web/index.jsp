<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- phospor icon -->
    <script src="https://unpkg.com/@phosphor-icons/web"></script>
    <!--Feather sections-->
    <script src="https://unpkg.com/feather-icons"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');
    </style>
    
        <style>
        * {
            font-family: 'Poppins';
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            outline: none;
            border: none;
            text-decoration: none;
        }

        body {
            font-family: 'Courier New', sans-serif;
            background-color: rgb(3, 137, 137);
            color: white;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1.4rem 7% 0;
            background-color: rgb(3, 137, 137);
            height: 70px;
            border-bottom: white;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 9999;
        }

        .navbar-logo span {
            font-size: 2rem;
            font-weight: 700;
            color: rgb(0, 0, 0);
            font-style: italic;
        }

        .navbar-logo {
            font-size: 2rem;
            font-weight: 700;
            color: white;
            font-style: italic;
            padding-bottom: 20px;
        }

        .navbar-nav a {
            color: white;
            display: inline-block;
            font-size: 1rem;
            margin: 0 14px;
            padding-bottom: 20px;
        }

        .navbar-nav a:hover {
            color: blue;
        }

        /* Hero section */
        .hero {
            min-height: 100vh;
            display: flex;
            align-items: center;
            background-image: url("img/1..png");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            position: relative;
        }

        .content {
            padding: 1.4rem 7%;
            max-width: 60rem;
            color: black;
        }

        .content h1 {
            font-size: 4rem;
            line-height: 1.2;
        }
        /* Hero section end*/


        /* about section */
        #about {
            padding: 20px;
            text-align: center;
        }

        #about h1 {
            margin-bottom: 20px;
            font-size: 2em;
            color: #ffffff;
        }

        #about .rows {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        #about .aboute-img {
            position: relative;
            overflow: hidden;
            border: 5px solid #ccc; /* Warna dan ukuran border */
            border-radius: 15px; /* Membuat sudut border melengkung */
            transition: border-color 0.5s ease;
        }

        #about .aboute-img img {
            width: 100%;
            height: auto;
            transition: transform 0.5s ease;
        }

        #about .aboute-img:hover img {
            transform: scale(1.1);
        }

        #about .aboute-img::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.3);
            opacity: 0;
            transition: opacity 0.5s ease;
            border-radius: 15px; /* Membuat sudut border melengkung */
        }

        #about .aboute-img:hover::after {
            opacity: 1;
        }

        #about .aboute-img:hover {
            border-color: #444; /* Mengubah warna border saat hover */
        }

        /* Responsiveness */
        @media (max-width: 768px) {
            #about .rows {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 480px) {
            #about .rows {
                grid-template-columns: 1fr;
            }
        }
        /* about section end*/

        /*dokter section  */

        #dokter {
            padding: 40px 20px;
            text-align: center;
            background-color: #f9f9f9;
        }

        #dokter h1 {
            margin-bottom: 40px;
            font-size: 2.5em;
            color: #333;
        }

        .dokter-rows {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            justify-items: center;
        }

        .dokter-img {
            position: relative;
            overflow: hidden;
            border: 5px solid #ccc; /* Warna dan ukuran border */
            border-radius: 15px; /* Membuat sudut border melengkung */
            transition: border-color 0.5s ease, transform 0.5s ease;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }

        .dokter-img img {
            width: 100%;
            height: auto;
            border-radius: 15px; /* Membuat sudut border melengkung */
            transition: transform 0.5s ease;
        }

        .dokter-img h3 {
            margin-top: 15px;
            font-size: 1.5em;
            color: #333;
        }

        .dokter-img h2 {
            margin-top: 10px;
            font-size: 1.2em;
            color: #666;
            font-weight: normal;
        }

        .dokter-img:hover {
            border-color: #444; /* Mengubah warna border saat hover */
            transform: scale(1.05);
        }

        .dokter-img:hover img {
            transform: scale(1.1);
        }

        /* Responsiveness */
        @media (max-width: 768px) {
            .dokter-rows {
                grid-template-columns: 1fr;
            }
        }
        /*dokter section  */

        #reservasi {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 4rem;
        }

        .reserv {
            position: relative;
            width: 100%;
            height: 100%;
            margin-top: 20px; /* Menambahkan margin top */
        }

        .img-reserv {
            position: relative;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .img-reserv img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
            transition: transform 0.5s ease;
        }

        .img-reserv:hover img {
            transform: scale(1.1);
        }

        .img-reserv .text-overlay {
            position: absolute;
            top: 20%; /* Sesuaikan posisi vertikal dari teks */
            left: 10%; /* Memindahkan teks ke kiri */
            transform: translate(0, -50%);
            color: white;
            font-size: 3em;
            padding: 20px 40px;
            margin-top: 15rem;
            border-radius: 10px;
            transition: background-color 0.5s ease;
        }

        .img-reserv:hover .text-overlay {
            background-color: rgba(255, 255, 255, 0.7);
        }

        /* Responsiveness */
        @media (max-width: 768px) {
            .img-reserv .text-overlay {
                font-size: 2em;
                padding: 16px 32px;
                top: 25%; /* Sesuaikan posisi vertikal dari teks */
            }
        }

        @media (max-width: 480px) {
            .img-reserv .text-overlay {
                font-size: 1.5em;
                padding: 12px 24px;
                top: 30%; /* Sesuaikan posisi vertikal dari teks */
            }
        }

        /* Section Kontak */
.contact{
    padding: 6rem 7% 10px;
    background-color: rgb(3, 137, 137);
    color: white;
}

.contact h2 {
    text-align: center;
    font-size: 2.6rem;
    margin-bottom: 1rem;
    color: rgb(255, 255, 255);
}

.contact p{
    text-align: center;
    max-width: 40rem;
    margin: auto;
    font-size: 1rem;
    font-weight: 100;
    color: rgb(255, 255, 255);
}
.con-icon{
    color: rgb(255, 255, 255);
    display: flex;
    justify-content: center;
}
.con-icon i{
    font-size: 35px;
    margin: 20px;
}
.con-icon span{
    font-size: 15px;
    margin: 20px;
}
    </style>
</head>

<body>

    <!--Navbar stars-->
    <nav class="navbar" x-data=>
        <a href="#" class="navbar-logo">DXZ <span>Hospital</span></a>
        <div class="navbar-nav">
            <a href="#home">Home</a>
            <a href="#about">Fasilitas</a>
            <a href="#reservasi">Reservasi</a>
            <a href="#contact">Kontak</a>
            <a href="TabelReservasi.jsp">Tabel</a>
            <a href="Login.jsp">Login</a>
        </div>
    </nav> 
<!-- Hero Section start -->
<section class="hero" id="home">
    <main class="content">
        <h1>Ayo Sayangi Tubuh Dengan Menjaga Kesehatan</h1>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolorem, velit facere! Voluptate ratione optio
            inventore animi ipsam reiciendis necessitatibus nostrum.</p>
    </main>
</section>
<!-- Hero section end -->

<!-- about section star -->
<section id="about" class="about">
    <h1> ~ Fasilitas ~</h1>
    <div class="rows">
        <div class="aboute-img">
            <img src="img/f1.jpg"  alt="Tentang Kami">
            <h3>Ruangan Rawat Inap</h3>
        </div>
        <div class="aboute-img">
            <img src="img/f2.jpg" alt="Tentang Kami">
            <h3>Ruangan Operasi</h3>
        </div>
        <div class="aboute-img">
            <img src="img/f5.jpg" alt="Tentang Kami">
            <h3>Ruangan IGD</h3>
        </div>
        <div class="aboute-img">
            <img src="img/f4.jpg" alt="Tentang Kami">
            <H3>Ruangan Radiologi</H3>
        </div>
    </div>
</section>
<!-- about section end -->


<!-- dokter section  -->
<section id="dokter" class="dokter">
    <h1> ~ Daftar Dokter ~</h1>
    <div class="dokter-rows">
        <div class="dokter-img">
            <img src="img/do3.jpg"  alt="dokter">
            <h3>Dr.Lestari Raharjo</h3>
            <h2>14.00 - 18.00</h2>
        </div>
        <div class="dokter-img">
            <img src="img/do2.jpg"  alt="dokter">
            <h3>Dr.Winda Meyrisa</h3>
            <h2>10.00 - 14.00</h2>
        </div>
    </div>
</section>
<!-- dokter section end -->

<!-- Hero Section start -->
<section class="Reservasi" id="reservasi">
    <main class="reserv">
        <div class="img-reserv">
            <img src="img/d1.jpg" alt="Tentang Kami">
            <div class="text-overlay"><a href="Reservasi.jsp">Reservasi Sekarang</a></div>
        </div>
    </main>
</section>
<!-- Hero section end -->

<!-- Contac Section start -->
<section id="contact" class="contact">
    <h2>Contact</h2>
    <div class="con-icon">
        <i class="ph ph-instagram-logo"><span>Instagram : DXZ_Hospital</span></i>
    </div>
    <p>DXZ Hospital Merupakan Layanan Untuk Konsultasi Kesehatan Terbaik Yang Ada Di Indonesia, Mampu 
        Dipercaya Untuk Menjaga Kesehatan Anda, Menjaga Lebih Baik Daripada Mengobati :D
    </p>

    <div class="row">
        <div class="maps">
        </div>
    </div>
</section>
<!-- Contac Section end -->
