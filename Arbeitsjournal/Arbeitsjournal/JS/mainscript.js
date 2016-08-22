var xmlhttp = new XMLHttpRequest();
var serverUrl = "http://localhost:50936/rest/api";

function httpGetAsync(url, callback, element) {
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function () {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
            callback(xmlHttp.responseText, element);
    }
    var serviceUrl = serverUrl + url;
    console.log("serviceUrl: ", serverUrl);
    xmlHttp.open("GET", serviceUrl, true); // true for asynchronous 
    xmlHttp.send(null);
};

function httpPostAsync(url, callback, element) {
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function () {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
            callback(xmlHttp.responseText, element);
    }
    var serviceUrl = serverUrl + url;
    console.log("serviceUrl POST: ", serverUrl);
    xmlHttp.open("POST", serviceUrl, true); // true for asynchronous 
    xmlHttp.send(null);
};

function setResultat(resultat, element) {
    document.getElementById(element).innerHTML = resultat;
    console.log("resultat: ", resultat);
};

function setResultatOnVariable(resultat, variable) {
    variable = resultat;
    console.log("variable: ", resultat);
};

//window.onload = function () {
//    document.getElementById("submitPasswordChange").onclick = httpPostAsync("/Benutzer/ChangePasswordByUserId?passwort=" + document.getElementById("passwordNew").value + "&idBenutzer=1", setResultat);
//}

function changePassword () {
    console.log("changePassword");
    httpPostAsync("/Benutzer/ChangePasswordByUserId?passwort=" + document.getElementById("passwordNew").value + "&idBenutzer=1", setResultat, document.getElementById("null"));
    console.log("password field value: ", document.getElementById("passwordNew").value);
}

function GetUserName() {

    '<%= IDictionary<string, string> user; if (Session["LoggedIn"] != null){ user = (IDictionary<string, string>)Session["LoggedIn"];} string username = (string)user["username"]; %>'
    var username = '<%= username %>';
    alert(username);
}