<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="test.Test" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Style.css">
    <script src="https://kit.fontawesome.com/e869edadc1.js" crossorigin="anonymous"></script>
    <link href="bootstrap.min.css" rel="stylesheet">


</head>
<body>
    <!-- navbar start -->
        <nav id="navbar">
            <div>
            <img id="logo" src="logo.png">
            </div>
                <div>   
                    <ul>
                        <li>
                            <a class="navLinks" href="#">
                            Home
                            </a>
                        </li>
                        <li>
                            <a class="navLinks" href="#">
                                Logout
                                </a>
                        </li>
                    </ul>
                </div>
        </nav>
    
        <!-- navbar end -->
        <!-- side bar start -->
        
        <div class="app">
            <div class="menu-toggle">
                <div class="hamburger">
                    <span></span>
                </div>
            </div>
    
            <aside class="sidebar">
                <p>Welcome, Amer</p>
                
                <div class="menu">
                    <a href="#" class="menu-item">Questions</a>
                    <a href="#" class="menu-item is-active">Results</a>
                    <div>
                        
                     <a href="#" class="menu-item">Employees</a>
                </div>
                </div>
    
            </aside>
    
            <main class="maincontent" style="background-color: white;">
                <p class="survey">Employees Survies</p>
                    
                <div class="col-12" >
                    <div class="rounded h-100 p-4" >
                       
                        <div class="table-responsive" style="color: black;">
                            
                                <asp:Table class="table" id="resultTable" runat="server">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell runat="server" scope="col">#</asp:TableCell>
                                        <asp:TableCell runat="server" scope="col">Employee Num</asp:TableCell>
                                        <asp:TableCell runat="server" scope="col">Employee Email</asp:TableCell>
                                        <asp:TableCell runat="server" scope="col">Survey</asp:TableCell>
                                    </asp:TableRow>
                           </asp:Table>
                        </div>
                        <asp:HyperLink runat="server" NavigateUrl="Texts/21-mosab@gmail.com-3.12.txt" Target="_new">HyperLink</asp:HyperLink>
                    </div>
                </div>
       
            </main>
        </div>
    
        <script>
            const menu_toggle = document.querySelector('.menu-toggle');
            const sidebar = document.querySelector('.sidebar');
    
            menu_toggle.addEventListener('click', () => {
                menu_toggle.classList.toggle('is-active');
                sidebar.classList.toggle('is-active');
            });
        </script>
</body>
</html>