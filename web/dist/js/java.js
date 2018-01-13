
var user = "Admin";

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

function changePage(page) {
    var xhr = getXMLHttpRequest();

    if(page == 0){
        document.location.href = "/admin_gestionUtilisateurs";
        xhr.open("GET", "/admin_gestionUtilisateur", true);
        xhr.send(null);
    }
    else if(page == 1){
        document.location.href = "/admin_consommation";
        xhr.open("GET", "/admin_consommation", true);
        xhr.send(null);
    }
    else if(page == 2){
        document.location.href = "/admin_etat_des_charges";
        xhr.open("GET", "/admin_etat_des_charges", true);
        xhr.send(null);
    }
    else if(page == 3){
        document.location.href = "/admin_groupe_charges";
        xhr.open("GET", "/admin_groupe_charges", true);
        xhr.send(null);
    }
    else if(page == 4){
        document.location.href = "/admin_interrupteur";
        xhr.open("GET", "/admin_interrupteur", true);
        xhr.send(null);
    }
    else if(page == 5) {
        document.location.href = "/admin_categorie";
        xhr.open("GET", "/admin_categorie", true);
        xhr.send(null);
    }
    else if(page == 6){
        console.log("E");
        document.location.href = "/consommation";
        xhr.open("GET", "/consommation", true);
        xhr.send(null);
    }
    else if(page == 7){
        document.location.href = "/etat_des_charges";
        xhr.open("GET", "/etat_des_charges", true);
        xhr.send(null);
    }
    else if(page == 8){
        document.location.href = "/groupe_charges";
        xhr.open("GET", "/groupe_charges", true);
        xhr.send(null);
    }
    else if(page == 9){
            document.location.href = "/interrupteur";
        xhr.open("GET", "/interrupteur", true);
        xhr.send(null);
    }
    else if(page == 10) {
        document.location.href = "/categorie";
        xhr.open("GET", "/categorie", true);
        xhr.send(null);
    }

}

function connectUser() {
    user = document.getElementById("inputEmail").value;
    var password = document.getElementById("inputPassword").value;
    console.log("A");
    if (user != "" && password != "") {
        console.log("B");
        if(user.match("Admin")){
            changePage(1);
            console.log("C");
        }
        else {
            changePage(6);
            console.log("D");
        }

    }
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

