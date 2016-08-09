<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Arbeitsjournal.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content="JavaScript" name="mainscript" />
    <link rel="stylesheet" href="IndexStyleSheet.css" />
    <title>Arbeitsjournal</title>
</head>
<body>
    <h1>Arbeitsjournal</h1>
    <div id="divMenu">
        <nav>
            <menu>
                <ul>
                    <li>
                        <a class="menuLinks" href="https://www.google.ch/?gws_rd=ssl"><div class="linkumrandungDashboard"> Dashboard</div></a>
                    </li>
                    <li>
                        <a class="menuLinks" href="https://www.google.ch/?gws_rd=ssl"><div class="linkumrandungMeineBeiträge"> Meine Beiträge</div></a>
                    </li>
                    <li>
                        <a class="menuLinks" href="https://www.google.ch/?gws_rd=ssl"><div class="linkumrandungMitarbeiter"> Mitarbeiter</div></a>
                    </li>
                    <li>
                        <a class="menuLinks" href="https://www.google.ch/?gws_rd=ssl"><div class="linkumrandungProfil"> Profil</div></a>
                    </li>
                </ul>
            </menu>
        </nav>
    </div>
    <form id="form1" runat="server" action="index.aspx" enctype="text/plain" method="post">
    </form>
</body>
</html>
