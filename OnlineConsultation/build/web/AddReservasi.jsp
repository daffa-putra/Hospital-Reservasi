<%-- 
    Document   : AddReservasi
    Created on : Jul 19, 2024, 12:08:29 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.controller.ReservasiDAO"%>
<jsp:useBean id="b" class="com.model.ReservasiBeans"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
    int i = ReservasiDAO.save(b);
    if (i > 0) {
        response.sendRedirect("Success.jsp");
    } else {
        response.sendRedirect("Error.jsp");
    }
%>
