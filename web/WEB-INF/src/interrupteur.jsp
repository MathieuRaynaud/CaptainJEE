<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/favicon.ico">

    <title>Interrupteurs</title>

    <!-- Bootstrap core CSS -->
    <link href="/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/interrupteur.css" rel="stylesheet">
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
              <a class="nav-link active" href="interrupteur">Interrupteurs<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="categorie">Catégories</a>
            </li>
          </ul>
        </nav>

        <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
          <h1>Interrupteurs</h1>

          <div class="container">
            <div class="containerPhysique">
              <h2>Physique</h2>
              <div class="row">
                <div class="col-sm-2">Statut</div>
                <div class="col-sm-2">Nom</div>
                <div class="col-sm-2">Association</div>
                <div class="col-sm-6">Activation</div>

              </div>
              <!-- Exemples -->
              <!-- Interrupteur1 -->
              <div class="row">
                <div class="col-sm-2">
                  <img class="img-responsive" style="width: 15px" src="/images/rouge.png" >
                </div>
                <div class="col-sm-2">Interrupteur1</div>
                <div class="col-sm-2">
                  <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                      <li><a href="#">charge1</a></li>
                      <li><a href="#">charge2</a></li>
                      <li><a href="#">charge3</a></li>
                      <li role="separator" class="divider"></li>
                      <li><a href="#">Separated link</a></li>
                    </ul>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="btn-group" tabindex="0">
                    <input type="checkbox" checked data-toggle="toggle">
                  </div>
                </div>
              </div>
              <!-- Interrupteur2 -->
              <div class="row">
                <div class="col-sm-2">
                  <img class="img-responsive" style="width: 15px" src="/images/vert.png" >
                </div>
                <div class="col-sm-2">Interrupteur2</div>
                <div class="col-sm-2">
                  <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                      <li><a href="#">charge1</a></li>
                      <li><a href="#">charge2</a></li>
                      <li><a href="#">charge3</a></li>
                      <li role="separator" class="divider"></li>
                      <li><a href="#">Separated link</a></li>
                    </ul>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="btn-group" tabindex="0">
                    <input type="checkbox" checked data-toggle="toggle">
                  </div>
                </div>
              </div>
            </div>


            <div class="containerVirtuel">
              <h2>Virtuel</h2>
              <div class="row">
                <div class="col-sm-2">Statut</div>
                <div class="col-sm-2">Nom</div>
                <div class="col-sm-2">Association</div>
                <div class="col-sm-6">Activation</div>
              </div>
              <!-- Exemples -->
              <!-- Interrupteur1 -->
              <div class="row">
                <div class="col-sm-2">
                  <img class="img-responsive" style="width: 15px" src="/images/vert.png" >
                </div>
                <div class="col-sm-2">InterrupteurV1</div>
                <div class="col-sm-2">
                  <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                      <li><a href="#">charge1</a></li>
                      <li><a href="#">charge2</a></li>
                      <li><a href="#">charge3</a></li>
                      <li role="separator" class="divider"></li>
                      <li><a href="#">groupe de charge1</a></li>
                    </ul>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="btn-group" tabindex="0">
                    <input type="checkbox" checked data-toggle="toggle">
                  </div>
                </div>
              </div>
              <!-- Interrupteur2 -->
              <div class="row">
                <div class="col-sm-2">
                  <img class="img-responsive" style="width: 15px" src="/images/vert.png" >
                </div>
                <div class="col-sm-2">InterrupteurV2</div>
                <div class="col-sm-2">
                  <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                      <li><a href="#">charge1</a></li>
                      <li><a href="#">charge2</a></li>
                      <li><a href="#">charge3</a></li>
                      <li role="separator" class="divider"></li>
                      <li><a href="#">groupe de charge1</a></li>
                    </ul>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="btn-group" tabindex="0">
                    <input type="checkbox" checked data-toggle="toggle">
                  </div>
                </div>
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
  </body>
</html>
