<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Arbeitsjournal.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content="JavaScript" name="mainscript" />
    <link rel="stylesheet" href="IndexStyleSheet.css" />
    <title>Arbeitsjournal</title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $(function () {
            $("#header_loggedIn").load("Header/header_loggedIn.html");
        });
    </script>
    <script type="text/javascript" src="../JS/mainscript.js"></script>
     <script>
         window.onload = GetUserName();

    </script>
</head>
<body>
    <form id="frmIndex" runat="server">
    <!-- Header Einbindung -->
    <div id="header_loggedIn"></div>
    <div id="containerNebenMenu">
        <h2 id="title">Dashboard</h2>
        <div class="leftbar">
            <div id="dashboard_profile" class="abstandsbox">
            <h3 class="subtitle">Profil
                <asp:Button ID="btnProfilBearbeiten" runat="server" text="Profil bearbeiten" OnClick="btnProfilBearbeiten_Click"></asp:Button></h3>
            <div class="boxInnerhalb"><asp:Label id="lblProfil" runat="server" Text="Ist noch leer"></asp:Label></div>
        </div>
        <div id="dashboard_neuePosts" class="abstandsbox">
            <h3 class="subtitle">Posts von Mitarbeitern</h3>
            <div class="boxInnerhalb"><asp:Label id="lblPostsMitarbeiter" runat="server" Text="Keine neuen Post von Ihren Mitarbeitern"></asp:Label></div>
        </div>
            </div>
        <div class="sidebar">
        <div id="dashboard_letzteArbeitsjournale" class="abstandsbox">
            <h3 class="subtitle">Letzte Arbeitsjournale</h3>
            <div class="boxInnerhalb"><asp:Label id="lblLetzteArbeitsjournale" runat="server" Text="Keine letzten Arbeitsjournale"></asp:Label></div>
        </div>
        </div>
    </div>
    </form>
</body>
</html>