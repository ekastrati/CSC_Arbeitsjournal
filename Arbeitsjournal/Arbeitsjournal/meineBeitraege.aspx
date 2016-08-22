<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="meineBeitraege.aspx.cs" Inherits="Arbeitsjournal.meineBeitraege" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="CSS/meineBeitraege.css" />
    <title>Meine Beträge</title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $(function () {
            $("#header_loggedIn").load("Header/header_loggedIn.html", "", function () {
                $("#lblUsername").text('<%= Session["username"] %>');
            });
        });
    </script>
</head>
<body>
    <div id="header_loggedIn"></div>
    <h1 id="titleOfEachSite">Meine Beträge</h1>
    <div class="mainDiv">
        <form id="frmJournal" runat="server">
            <a href="/neuerBeitrag.aspx">Neuer Beitrag</a>
            <div class="beitragDiv">
                <h1>Beitrag vom 08.08.2016</h1>
                <p id="beitrag">
                    Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
                     erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus
                     est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore
                     et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea
                     takimata sanctus est Lorem ipsum dolor sit amet.
                </p>
                <div class="kommentarDiv">
                    <h1>Kommentar von Freddy</h1>
                    <h2>Montag 08.08.2016</h2>
                    <p id="txtKommentar" class="txtKommentar">
                        Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
                     erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus
                     est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore
                     et dolore magna aliquyam erat, sed diam voluptua.
                    </p>
                </div>
                <div class="kommentarDiv">
                    <h1>Kommentar von Endrit</h1>
                    <h2>Montag 08.08.2016</h2>
                    <p id="txtKommentar1" class="txtKommentar">
                        Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
                     erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus
                     est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore
                     et dolore magna aliquyam erat, sed diam voluptua.
                    </p>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
