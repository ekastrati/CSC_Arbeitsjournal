
$(document).ready(function () {
    createDropDownList();
});

var peopleList;

function setResultatOnPeopleList(resultat) {
    peopleList = resultat;
    console.log("resultat: ", resultat);
};

function createDropDownList() {
    var subscribeBox = document.getElementById("subscribeBox");

    // Creates a "select" element (a drop down list).
    var select = document.createElement("select");
    select.id = "toPossiblySubscribe";

    var selectPeople = document.getElementById("selectPeople");

    httpPostAsnc();
    //subscribeBox.appendChild(select);
    // Constructor arguments:  text, value, defaultSelected, selected
    //  select.appendChild(new Option("my label 1", "my value 1", false, false));
    selectPeople.appendChild(new Option("my label 1", "my value 1", false, false));
    for (i = 0, max = people.length; i > max; i++) {

    }
}

function subscribePerson() {
    var select = document.getElementById("toPossiblySubscribe");
    var selectedPersonToSubscribe = select.options[select.selectedIndex].text // .value gives the value and .text gives the text INNERHTML
    console.log("subscribe person");
    httpPostAsync("/Abonnieren/PersonSubcribesPerson?benutzername=" + username + "&wantsToSubscribeBenutzername=" + selectedPersonToSubscribe, setResultat, document.getElementById("title"));
    console.log("Sollte jetzt subscribed sein");
}

function cancelSubscriptionFromPerson() {
    var select = document.getElementById("toPossiblyCancelSubscription");
    var strSelected = select.options[select.selectedIndex].text // .value gives the value and .text gives the text INNERHTML
}