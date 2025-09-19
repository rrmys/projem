<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Makale Listesi</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
  <div class="container mt-4">
    <h3>Makaleler</h3>
    <a href="articleForm.jsp" class="btn btn-success mb-3">Yeni Makale Ekle</a>
    <div class="list-group">
      <%-- Örnek: dinamik liste --%>
      <a href="ArticleServlet?id=1" class="list-group-item list-group-item-action">
        Makale Başlığı 1 <span class="badge badge-secondary float-right">12 Okunma</span>
      </a>
    </div>
  </div>
</body>
</html>