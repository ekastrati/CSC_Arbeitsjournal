<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Impressum.aspx.cs" Inherits="Arbeitsjournal.Impressum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $(function () {
            $("#header_notLoggedIn").load("Header/header_notLoggedIn.html");
        });
    </script>
</head>
<body>
    <div id="header_notLoggedIn"></div>
    <div id="impressumDIV">
        <h1>Impressum</h1>
        <p>Diese Website ist unter dem Aufrag von CSC Switzerland GmbH erstellt worden.Sie ist zur Veröffentlichung der eigenen Arbeisjournale entwickelt worden. Jeder Arbeitnehmer von CSC hat hier die Möglichkeit sein eigenes Arbeitsjournal hochzuladen.</p>
        <strong>CSC Switzerland GmbH</strong>
        <p>Morgenstrasse 129</p>
    </div>
</body>
</html>
