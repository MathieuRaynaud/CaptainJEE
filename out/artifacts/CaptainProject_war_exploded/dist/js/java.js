
go('land');

$routeProvider.when('/land', {
    templateUrl: 'login.html',
    controller: 'mainCtrl'
});

app.controller('mainCtrl', function($scope) {

});
var user = "User name";

//document.getElementById("username").innerHTML = user;

function test(){
  var styleCharge = document.getElementById("charges-menu");
  if (styleCharge.style.display === "none") {
    styleCharge.style.display = "block";
  } else {
    styleCharge.style.display = "none";
  }
}

var charges = [];

function getCharges() {
  charges.concat("Charge 1");
  charges.concat("Charge 2");

}

function loginExecute() {
    window.location.replace("https://www.w3schools.com");
}

function changerEtatCharge() {
    console.log("hii");

    var xhr = getXMLHttpRequest();



    if(document.getElementById("img3").src.match("/images/rouge.png")){
        document.getElementById("img3").src = "/images/vert.png";
        var bool3 = "true";
    }
    else {
        document.getElementById("img3").src = "/images/rouge.png";
    }
    xhr.open("POST", "/etat_des_charges", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.send("charge3="+bool3);
}

function getXMLHttpRequest() {
    var xhr = null;

    if (window.XMLHttpRequest || window.ActiveXObject) {
        if (window.ActiveXObject) {
            try {
                xhr = new ActiveXObject("Msxml2.XMLHTTP");
            } catch(e) {
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
            }
        } else {
            xhr = new XMLHttpRequest();
        }
    } else {
        alert("Votre navigateur ne supporte pas l'objet XMLHTTPRequest...");
        return null;
    }

    return xhr;
}