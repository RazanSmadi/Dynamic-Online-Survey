<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resulttt.aspx.cs" Inherits="pr4.resulttt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="homepage.css" />
    <title>Thank You</title>
</head>
<body style="background-color: #D1EBFF">
    <form id="form1" runat="server">
        
        
        <section class="home" id="home"><nav><a href="HomePage.html"><img id="imgg" src="logo.png"></a><ul>
            <li><a id="logIn" href="WebForm1.aspx">Log out</a></li></ul></nav></section>
    
        <div class="cendiv">
            <div class="thanks"><asp:Label ID="Label1" runat="server" Text="Thank You" CssClass="tx"></asp:Label></div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" CssClass="button" />
            <br />
            <img src="pic.png" id="ressul" />
        </div>
        
        <footer id="footer1"><p id="rights">© 2022 Social Hawk. All Rights Reserved</p></footer>
    </form>
</body>
</html>
