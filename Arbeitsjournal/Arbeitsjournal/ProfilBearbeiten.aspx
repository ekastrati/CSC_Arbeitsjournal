<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilBearbeiten.aspx.cs" Inherits="Arbeitsjournal.ProfilBearbeiten" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Profil bearbeiten</title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $(function () {
            $("#header_loggedIn").load("header_loggedIn.html");
        });
    </script>
</head>
<body>
    <!-- Header Einbindung -->
    <div id="header_loggedIn"></div>
    <div id="containerNebenMenu">
        <h2 id="title">Profil bearbeiten</h2>
        <div class="boxInnerhalb">

            <div class="boxInnerhalb">
                <label for="prename">Vorname:</label>
                <input id="prename" type="text" placeholder="Vorname" />
            </div>

            <div class="boxInnerhalb">
                <label for="name">Nachname:</label>
                <input id="name" type="text" placeholder="Nachname" />
            </div>

            <div class="boxInnerhalb">
                <label for="username">Username:</label>
                <input id="username" type="text" placeholder="Benutzername" />
            </div>

            <div class="boxInnerhalb">
                <label for="email">Email:</label>
                <input id="email" type="text" placeholder="Email Adresse" />
            </div>

            <div class="boxInnerhalb">
                <strong>Zur Abänderung der Benutzerdaten muss das aktuelle Passwort eingegeben werden</strong>
            </div>
            <div class="boxInnerhalb">
                <label for="password">Passwort:</label>
                <input id="password" type="password" placeholder="Passwort" />
            </div>
            <strong id="fehlermeldung"></strong>
            <br />
        </div>
        <div class="sidebar">
            <button id="applyChanges" value="applyChanges">Übernehmen</button>
            <button id="passwordChange" value="passwordChange">Passwort ändern</button>
        </div>
    </div>
</body>
</html>