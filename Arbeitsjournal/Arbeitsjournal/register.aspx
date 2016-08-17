<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Arbeitsjournal.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registrieren</title>
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
        <form id="frmRegister" runat="server" method="post">
              <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
            <div class="inputContainer">
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="username">Username:</label>
                    </div>
                    <asp:TextBox id="txtUsername" type="text" maxlength="20" runat="server" placeholder="Username" />
                </div>
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="prename">Vorname:</label>
                    </div>
                    <asp:TextBox  id="txtPrename" type="text" maxlength="20" runat="server" placeholder="Vorname" />
                </div>
            </div>
            <br />
            <div class="inputContainer"></div>
            <div class="inputContainer">
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="email">Email:</label>
                    </div>
                    <asp:TextBox id="txtEmail" type="email" maxlength="60" runat="server" placeholder="Email" />
                </div>
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="name">Nachname:</label>
                    </div>
                    <asp:TextBox id="txtName" type="text" maxlength="20" runat="server" placeholder="Nachname" />
                </div>
            </div>
            <br />
            <div class="inputContainer"></div>
            <div class="inputContainer">
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="password">Passwort:</label>
                    </div>

                    <asp:TextBox id="txtPassword" type="password" maxlength="20" runat="server" placeholder="Password" />
                </div>
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit">
                        <label for="repeatPassword">Passwort:</label>
                    </div>

                    <asp:TextBox id="txtRepeatPassword" type="password" maxlength="20" runat="server" placeholder="Repeat Password" />
                </div>
            </div>
            <br />
            <div class="registrierenButtonAlignMitte">
                <div class="containerDesInputContainers">
                    <div class="labelGleichbreit"></div>
                    <div class="labelGleichbreit"></div>
                    <div class="onlyFloatRight">
                        <asp:Button id="btnregistrieren" type="submit" value="Registrieren" runat="server" Text="Jetzt Registrieren!" OnClick="btnregistrieren_Click" />
                    </div>
                </div>
            </div>
        </form>
        <% 
//            var fname;
//fname=Request.Form("frmRegister");
//      Response.Write("Hello " & fname & "!<br>");
//      Response.Write("How are you today?");
%>
    </div>
</body>
</html>
