<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Giriş Yap</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body class="bg-light">
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <h3 class="text-center">Üye Girişi</h3>
        <form action="LoginServlet" method="post">
          <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required />
          </div>
          <div class="form-group">
            <label>Şifre</label>
            <input type="password" name="password" class="form-control" required />
          </div>
          <button type="submit" class="btn btn-primary btn-block">Giriş Yap</button>
          <a href="forgot.jsp" class="d-block text-center mt-2">Şifremi Unuttum</a>
        </form>
      </div>
    </div>
  </div>
</body>
</html>