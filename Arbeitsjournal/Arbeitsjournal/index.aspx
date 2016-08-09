<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Arbeitsjournal.index" %>

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
    <!-- Header Dinbindung -->
    <div id="header_loggedIn"></div>
    <div id="dashboard_profile"><div class="boxInnerhalb">blabla</div></div>
    <div id="dashboard_letzteArbeitsjournale"><div class="boxInnerhalb">blabla</div></div>
    <div id="dashboard_neuePosts"><div class="boxInnerhalb">blabla</div></div>
    <form id="form1" runat="server" action="index.aspx" enctype="text/plain" method="post">
    </form>
</body>
</html>