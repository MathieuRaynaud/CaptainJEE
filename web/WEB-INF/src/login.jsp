<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="/favicon.ico">

  <title>Login</title>

  <!-- Bootstrap core CSS -->
  <link href="/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/css/login.css" rel="stylesheet">
</head>

<body>

<div class="container">

  <form >
    <h2 class="form-signin-heading">Gestion du réseau Captain</h2>
    <div class="login-options">
      <label for="inputEmail" class="sr-only">Login</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="Login" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
      <div class="checkbox">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="connectUser()">Se connecter</button>
    </div>
  </form>

</div> <!-- /container -->

<script src="/dist/js/java.js"></script>
</body>
</html>
