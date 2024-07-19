<%-- 
    Document   : AddUser
    Created on : Jul 19, 2024, 2:12:58 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.controller.UserDAO"%>
<jsp:useBean id="b" class="com.model.ReservasiBeans"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
    int i = UserDAO.save(b);
    if (i > 0) {
        response.sendRedirect("Success.jsp");
    } else {
        response.sendRedirect("Error.jsp");
    }
%>