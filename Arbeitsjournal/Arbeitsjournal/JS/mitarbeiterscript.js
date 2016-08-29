var xmlhttp = new XMLHttpRequest();
var serverUrl = "http://localhost:50936/rest/api";

$(document).ready(function () {
    httpGetAsync("/Abonnieren/GetAllPeopleThatISubscribed?benutzerId=6", showAllPersonsInList);
});

var actualSelectedPerson;

function redirectToSubscribePage(){
    window.location.href = "../AbonnierePersonen.aspx";
}

// Callback function
function showAllPersonsInList(resultat) {
    select = document.getElementById("abonniertDropdown");
    console.log("resultat: ", resultat);
    peopleObject = JSON.parse(resultat);
    //subscribeBox.appendChild(select);
    // Constructor arguments:  text, value, defaultSelected, selected
    // Example: select.appendChild(new Option("my label 1", "my value 1", false, false));

    var peopleListSize = Object.keys(peopleObject).length;
    for (i = 0; i < peopleListSize; i++) {
        select.appendChild(new Option(peopleObject[i]["Username"], peopleObject[i]["Username"], false, false));
    }
}

function showJournalOfName() {
    console.log("Zeige Arbeitsjournal an");
    var select = document.getElementById("abonniertDropdown");
    actualSelectedPerson = select.options[select.selectedIndex].text // .value gives the value and .text gives the text INNERHTML
    console.log("actualSelectedPerson: " + actualSelectedPerson);
}