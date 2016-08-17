<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Passwort.aspx.cs" Inherits="Arbeitsjournal.Passwort" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Passwort ändern</title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $(function () {
            $("#header_loggedIn").load("Header/header_loggedIn.html");
        });
    </script>
    <script type="text/javascript" src="../JS/mainscript.js"></script>
     <script>
         //  window.onload = httpGetAsync("/Benutzer/GetUserById?idBenutzer=1", setResultat);

    </script>
</head>
<body>
    <!-- Header Einbindung -->
    <div id="header_loggedIn"></div>
    <div id="containerNebenMenu">
        <h2 id="title">Passwort ändern</h2>
        <div class="boxInnerhalb">
            <form id="changePassword">
                <label for="passwordNew">Passwort:</label>
                <input id="passwordNew" type="password" placeholder="Passwort" />
                <button id="submitPasswordChange" type="submit" onclick="changePassword()">Übernehmen</button>
            </form>
        </div>
    </div>
</body>
</html>
