<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="/favicon.ico">

  <title>Groupes de charges</title>

  <!-- Bootstrap core CSS -->
  <link href="/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/css/groupe_charges.css" rel="stylesheet">
  <link href="/dist/css/bootstrap-toggle.min.css" rel="stylesheet">
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
          <img width="50" height="50" class="rounded-circle" src="images/user.png">
        </form>
      </div>
    </nav>
  </header>

  <div class="container-fluid">
    <div class="row">
      <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">

        <ul class="nav nav-pills flex-column">
          <li class="nav-item">
            <a class="nav-link" href="#" onclick="changePage(6)">Consommation</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" onclick="changePage(7)">Charges<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="#" onclick="changePage(8)">Groupes</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" onclick="changePage(9)">Interrupteurs</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" onclick="changePage(10)">Catégories</a>
          </li>
        </ul>
      </nav>

      <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
        <h1>Groupes de charges</h1>
        <div class="container">
          <!-- Groupe 1-->
          <div class="container">
            <section class="row text-center placeholders">
              <div class="col-2 placeholder">
                <img class="img-responsive" style="width: 15px" src="images/vert.png" >
              </div>
              <div class="col-6 placeholder text-left">
                <h3>Groupe 1</h3>
              </div>
            </section>
            <!-- Charge1 -->
            <section class="row text-center placeholders">
              <div class="col-2 placeholder">
                <img id="img1" class="img-responsive" style="width: 10px" src="images/vert.png" >
              </div>
              <div class="col-1 placeholder text-muted text-left">Charge1</div>
              <div class="col-4 placeholder">
                <div class="btn-group" tabindex="0" onclick="changerEtatCharge(1)">
                  <input type="checkbox" checked data-toggle="toggle">
                </div>
              </div>
            </section>
            <!-- Charge2 -->
            <section class="row text-center placeholders">
              <div class="col-2 placeholder">
                <img id="img2" class="img-responsive" style="width: 10px" src="images/vert.png" >
              </div>
              <div class="col-1 placeholder text-muted text-left">Charge2</div>

              <div class="col-4 placeholder">
                <div class="btn-group" tabindex="0" onclick="changerEtatCharge(2)">
                  <input type="checkbox" checked data-toggle="toggle">
                </div>
              </div>
            </section>
            <!-- Charge3 -->
            <section class="row text-center placeholders">
              <div class="col-2 placeholder">
                <img id="img3" class="img-responsive" style="width: 10px" src="images/vert.png" >
              </div>
              <div class="col-1 placeholder text-muted text-left">Charge3</div>
              <div class="col-4 placeholder">
                <div class="btn-group" tabindex="0" onclick="changerEtatCharge(3)">
                  <input type="checkbox" checked data-toggle="toggle">
                </div>
              </div>
            </section>
          </div>

          <!-- Groupe 2-->
          <div class="container">
            <section class="row text-center placeholders">
              <div class="col-2 placeholder">
                <img class="img-responsive" style="width: 15px" src="images/jaune.png" >
              </div>
              <div class="col-6 placeholder text-left">
                <h3>Groupe 2</h3>
              </div>
            </section>
            <!-- Charge4 -->
            <section class="row text-center placeholders">
              <div class="col-2 placeholder">
                <img class="img-responsive" style="width: 10px" src="images/rouge.png" >
              </div>
              <div class="col-1 placeholder text-muted text-left">Charge4</div>
              <div class="col-4 placeholder text-muted">
                <div class="btn-group off" tabindex="0" onclick="changerEtatCharge(4)">
                  <input id="img4" type="checkbox" checked data-toggle="toggle">
                </div>
              </div>
            </section>
            <!-- Charge5 -->
            <section class="row text-center placeholders">
              <div class="col-2 placeholder">
                <img id="img5" class="img-responsive" style="width: 10px" src="images/vert.png" >
              </div>
              <div class="col-1 placeholder text-muted text-left">Charge5</div>
              <div class="col-4 placeholder text-muted">
                <div class="btn-group" tabindex="0" onclick="changerEtatCharge(5)">
                  <input type="checkbox" checked data-toggle="toggle">
                </div>
              </div>
            </section>
          </div>
        </div>
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
  <script src="/dist/js/bootstrap-toggle.min.js"></script>
  <script src="/dist/js/groupe_charges.js"></script>
  <script src="/dist/js/java.js"></script>
</body>
</html>
