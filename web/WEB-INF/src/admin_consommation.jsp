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
                    <img id="userImg" width="50" height="50" class="rounded-circle" src="/images/admin.png">
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
                        <a class="nav-link active" href="#" onclick="changePage(1)">Consommation</a>
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
                <h1 style="margin-bottom: 0px !important">Consommation</h1>

                <section class="row text-center     ">
                    <div class="col-6 col-sm-3 placeholder chart1">

                        <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
                        <script src="https://www.amcharts.com/lib/3/pie.js"></script>
                        <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
                        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
                        <script src="https://www.amcharts.com/lib/3/themes/none.js"></script>
                        <div id="chartdiv1" class="chartdiv"></div>
                        <h4>Source</h4>
                    </div>
                    <div class="col-6 col-sm-3 placeholder chart2">
                        <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
                        <script src="https://www.amcharts.com/lib/3/pie.js"></script>
                        <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
                        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
                        <script src="https://www.amcharts.com/lib/3/themes/none.js"></script>
                        <div id="chartdiv2" class="chartdiv"></div>



                        <h4 href="#" data-toggle="tooltip" style="cursor: pointer" title="Charge qui consomme le plus.">Charge</h4>

                    </div>
                    <div class="col-6 col-sm-3 placeholder chart3">
                        <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
                        <script src="https://www.amcharts.com/lib/3/pie.js"></script>
                        <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
                        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
                        <script src="https://www.amcharts.com/lib/3/themes/none.js"></script>
                        <div id="chartdiv3" class="chartdiv"></div>
                        <h4 href="#" data-toggle="tooltip" style="cursor: pointer" title="Catégorie qui consomme le plus.">Catégorie</h4>
                    </div>
                    <div class="col-6 col-sm-3 placeholder chart4">
                        <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
                        <script src="https://www.amcharts.com/lib/3/pie.js"></script>
                        <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
                        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
                        <script src="https://www.amcharts.com/lib/3/themes/none.js"></script>
                        <div id="chartdiv4" class="chartdiv"></div>
                        <h4 href="#" data-toggle="tooltip" style="cursor: pointer" title="Boitier qui consomme le plus.">Boitier</h4>
                    </div>
                </section>

                <h1></h1>

                <section class="row text-center placeholders">


                    <div class="col-9 col-sm-6 graph placeholder" style="padding-bottom: 0px !important;">
                        <h3><strong>Graphique de Consommation</strong></h3>
                    </div>
                    <select>
                        <option disabled>-----Charges-----</option>
                        <option>Charge 1 </option>
                        <option>Charge 2</option>

                        <option disabled>-----Boitier-----</option>
                        <option>Boitier 1</option>
                        <option>Boitier 2</option>
                    </select>


                    <div class="col-9 col-sm-6 graph placeholder">
                        <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
                        <script src="https://www.amcharts.com/lib/3/serial.js"></script>
                        <script src="https://www.amcharts.com/lib/3/amstock.js"></script>
                        <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
                        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
                        <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
                        <div id="chartdivGraph"></div>

                        <div class="menu-graph">

                            <button type="button" class="btn btn-primary">Générer Rapport</button>
                        </div>
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
    <script src="/dist/js/consommation.js"></script>
    <script src="/dist/js/java.js"></script>

    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

</body>
</html>
