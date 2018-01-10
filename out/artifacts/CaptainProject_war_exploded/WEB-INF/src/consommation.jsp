<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/favicon.ico">

    <title>Consommation</title>

    <!-- Bootstrap core CSS -->
    <link href="/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/consommation.css" rel="stylesheet">
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
              <a class="nav-link active" href="consommation">Consommation<span class="sr-only">(current)</span></a>
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
              <a class="nav-link" href="categorie">Catégories</a>
            </li>
          </ul>
        </nav>

        <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
          <h1>Consommation</h1>

          <section class="row text-center placeholders">
            <div class="col-6 col-sm-3 placeholder">

              <img src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">

              <h4>Source</h4>
              <div class="text-muted">Sur la journée</div>
            </div>
            <div class="col-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">
              <h4>Charge qui consomme le plus</h4>
              <span class="text-muted">Sur la journée</span>
            </div>
            <div class="col-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">
              <h4>Catégorie qui consomme le plus</h4>
              <span class="text-muted">Sur la journée</span>
            </div>
            <div class="col-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">
              <h4>Boitier qui consomme le plus</h4>
              <span class="text-muted">Sur la journée</span>
            </div>
          </section>

          <h1></h1>
          <section class="row text-center placeholders">
            <div class="col-9 col-sm-6 placeholder">
              <div>
                <select>
                <option disabled>-----Charges-----</option>
                <option>Charge 1 </option>
                <option>Charge 2</option>

                <option disabled>-----Boitier-----</option>
                <option>Boitier 1</option>
                <option>Boitier 2</option>
                </select>
              </div>

              <div class="form-check form-check-inline">
                <label class="form-check-label">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> Par jour
                </label>
              </div>
              <div class="form-check form-check-inline">
                <label class="form-check-label">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> Par semaine
                </label>
              </div>
                <button type="button" class="btn btn-primary">Générer Rapport</button>
              </div>

            <div class="col-9 col-sm-6 placeholder">
            <h4>Consommation</h4>
              <img class="img-responsive" style="width: 400px" src="/images/exGraphique.png" >
            </div>


          </section>




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
