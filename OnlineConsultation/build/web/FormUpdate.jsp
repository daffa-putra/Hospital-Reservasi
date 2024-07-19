<%-- 
    Document   : FormUpdate
    Created on : Jul 19, 2024, 3:49:21 AM
    Author     : ASUS
--%>

<%@page import="com.controller.ReservasiDAO"%>
<%@page import="com.model.ReservasiBeans"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <style>
          body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.wrapper {
    max-width: 800px;
    margin: 50px auto;
    padding: 20px;
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.contact-form {
    display: flex;
    flex-direction: column;
}


.input-field {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 16px;
    box-sizing: border-box;
}

.input-field:focus {
    border-color: #007bff;
    outline: none;
}

select {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 16px;
    box-sizing: border-box;
}

select:focus {
    border-color: #007bff;
    outline: none;
}

textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 16px;
    box-sizing: border-box;
    resize: vertical;
}

textarea:focus {
    border-color: #007bff;
    outline: none;
}

button {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 4px;
    background-color: #007bff;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #0056b3;
}

.error-message {
    color: #dc3545;
    font-size: 14px;
    margin-top: -10px;
    margin-bottom: 10px;
}

label {
    margin-bottom: 5px;
    display: block;
    font-weight: bold;
}
      </style>
    </head>
    <body>
    <div class="wrapper">
        <form id="contact-form" action="UpdateReservasi.jsp" method="post" class="contact-form">
            <h1>Form Update Reservasi</h1>
            <%
                String id = request.getParameter("id_reservasi");
                ReservasiBeans r = null;
                if (id != null) {
                    try {
                        r = ReservasiDAO.getRecordById(Integer.parseInt(id));
                    } catch (NumberFormatException e) {
                        out.println("Invalid reservation ID.");
                        // Atur tindakan lebih lanjut, misalnya mengarahkan ke halaman lain.
                    }
                } else {
                    out.println("Reservation ID is missing.");
                    // Atur tindakan lebih lanjut, misalnya mengarahkan ke halaman lain.
                }
            %>
            <% if (r != null) { %>
                <input type="hidden" name="id_reservasi" value="<%=r.getId_reservasi()%>">
                <input type="text" id="name" name="nama_pasien" placeholder="Your Name" value="<%=r.getNama_pasien()%>" required class="input-field">
                <span id="name-error" class="error-message"></span>

                <select id="jenis-kelamin" name="jenis_kelamin" required>
                    <option value="Pria" <%= "Pria".equals(r.getJenis_kelamin()) ? "selected" : "" %>>Pria</option>
                    <option value="Wanita" <%= "Wanita".equals(r.getJenis_kelamin()) ? "selected" : "" %>>Wanita</option>
                </select>

                <input type="text" id="subject" name="umur" placeholder="Umur" value="<%=r.getUmur()%>" required class="input-field">
                <span id="subject-error" class="error-message"></span>

                <input type="text" id="subject" name="alamat" placeholder="Alamat" value="<%=r.getAlamat()%>" required class="input-field">
                <span id="subject-error" class="error-message"></span>

                <textarea id="message" name="keluhan" placeholder="Keluhan" required class="input-field"><%=r.getKeluhan()%></textarea>
                <span id="message-error" class="error-message"></span>

                <select id="dokter" name="dokter" required>
                    <option value="Dr.risaWinda Meyrisa" <%= "Dr.risaWinda Meyrisa".equals(r.getDokter()) ? "selected" : "" %>>Dr.Winda Meyrisa</option>
                    <option value="Dr.Lestari Raharjo" <%= "Dr.Lestari Raharjo".equals(r.getDokter()) ? "selected" : "" %>>Dr.Lestari Raharjo</option>
                </select>

                <input type="date" id="subject" name="tanggal" placeholder="Masukan Tanggal" value="<%=r.getTanggal()%>" required class="input-field">
                <span id="subject-error" class="error-message"></span>

                <button type="submit">Send Now</button>
            <% } %>
        </form>
    </div>
</body>
</html>
