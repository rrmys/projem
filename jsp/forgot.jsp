<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Şifremi Unuttum</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body class="bg-light">
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <h3 class="text-center">Şifre Sıfırlama</h3>
        <form action="ForgotPasswordServlet" method="post">
          <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required />
          </div>
          <button type="submit" class="btn btn-warning btn-block">Şifreyi Sıfırla</button>
        </form>
      </div>
    </div>
  </div>
</body>
</html>