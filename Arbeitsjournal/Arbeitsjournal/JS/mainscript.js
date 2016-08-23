var xmlhttp = new XMLHttpRequest();
var serverUrl = "http://localhost:50936/rest/api";

window.user = null;

function httpGetAsync(url, callback, element) {
    console.log("httpGetAsync");
    debugger;
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function () {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
            callback(xmlHttp.responseText, element);
            debugger;
            return xmlHttp.responseText;
        }
    }
    var serviceUrl = serverUrl + url;
    console.log("serviceUrl: ", serverUrl);
    debugger;
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
  //  httpPostAsync("/Benutzer/ChangePasswordByUserId?passwort=" + document.getElementById("passwordNew").value + "&idBenutzer=" + userId, setResultat, document.getElementById("null"));
    console.log("password field value: ", document.getElementById("passwordNew").value);
};

//window.onload = function () {
//    document.getElementById("submitPasswordChange").onclick = httpPostAsync("/Benutzer/ChangePasswordByUserId?passwort=" + document.getElementById("passwordNew").value + "&idBenutzer=1", setResultat);
//}

function changePassword() {
    console.log("changePassword"); 
    httpPostAsync("/Benutzer/ChangePasswordByUserId?passwort=" + document.getElementById("passwordNew").value + "&idBenutzer=" + userId, setResultat, document.getElementById("title"));
    console.log("Methode ChangePasswordByUserId aufgerufen");
  //  console.log("result: ", result);
}

function GetUserName() {
    '<%= IDictionary<string, string> user; if (Session["LoggedIn"] != null){ user = (IDictionary<string, string>)Session["LoggedIn"];} string username = (string)user["username"]; %>'
}

function subscribeAPerson() {

}