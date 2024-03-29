<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="../favicon.ico">

  <title>Gestionnaire d'utilisateur</title>

  <!-- Bootstrap core CSS -->
  <link href="/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/css/admin_gestionUtilisateurs.css" rel="stylesheet">
</head>

<body>
<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand space" href="#">Gestion du Réseau Électrique Captain</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">

      <form class="form-inline mt-2 mt-md-0">
        <a id="username" class="name"></a>
        <img width="50" height="50" class="rounded-circle" src="/images/admin.png">
      </form>
    </div>
  </nav>
</header>

<div class="container-fluid">
  <div class="row">
    <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
      <ul class="nav nav-pills flex-column hideObject">
        <li class="nav-item">
          <a class="nav-link active" href="#" onclick="changePage(0)">Utilisateurs</a>
        </li>
      </ul>

      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link" href="#" onclick="changePage(1)">Consommation</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" onclick="changePage(2)">Charges<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" onclick="changePage(3)">Groupes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" onclick="changePage(4)">Interrupteurs</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" onclick="changePage(5)">Catégories</a>
        </li>
      </ul>
    </nav>

    <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
      <h1>Gestionnaire d'utilisateur</h1>

      <div class="container">

        <form class="form-signin">
          <h2 class="form-signin-heading">Ajout d'un nouvel utilisateur</h2>
          <label for="inputEmail" class="sr-only">Login</label>
          <input id="inputEmail" class="form-control" placeholder="Login" required autofocus>
          <label for="inputPassword" class="sr-only">Password</label>
          <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
          <div class="checkbox">

          </div>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Ajouter</button>
        </form>

      </div> <!-- /container -


        </main>
      </div>
    </div>

          <!-- Bootstrap core JavaScript
          ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../dist/js/jquery.min.js"><\/script>')</script>
      <script src="/dist/js/popper.min.js"></script>
      <script src="/dist/js/bootstrap.min.js"></script>
      <script src="/dist/js/java.js"></script>
</body>
</html>
