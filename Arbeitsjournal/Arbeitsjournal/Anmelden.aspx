<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anmelden.aspx.cs" Inherits="Arbeitsjournal.Anmelden" %>

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
    <div id="containerNebenMenu">
        <form id="frmLogIn" runat="server" method="post">
            <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
            <div class="inputContainer">
                <div class="labelGleichbreit">
                    <label for="username">Username:</label>
                </div>
                <div class="containerDesInputContainers">
                    <asp:TextBox ID="txtUsername" runat="server" type="text" MaxLength="20" placeholder="Username" />
                </div>
            </div>
            <div class="inputContainer"></div>
            <div class="inputContainer">
                <div class="labelGleichbreit">
                    <label for="password">Passwort:</label>
                </div>
                <div class="containerDesInputContainers">
                    <asp:TextBox ID="txtPassword" runat="server" type="password" MaxLength="20" placeholder="Password" />
                </div>
            </div>
            <br />
            <div class="inputContainer">
                <div class="containerDesInputContainers"></div>
                <div class="containerDesInputContainers">
                    <asp:Button ID="btnAnmelden" runat="server" class="onlyFloatRight" Text="Anmelden" type="submit" value="Registrieren" OnClick="btnAnmelden_Click" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
