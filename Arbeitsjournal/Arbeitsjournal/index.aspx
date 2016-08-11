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
            $("#header_loggedIn").load("header_loggedIn.html");
        });
    </script>
</head>
<body>
    <!-- Header Einbindung -->
    <div id="header_loggedIn"></div>
    <div id="containerNebenMenu">
        <h2 id="title">Dashboard</h2>
        <div class="leftbar">
            <div id="dashboard_profile" class="abstandsbox">
            <h3 class="subtitle">Profil</h3>
            <div class="boxInnerhalb">Ist noch leer</div>
        </div>
        <div id="dashboard_neuePosts" class="abstandsbox">
            <h3 class="subtitle">Posts von Mitarbeitern</h3>
            <div class="boxInnerhalb">Keine neuen Post von ihren Mitarbeitern</div>
        </div>
            </div>
        <div class="sidebar">
        <div id="dashboard_letzteArbeitsjournale" class="abstandsbox">
            <h3 class="subtitle">Letzte Arbeitsjournale</h3>
            <div class="boxInnerhalb">Keine letzten Arbeitsjournale</div>
        </div>
        </div>
    </div>
    <form id="form1" runat="server" action="index.aspx" enctype="text/plain" method="post">
    </form>
</body>
</html>
