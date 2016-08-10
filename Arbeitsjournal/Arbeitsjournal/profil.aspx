<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="Arbeitsjournal.profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="profil.css" />
    <title>Profil</title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $(function () {
            $("#header_loggedIn").load("header_loggedIn.html");
        });
    </script>
</head>
<body>
    <div id="header_loggedIn"></div>
    <h1 id="titleOfEachSite">Profil</h1>
    <div id="profilDiv">
        <div id="benutzernameDiv">
            <h1 class="profilDivH1">Benutzername</h1>
        </div>

        <div id="vornameDiv">
            <h1 class="profilDivH1">Vorname</h1>
        </div>
        <div id="nachnameDiv">
            <h1 class="profilDivH1">Nachname</h1>
        </div>
        <div id="emailDiv">
            <h1 class="profilDivH1">Email</h1>
        </div>
        <div id="benutzername"></div>
        <div id="vorname"></div>
        <div id="nachname"></div>
        <div id="email"></div>
    </div>
    <h1 id="abonniert">Abonniert</h1>
    <div id="abonniertDiv">
        <strong>Niemand abonniert</strong>
        <%--<div id="abonniertButtons">
        <div class="abonniertInhalt">
            <button>Deabonnieren</button>

        </div>
    </div>--%>
    </div>
</body>
</html>
