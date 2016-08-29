<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mitarbeiter.aspx.cs" Inherits="Arbeitsjournal.mitarbeiter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="CSS/mitarbeiter.css" />
    <title>Mitarbeiter</title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        var username = '<%= Session["username"] %>';
        $(function () {
            $("#header_loggedIn").load("Header/header_loggedIn.html", "", function () {
                $("#lblUsername").text(username);
            });
        });
    </script>
        <script type="text/javascript" src="/JS/abonnierepersonenscript.js"></script>
        <script type="text/javascript" src="/JS/mitarbeiterscript.js"></script>
</head>
<body>
    <div id="header_loggedIn"></div>
    <h1 id="titleOfEachSite">Mitarbeiter</h1>
    <div id="abonniertDiv">
        <h1>Abonniert</h1>
        <select id="abonniertDropdown" name="abonniertDropdown" onclick="showJournalOfName()" size="60">
        <optgroup label="Namen mit A">
          <option label="Anna">Anna</option>
          <option label="Achim">Achim</option>
          <option label="August">August</option>
        </optgroup>
        <optgroup label="Namen mit B">
          <option label="Berta">Berta</option>
          <option label="Barbara">Barbara</option>
          <option label="Bernhard">Bernhard</option>
        </optgroup>
        <optgroup label="Namen mit C">
          <option label="Caesar">Caesar</option>
          <option label="Christiane">Christiane</option>
          <option label="Christian">Christian</option>
        </optgroup>
      </select>
        <button id="btnPersonAbonnieren" onclick="redirectToSubscribePage()">Hinzufügen</button>
    </div>
    <div id="mitarbeiterDiv">
        <button>Deabonnieren</button>
        <h1>Freddys Arbeitsjournal</h1>
        <div id="mitarbeiterBeitrag">
        </div>
    </div>
</body>
</html>
