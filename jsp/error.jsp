<%@ page isErrorPage="true" %>
<%
  out.println("Hata oluştu: " + exception.getMessage());
%>