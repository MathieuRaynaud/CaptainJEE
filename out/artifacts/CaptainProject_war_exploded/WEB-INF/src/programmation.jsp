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
                    <a class="nav-link active" href="#" onclick="changePage(6)">Consommation</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="changePage(7)">Charges<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="changePage(8)">Groupes</a>
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
            <h1>Programmation de charge</h1>

            <section class="row placeholders" style="display: contents !important;">

                <div>
                    <h3>Ajouter Règle</h3>

                    <div class="col-12">
                        <div style="display: inline-flex; margin-bottom: 15px">
                            <div class="selectionPeriode placeholder"> Selectionnez la période d'activation de la règle:</div>
                            <input type="text" name="daterange" style="height: 40px;" value="01/15/2018 1:30 PM - 01/15/2018 2:00 PM" />

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

                            <button type="button" class="btn btn-primary" style="margin-top: 0px;margin-left: 25px;"> Ajouter règle</button>
                        </div>
                    </div>
                    <div class="col-12 check-form">
                        <div style="width: 30%;">
                            <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                            <label class="form-check-label" for="defaultCheck1">
                                Repeter toutes les semaines
                            </label>
                        </div>
                        <div>
                            <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                            <label class="form-check-label" for="defaultCheck1">
                                Repeter toutes les mois
                            </label>
                        </div>
                    </div>

                </div>
                <div>
                    <h3 style="margin-top: 20px">Supprimmer Règle</h3>
                    <select style="margin-left: 30px">
                        <option disabled>Selectionner Charge---------</option>
                        <option>Charge 1</option>
                        <option>Charge 2</option>
                    </select>
                    <select style="margin-left: 50px">
                        <option disabled>Selectionner Règle à modifier</option>
                        <option>Règle 1</option>
                        <option>Règle 2</option>
                    </select>
                    <button type="button" class="btn btn-primary" style="margin-left: 50px"> Supprimer règle</button>
                </div>
            </section>
        </main>
    </div>
</div>


<script src="/dist/js/popper.min.js"></script>
<script src="/dist/js/bootstrap.min.js"></script>
<script src="/dist/js/java.js"></script>
</body>
</html>
