<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mitarbeiter.aspx.cs" Inherits="Arbeitsjournal.mitarbeiter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="mitarbeiter.css" />
    <title>Mitarbeiter</title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $(function () {
            $("#header_loggedIn").load("header_loggedIn.html");
        });
    </script>
</head>
<body>  
    <div id="header_loggedIn"></div>
    <h1 id="titleOfEachSite">Mitarbeiter</h1>
    <div id="abonniertDiv">
        <h1>Abonniert</h1>
        <div id="abonniertDropdown"></div>
        <button>Hinzufügen</button>
    </div>
    <div id="mitarbeiterDiv">
        <button>Deabonnieren</button>
        <h1>Freddys Arbeitsjournal</h1>
        <div id="mitarbeiterBeitrag">

        </div>
    </div>
</body>
</html>
