<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/favicon.ico">

    <title>Programmation de charge</title>

    <!-- Bootstrap core CSS -->
    <link href="/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/programmation.css" rel="stylesheet">

<!-- Include Required Prerequisites -->
<script type="text/javascript" src="/dist/js/jquery.min.js"></script>
<script type="text/javascript" src="/dist/js/moment.js"></script>


<!-- Include Date Range Picker -->
<script type="text/javascript" src="/dist/js/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="/dist/css/daterangepicker.css" />




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
              <a class="nav-link" href="categorie">Catégories</a>
            </li>
          </ul>
        </nav>


        <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
          <h1>Programmation de charge</h1>

          <section class="row text-center placeholders">
            <div class="col-12 col-sm-12 placeholder text-center">
             <select>
              <option disabled>Selectionner Charge---------</option>
              <option>Charge 1</option>
              <option>Charge 2</option>
             </select>
            </div>

            <div class="col-12 col-sm-12 placeholder text-center">
             <select>
              <option disabled>Selectionner Règle à modifier</option>
              <option>Règle 1</option>
              <option>Règle 2</option>
             </select>
            </div>


            <div class="col-12 col-sm-12 placeholder text-center">
              <button type="button" class="btn btn-primary"> Ajouter règle</button>





            <div class="col-12 placeholder text-center"> Selectionnez la période d'activation de la règle</div>
             <div class="col-12">
            <input type="text" name="daterange" value="01/01/2018 1:30 PM - 01/01/2018 2:00 PM" />

<script type="text/javascript">
$(function() {
    $('input[name="daterange"]').daterangepicker({
        timePicker: true,
        timePickerIncrement: 30,
        locale: {
            format: 'MM/DD/YYYY h:mm A'
        }
    });
});
</script>
</div>
<div class="col-12">
 <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
  <label class="form-check-label" for="defaultCheck1">
    Repeter toutes les semaines
  </label></div>
  <div class="col-12">
 <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
  <label class="form-check-label" for="defaultCheck1">
    Repeter toutes les mois
  </label></div>


<div class="col-12">
  <button type="button" class="btn btn-primary"> Supprimer règle</button></div></div>

            </div>


          </section>


        </main>
      </div>
    </div>


    <script src="/dist/js/popper.min.js"></script>
    <script src="/dist/js/bootstrap.min.js"></script>
  </body>
</html>
