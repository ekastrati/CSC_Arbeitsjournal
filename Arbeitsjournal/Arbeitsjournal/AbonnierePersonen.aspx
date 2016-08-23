<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AbonnierePersonen.aspx.cs" Inherits="Arbeitsjournal.AbonnierePersonen" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Arbeitsjournal</title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/JS/abonnierepersonenscript.js"></script>
    <script>
        var username = '<%= Session["username"] %>';
        $(function () {
            $("#header_loggedIn").load("Header/header_loggedIn.html", "", function () {
                $("#lblUsername").text('<%= Session["username"] %>');
                console.log("username: ", $("#lblUsername").text());
            });
        });
    </script>

    <script type="text/javascript" src="/JS/mitarbeiterscript.js"></script>
</head>
<body>
    <!-- Header Einbindung -->
    <div id="header_loggedIn"></div>
    <div id="containerNebenMenu">
        <h2 id="title">Personen Abonnieren</h2>
        <div id="subscribeBox" class="leftbar">
            <select id="selectPeople"></select>
        </div>
        <div class="sidebar">
        </div>
    </div>
</body>
</html>

