

function changerEtatCharge(button) {
    var img;

    //Création de la requete HTML
    var xhr = getXMLHttpRequest();

    xhr.open("POST", "/etat_des_charges", true);
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