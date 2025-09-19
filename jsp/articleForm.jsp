<%@ page isErrorPage="true" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Makale Ekle/Düzenle</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
  <div class="container mt-5">
    <h3>Makale Oluştur</h3>
    <form action="ArticleServlet" method="post">
      <input type="hidden" name="action" value="create" />
      <div class="form-group">
        <label>Başlık</label>
        <input type="text" name="title" class="form-control" required />
      </div>
      <div class="form-group">
        <label>İçerik</label>
        <textarea name="content" class="form-control" rows="6" required></textarea>
      </div>
      <button type="submit" class="btn btn-success">Kaydet</button>
    </form>
  </div>
</body>
</html>