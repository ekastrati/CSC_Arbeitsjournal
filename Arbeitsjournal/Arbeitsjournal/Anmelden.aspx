<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anmelden.aspx.cs" Inherits="Arbeitsjournal.Anmelden" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $(function () {
            $("#header_notLoggedIn").load("header_notLoggedIn.html");
        });
    </script>
</head>
<body>
    <div id="header_notLoggedIn"></div>
    <div id="containerNebenMenu">
        <form id="frmRegister" action="noAction" method="post">
            <div class="inputContainer">
                <div class="labelGleichbreit">
                    <label for="username">Username:</label>
                </div>
                <div class="containerDesInputContainers">
                    <input id="username" type="text" maxlength="20" placeholder="Username" />
                </div>
            </div>
            <div class="inputContainer"></div>
            <div class="inputContainer">
                <div class="labelGleichbreit">
                    <label for="password">Passwort:</label>
                </div>
                <div class="containerDesInputContainers">
                    <input id="password" type="text" maxlength="20" placeholder="Password" />
                </div>
            </div>
            <br />
            <div class="inputContainer">
                <div class="containerDesInputContainers"></div>
                <div class="containerDesInputContainers">
                    <input id="btnAnmelden" class="onlyFloatRight" type="submit" value="Registrieren" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
