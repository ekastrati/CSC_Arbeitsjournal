<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Arbeitsjournal.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registrieren</title>
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
        <form id="frmRegister" action="index.aspx" method="post">
            <div class="inputContainer">
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="username">Username:</label>
                    </div>
                    <input id="username" type="text" maxlength="20" placeholder="Username" />
                </div>
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="prename">Vorname:</label>
                    </div>
                    <input id="prename" type="text" maxlength="20" placeholder="Vorname" />
                </div>
            </div>
            <br />
            <div class="inputContainer"></div>
            <div class="inputContainer">
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="email">Email:</label>
                    </div>
                    <input id="email" type="text" maxlength="60" placeholder="Email" />
                </div>
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="name">Nachname:</label>
                    </div>
                    <input id="name" type="text" maxlength="20" placeholder="Nachname" />
                </div>
            </div>
            <br />
            <div class="inputContainer"></div>
            <div class="inputContainer">
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="password">Passwort:</label>
                    </div>

                    <input id="password" type="text" maxlength="20" placeholder="Password" />
                </div>
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="repeatPassword">Passwort:</label>
                    </div>

                    <input id="repeatPassword" type="text" maxlength="20" placeholder="Repeat Password" />
                </div>
            </div>
            <br />
            <div class="registrierenButtonAlignMitte">
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit"></div>
                    <div class="labelGleichbreit"></div>
                    <div class="onlyFloatRight">
                        <input id="btnregistrieren" type="submit" value="Registrieren" />
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
