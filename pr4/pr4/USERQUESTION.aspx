<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="USERQUESTION.aspx.cs" Inherits="pr4.USERQUESTION" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Survey</title>
    <link rel="stylesheet" href="styleSheet4.css">
</head>
<body>
    <form id="form1" runat="server">

                <!-- Navbar code -->
                <nav id="navbar"><a href="HomePage.html"><img id="logo" src="logo.png"></a></nav>
                
                <!-- question box -->
                <div class="body-div">
                    <div class="question-box" id="quiz-box">
                        <div class="question-box-small">
                            <asp:Label class="question"  ID="Label1" runat="server" Text="" Font-Size="20px" Font-Bold="True"></asp:Label>
                            <div class="answer">
                                <span class="qu">
                                    <asp:RadioButton ID="RadioButton1" runat="server" value="ahmad" GroupName="ahmad"  Text="Excelent"/>
                                </span>
                                
                                <span class="qu">
                                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="ahmad" Text="Very Good" />
                                </span>
                                
                                <span class="qu">
                                    <asp:RadioButton ID="RadioButton3" runat="server"  GroupName="ahmad" Text="Good" />
                                </span>
                                
                                <span class="qu">
                                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="ahmad"  Text="Poor" />
                                </span>  
                            </div>
                        </div>
                        <div class="buttt"> <asp:Button class="butt" ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" /></div>
                    </div>
                </div>

                </form>

    <!-- footer -->
    <footer id="footer1"><p id="rights">© 2022 Social Hawk. All Rights Reserved</p></footer>
</body>
</html>
