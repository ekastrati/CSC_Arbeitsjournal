<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="neuerBeitrag.aspx.cs" Inherits="Arbeitsjournal.neuerBeitrag" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="CSS/neuerBeitrag.css" />
    <title>Neuer Beitrag</title>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src='https://cdn.tinymce.com/4/tinymce.min.js'></script>
    <script>
        $(function () {
            $("#header_notLoggedIn").load("Header/header_notLoggedIn.html");
        });
    </script>
    <script>
        tinymce.init({
            selector: '#mytextarea'
        });
  </script>
</head>
<body>

    <h1>Neuer Beitrag</h1>
  <form method="post">
    <textarea id="mytextarea">Neuer Beitrag</textarea>
  </form>

</body>
</html>
