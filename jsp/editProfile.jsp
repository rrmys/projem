<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Profil Düzenle</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
  <div class="container mt-5">
    <h3>Profil Resmini Güncelle</h3>
    <form action="ProfileServlet" method="post" enctype="multipart/form-data">
      <div class="form-group">
        <label>Yeni Profil Resmi</label>
        <input type="file" name="profileImage" class="form-control-file" required />
      </div>
      <button type="submit" class="btn btn-primary">Yükle</button>
    </form>
  </div>
</body>
</html>