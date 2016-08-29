﻿var xmlhttp = new XMLHttpRequest();
var serverUrl = "http://localhost:50936/rest/api";

$(document).ready(function () {
    createDropDownList();
});

var peopleList;

function setResultatOnPeopleList(resultat) {
    console.log("resultat: ", resultat);
    peopleObject = JSON.parse(resultat);
    //subscribeBox.appendChild(select);
    // Constructor arguments:  text, value, defaultSelected, selected
    // Example: select.appendChild(new Option("my label 1", "my value 1", false, false));
  
    var peopleListSize = Object.keys(peopleObject).length;
    for (i = 0; i < peopleListSize; i++) {
        selectPeople.appendChild(new Option(peopleObject[i]["Username"], peopleObject[i]["Username"], false, false));
    }
}

function unnötig(resultat){

}

function createDropDownList() {
    var subscribeBox = document.getElementById("subscribeBox");

    // Creates a "select" element (a drop down list).
 //   var select = document.createElement("select");
   // select.id = "toPossiblySubscribe";

    var selectPeople = document.getElementById("selectPeople");

    httpGetAsync("/Benutzer/GetAllByUsername?benutzername=" + username + "&thisUserToFind=false", setResultatOnPeopleList);
  
//    for (i = 0, max = people.length; i > max; i++) {

  //  }
}

function subscribePerson() {
    var select = document.getElementById("selectPeople");
    var selectedPersonToSubscribe = select.options[select.selectedIndex].text // .value gives the value and .text gives the text INNERHTML
    console.log("subscribe person");
    httpPostAsync("/Abonnieren/PersonSubcribesPerson?benutzername=" + username + "&wantsToSubscribeBenutzername=" + selectedPersonToSubscribe, unnötig);
    console.log("Sollte jetzt subscribed sein");
}

function cancelSubscriptionFromPerson() {
    var select = document.getElementById("toPossiblyCancelSubscription");
    var strSelected = select.options[select.selectedIndex].value // .value gives the value and .text gives the text INNERHTML
}

function httpGetAsync(url, callback) {
    console.log("httpGetAsync");
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function () {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
            callback(xmlHttp.responseText);
            return xmlHttp.responseText;
        }
    }
    var serviceUrl = serverUrl + url;
    console.log("serviceUrl: ", serverUrl);
    xmlHttp.open("GET", serviceUrl, true); // true for asynchronous 
    xmlHttp.send(null);
};

function httpPostAsync(url, callback) {
    console.log("httpGetAsync");
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function () {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
            callback(xmlHttp.responseText);
            return xmlHttp.responseText;
        }
    }
    var serviceUrl = serverUrl + url;
    console.log("serviceUrl: ", serverUrl);
    xmlHttp.open("POST", serviceUrl, true); // true for asynchronous 
    xmlHttp.send(null);
};