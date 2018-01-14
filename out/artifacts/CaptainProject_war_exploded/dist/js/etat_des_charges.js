var userOfSite = "User name";
//var user = "Admin";


function selectUser() {
    if(userOfSite == "Admin") {
        document.getElementById("close1").style.display = "block";
        document.getElementById("close2").style.display = "block";
        document.getElementById("close3").style.display = "block";
    }

}

function changerEtatCharge(button) {
    var img;
    //Création de la requete HTML
    var xhr = getXMLHttpRequest();

    xhr.open("POST", "/admin_etat_des_charges", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    if(button == 1){
        img = document.getElementById("img1");
    }
    else if(button == 2){
        img = document.getElementById("img2");
    }
    else{
        img = document.getElementById("img3");
    }
    if(img.src.match("images/rouge.png")){
        img.src = "images/vert.png";
        if (button==1) { xhr.send("charge1=true"); }
        if (button==2) { xhr.send("charge2=true"); }
        if (button==3) { xhr.send("charge3=true"); }
    }
    else {
        img.src = "images/rouge.png";
        if (button==1) { xhr.send("charge1=false"); }
        if (button==2) { xhr.send("charge2=false"); }
        if (button==3) { xhr.send("charge3=false"); }
    }
}

function planifierCharge(user) {
    if(user == 1){
        document.location.href = "admin_programmation";
    }
    else {
        document.location.href = "programmation";
    }
}



