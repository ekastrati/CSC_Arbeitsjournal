var xmlhttp = new XMLHttpRequest();
var serverUrl = "http://localhost:50936/rest/api";

$(document).ready(function () {
    createSubscriptionsDropDownList();
});

var actualSelectedPerson;

function createSubscriptionsDropDownList() {
    httpGetAsync("/Abonnieren/GetAllPeopleThatISubscribed?benutzername=" + username, showAllPersonsInList);
    console.log("Aufgerufen");
}

function redirectToSubscribePage(){
    window.location.href = "../AbonnierePersonen.aspx";
}

// Callback function
function showAllPersonsInList(resultat) {
    select = document.getElementById("abonniertDropdown");
    console.log("resultat: ", resultat);
    peopleSubscribedObject = JSON.parse(resultat);
    //subscribeBox.appendChild(select);
    // Constructor arguments:  text, value, defaultSelected, selected
    // Example: select.appendChild(new Option("my label 1", "my value 1", false, false));

    var peopleListSize = Object.keys(peopleSubscribedObject).length;
    for (i = 0; i < peopleListSize; i++) {
        select.appendChild(new Option(peopleSubscribedObject[i]["Username"], peopleSubscribedObject[i]["Username"], false, false));
    }
}

function showJournalOfName() {
    console.log("Zeige Arbeitsjournal an");
    var select = document.getElementById("abonniertDropdown");
    actualSelectedPerson = select.options[select.selectedIndex].text // .value gives the value and .text gives the text INNERHTML
    console.log("actualSelectedPerson: " + actualSelectedPerson);
}