<%@page import="com.controller.ReservasiDAO"%>
<jsp:useBean id="rb" class="com.model.ReservasiBeans"></jsp:useBean>
<jsp:setProperty property="*" name="rb"/>


<%
    int status = ReservasiDAO.delete(rb);
    
    if (status > 0) {
        response.sendRedirect("TabelReservasi.jsp");
    } else {
        response.sendRedirect("Error.jsp");
    }

%>