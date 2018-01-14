<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="/favicon.ico">

  <title>[Admin] Etat des charges</title>

  <!-- Bootstrap core CSS -->
  <link href="/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/css/admin_etat_des_charges.css" rel="stylesheet">
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
        <img width="50" height="50" class="rounded-circle" src="images/admin.png">
      </form>
    </div>
  </nav>
</header>

<div class="container-fluid">
  <div class="row">
    <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
      <ul class="nav nav-pills flex-column hideObject">
        <li class="nav-item">
          <a class="nav-link" href="#" onclick="changePage(0)">Utilisateurs</a>
        </li>
      </ul>

      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link" href="#" onclick="changePage(1)">Consommation</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#" onclick="changePage(2)">Charges<span class="sr-only">(current)</span></a>
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
      <h1>Etat des charges</h1>

      <div class="container">
        <div class="row">
          <div class="col-sm-1">Statut</div>
          <div class="col-sm-2">Nom</div>
          <div class="col-sm-2">Association</div>
          <div class="col-sm-2">Activation</div>
          <div class="col-sm-4">Personnalisation</div>
        </div>
        <!-- Exemples -->
        <!-- Charge1 -->
        <div class="row">
          <div class="col-sm-1">
            <img id="img1" class="img-responsive" style="width: 15px" src="images/rouge.png" >
          </div>
          <div class="col-sm-2">Chambre 1</div>
          <div class="col-sm-2">
            <div class="dropdown">
              <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                <span class="caret">Information</span>
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a href="#">Localisation: botier 3</a></li>
                <li><a href="#">Priorité: 6</a></li>
                <li><a href="#">Protection: 2A</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-2">
            <div id="bt1" class="btn-group off" tabindex="0" onclick="changerEtatCharge(1)">
              <input type="checkbox" data-toggle="toggle">
            </div>
          </div>
          <div class="col-sm-4">
            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#myModal1">Modifier</button>
          </div>

          <div id="myModal1" class="modalDialog modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <a href="#close" type="button" title="Close" class="close" data-dismiss="modal">X</a>
                <h2 style="text-align: center; margin-left: 0px !important;">Modifier charge</h2>
                <div class="form-group">
                  <label for="loc1">Localisation:</label>
                  <input type="text" class="form-control" id="loc1" value="Botier 3">
                </div>
                <div class="form-group">
                  <label for="prio1">Priorité:</label>
                  <input type="text" class="form-control" id="prio1" value="6">
                </div>
                <div class="form-group">
                  <label for="prot1">Protection:</label>
                  <input type="text" class="form-control" id="prot1" value="2A">
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Enregistrer</button>
                </div>
              </div>
            </div>
          </div>

        </div>
        <!-- Charge2 -->
        <div class="row">
          <div class="col-sm-1">
            <img id="img2" class="img-responsive" style="width: 15px" src="images/vert.png" >
          </div>

          <div class="col-sm-2">Chambre 2</div>
          <div class="col-sm-2">
            <div class="dropdown">
              <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                <span class="caret">Information</span>
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a href="#">Localisation: Botier 5</a></li>
                <li><a href="#">Priorité: 9</a></li>
                <li><a href="#">Protection: 1A</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-2">
            <div id="bt2" class="btn-group" tabindex="0" onclick="changerEtatCharge(2)">
              <input  type="checkbox"  checked data-toggle="toggle">
            </div>
          </div>
          <div href="#openModal" class="col-sm-4">
            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#myModal2">Modifier</button>
          </div>



          <div id="myModal2" class="modalDialog modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <a href="#close" type="button" title="Close" class="close" data-dismiss="modal">X</a>
                <h2 style="text-align: center; margin-left: 0px !important;">Modifier charge</h2>
                <div class="form-group">
                  <label for="loc2">Localisation:</label>
                  <input type="text" class="form-control" id="loc2" value="Botier 5">
                </div>
                <div class="form-group">
                  <label for="prio2">Priorité:</label>
                  <input type="text" class="form-control" id="prio2" value="9">
                </div>
                <div class="form-group">
                  <label for="prot2">Protection:</label>
                  <input type="text" class="form-control" id="prot2" value="1A">
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Enregistrer</button>
                </div>
              </div>
            </div>
          </div>

        </div>
        <!-- Charge3 -->
        <div class="row">
          <div class="col-sm-1">
            <img id="img3" class="img-responsive" style="width: 15px" src="images/vert.png" >
          </div>
          <div class="col-sm-2">Chambre 3</div>
          <div class="col-sm-2">
            <div class="dropdown">
              <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                <span class="caret">Information</span>
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a href="#">Localisation: botier 1</a></li>
                <li><a href="#">Priorité: 1</a></li>
                <li><a href="#">Protection: 3A</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-2">
            <div id="bt3" class="btn-group" tabindex="0" onclick="changerEtatCharge(3)">
              <input  type="checkbox"  checked data-toggle="toggle">
            </div>
          </div>
          <div class="col-sm-4">
            <button ype="button" class="btn btn-outline-success" data-toggle="modal" data-target="#myModal3">Modifier</button>
          </div>

          <div id="myModal3" class="modalDialog modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <a href="#close" type="button" title="Close" class="close" data-dismiss="modal">X</a>
                <h2 style="text-align: center; margin-left: 0px !important;">Modifier charge</h2>
                <div class="form-group">
                  <label for="loc3">Localisation:</label>
                  <input type="text" class="form-control" id="loc3" value="Botier 3">
                </div>
                <div class="form-group">
                  <label for="prio3">Priorité:</label>
                  <input type="text" class="form-control" id="prio3" value="6">
                </div>
                <div class="form-group">
                  <label for="prot3">Protection:</label>
                  <input type="text" class="form-control" id="prot3" value="2A">
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Enregistrer</button>
                </div>
              </div>
            </div>
          </div>

        </div>

        <button type="buttonPlanifier" class="btn btn-outline-primary btn-lg btn-block hideObject planifier-button" onclick="planifierCharge(1)">Planifier</button>
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
<script src="/dist/js/java.js"></script>
<script src="/dist/js/etat_des_charges.js"></script>
</body>
</html>

