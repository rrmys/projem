<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
  HttpSession session = request.getSession(false);
  if (session == null || session.getAttribute("userId") == null) {
    response.sendRedirect("login.jsp");
    return;
  }
%>
<html>
<head>
  <title>Kontrol Paneli</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
  <div class="container mt-4">
    <h2>Hoş geldin!</h2>
    <a href="articleList.jsp" class="btn btn-info">Makaleleri Gör</a>
    <a href="editProfile.jsp" class="btn btn-secondary">Profilini Düzenle</a>
    <a href="LogoutServlet" class="btn btn-danger float-right">Çıkış Yap</a>
  </div>
</body>
</html>