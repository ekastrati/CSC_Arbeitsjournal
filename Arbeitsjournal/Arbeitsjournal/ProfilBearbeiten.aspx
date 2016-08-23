<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilBearbeiten.aspx.cs" Inherits="Arbeitsjournal.ProfilBearbeiten" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Profil bearbeiten</title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $(function () {
            $("#header_loggedIn").load("Header/header_loggedIn.html");
        });
    </script>
</head>
<body>
    <!-- Header Einbindung -->
    <div id="header_loggedIn"></div>
    <div id="containerNebenMenu">
        <asp:Label ID="lblFehlermeldung" runat="server" ForeColor="Red"></asp:Label>
        <h2 id="title">Profil bearbeiten</h2>
            <form id="changeProfileData" runat="server"  method="post">
            <div class="boxInnerhalb">
                <div class="boxInnerhalb">
                    <div class="containerDesInputContainers">
                        <label for="prename">Vorname:</label>
                    </div>
                    <asp:TextBox id="txtPrename" type="text" runat="server" placeholder="Vorname" />
                </div>

                <div class="boxInnerhalb">
                    <div class="containerDesInputContainers">
                        <label for="name">Nachname:</label>
                    </div>
                    <asp:TextBox id="txtName" type="text" runat="server" placeholder="Nachname" />
                </div>

                <div class="boxInnerhalb">
                    <div class="containerDesInputContainers">
                        <label for="username">Username:</label>
                    </div>
                    <asp:TextBox id="txtUsername" type="text" runat="server" placeholder="Benutzername" />
                </div>

                <div class="boxInnerhalb">
                    <div class="containerDesInputContainers">
                        <label for="email">Email:</label>
                    </div>
                    <asp:TextBox id="txtEmail" type="text" runat="server" placeholder="Email Adresse" />
                </div>

                <div class="boxInnerhalb">
                    <strong>Zur Abänderung der Benutzerdaten muss das aktuelle Passwort eingegeben werden</strong>
                </div>
                <div class="boxInnerhalb">
                    <div class="containerDesInputContainers">
                        <label for="password">Passwort:</label>
                    </div>
                    <asp:TextBox id="txtPassword" type="password" runat="server" placeholder="Passwort" />
                </div>
                    <strong id="fehlermeldung"></strong>
                <br />
            </div>
            <div class="sidebar">
                <asp:button id="applyChanges" runat="server" type="submit" value="applyChanges" Text="Übernehmen" OnClick="applyChanges_Click"></asp:button>
                <asp:button id="passwordChange" runat="server" Text="Passwort ändern" value="passwordChange" OnClick="passwordChange_Click"></asp:button>
            </div>
        </form>
    </div>
</body>
</html>
