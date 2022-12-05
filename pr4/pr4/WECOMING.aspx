<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WECOMING.aspx.cs" Inherits="pr4.WECOMING" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheetWelcome.css"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="backimg">
            <section class="home" id="home"><nav>
                    <a href="HomePage.html"><image id="imgg" src="logo.png" width="240px"/></a>
                    <ul><li><a id ="logIn" href="WebForm1.aspx">Log Out</a></li></ul></nav></section>
            
            <div class="box2">
                <div class="textandbut">
                    <asp:Label ID="Label1" runat="server" CssClass="well"></asp:Label>
                    <p>Our survey awaits you about the c# course we gave you. We hope you will fill out this questionnaire which will guide us to be the best always.</p>
                    <asp:Button ID="Button2" runat="server" Text="Start Survey" OnClick="Button1_Click" class="buttn"/>
                </div>
            </div>
        </div>
        <footer id="footer1"><p id="rights">© 2022 Social Hawk. All Rights Reserved</p></footer>
    </form>
</body>
</html>
