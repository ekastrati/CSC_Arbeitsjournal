var xmlhttp = new XMLHttpRequest();
var serverUrl = "http://localhost:50936/rest/api";


var httpGetAsync = function(url, callback) {
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function () {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
            callback(xmlHttp.responseText);
    }
    var serviceUrl = serverUrl + url;
    console.log("serviceUrl: ", serverUrl);
    xmlHttp.open("GET", serviceUrl, true); // true for asynchronous 
    xmlHttp.send(null);
};

function httpPostAsync(url, callback) {
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function () {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
            callback(xmlHttp.responseText);
    }
    var serviceUrl = serverUrl + url;
    console.log("serviceUrl POST: ", serverUrl);
    xmlHttp.open("POST", serviceUrl, true); // true for asynchronous 
    xmlHttp.send(null);
};

function setResultat(resultat) {
    document.getElementById("lblLoginInformation").innerHTML = resultat;
    console.log("resultat: ", resultat);
};

//window.onload = function () {
//    document.getElementById("submitPasswordChange").onclick = httpPostAsync("/Benutzer/ChangePasswordByUserId?passwort=" + document.getElementById("passwordNew").value + "&idBenutzer=1", setResultat);
//}

function changePassword () {
    console.log("changePassword");
    httpPostAsync("/Benutzer/ChangePasswordByUserId?passwort=" + document.getElementById("passwordNew").value + "&idBenutzer=1", setResultat);
    console.log("password field value: ", document.getElementById("passwordNew").value);
}