<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Kayıt Ol</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body class="bg-light">
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <h3 class="text-center">Yeni Üyelik</h3>
        <form action="RegisterServlet" method="post">
          <div class="form-group">
            <label>Kullanıcı Adı</label>
            <input type="text" name="username" class="form-control" required />
          </div>
          <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required />
          </div>
          <div class="form-group">
            <label>Şifre</label>
            <input type="password" name="password" class="form-control" required />
          </div>
          <button type="submit" class="btn btn-success btn-block">Kayıt Ol</button>
        </form>
      </div>
    </div>
  </div>
</body>
</html>