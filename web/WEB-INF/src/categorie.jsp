<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="/favicon.ico">

  <title>Catégories</title>

  <!-- Bootstrap core CSS -->
  <link href="/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/css/categorie.css" rel="stylesheet">
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
        <img width="50" height="50" class="rounded-circle" src="/images/user.png">
      </form>
    </div>
  </nav>
</header>

<div class="container-fluid">
  <div class="row">
    <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link" href="consommation">Consommation</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="etat_des_charges">Charges</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="groupe_charges">Groupes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="interrupteur">Interrupteurs</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="categorie">Catégories<span class="sr-only">(current)</span></a>
        </li>
      </ul>
    </nav>

    <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
      <h1>Catégories</h1>
      <!-- Panel principal contenant les catégories -->
      <nav class="navbar navbar-expand-md navbar-light bg-light rounded mb-3">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav text-md-center nav-justified w-100">
            <li class="nav-item active">
              <a class="nav-link" href="#">Catégorie 1<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Catégorie 2</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Catégorie 3</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Catégorie 4</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Catégorie 5</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Autres catégories</a>
              <div class="dropdown-menu" aria-labelledby="dropdown01">
                <a class="dropdown-item" href="#">Catégorie 6</a>
                <a class="dropdown-item" href="#">Catégorie 7</a>
                <a class="dropdown-item" href="#">Catégorie 8</a>
              </div>
            </li>
          </ul>
        </div>
      </nav>

      <div class="container">
        <div class="containerGroupes">
          <h2>Groupes</h2>
          <div class="row">
            <div class="col-md-2">Statut</div>
            <div class="col-md-2">Groupe</div>
            <div class="col-md-8">Association</div>
          </div>
          <!-- Groupe1 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/vert.png" >
            </div>
            <div class="col-md-2">Groupe1</div>
            <div class="col-md-8">
              <div class="dropdown">
                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                  <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                  <li><a href="#">charge1</a></li>
                  <li><a href="#">charge2</a></li>
                  <li><a href="#">charge3</a></li>
                </ul>
              </div>
            </div>
          </div>
          <!-- Groupe2 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/vert.png" >
            </div>
            <div class="col-md-2">Groupe2</div>
            <div class="col-md-8">
              <div class="dropdown">
                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                  <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                  <li><a href="#">charge4</a></li>
                  <li><a href="#">charge5</a></li>
                </ul>
              </div>
            </div>
          </div>
          <!-- Groupe3 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/rouge.png" >
            </div>
            <div class="col-md-2">Groupe3</div>
            <div class="col-md-8">
              <div class="dropdown">
                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                  <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                  <li><a href="#">charge6</a></li>
                  <li><a href="#">charge7</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="containerCharges">
          <h2>Charges</h2>
          <div class="row">
            <div class="col-md-2">Statut</div>
            <div class="col-md-10">Charge</div>
          </div>
          <!-- Charge1 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/vert.png" >
            </div>
            <div class="col-md-10">Charge1</div>
          </div>
          <!-- Charge2 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/vert.png" >
            </div>
            <div class="col-md-10">Charge2</div>
          </div>
          <!-- Charge3 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/rouge.png" >
            </div>
            <div class="col-md-10">Charge3</div>
          </div>
          <!-- Charge4 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/rouge.png" >
            </div>
            <div class="col-md-10">Charge4</div>
          </div>
          <!-- Charge5 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/rouge.png" >
            </div>
            <div class="col-md-10">Charge5</div>
          </div>
          <!-- Charge6 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/rouge.png" >
            </div>
            <div class="col-md-10">Charge6</div>
          </div>
          <!-- Charge7 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/rouge.png" >
            </div>
            <div class="col-md-10">Charge7</div>
          </div>
        </div>
        <div class="containerInterrupteurs">
          <h2>Interrupteurs</h2>
          <div class="row">
            <div class="col-md-2">Statut</div>
            <div class="col-md-10">Interrupteur</div>
          </div>
          <!-- Interrupteur1 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/vert.png" >
            </div>
            <div class="col-md-10">Interrupteur1</div>
          </div>
          <!-- Interrupteur2 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/vert.png" >
            </div>
            <div class="col-md-10">Interrupteur2</div>
          </div>
          <!-- Interrupteur3 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/rouge.png" >
            </div>
            <div class="col-md-10">Interrupteur3</div>
          </div>
          <!-- Interrupteur4 -->
          <div class ="row">
            <div class="col-md-2">
              <img class="img-responsive" style="width: 15px" src="/images/rouge.png" >
            </div>
            <div class="col-md-10">Interrupteur4</div>
          </div>
        </div>
      </div>
      <button type="buttonAjouter" class="btn btn-outline-primary btn-lg btn-block">Ajouter</button>
    </main>
  </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="/dist/js/jquery.min.js"><\/script>')</script>
<script src="/dist/js/popper.min.js"></script>
<script src="/dist/js/bootstrap.min.js"></script>
</body>
</html>
