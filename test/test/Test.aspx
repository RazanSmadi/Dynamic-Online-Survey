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
                <p class="welcome">Welcome Amer !</p>
                
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
                    </div>
                </div>
        <div class="container-fluid pt-4 px-4">
                    <div class="row g-4">
                        <div class="col-sm-6 col-sm-3">
                            <div class=" rounded d-flex align-items-center justify-content-around p-4" style="background-color:#2672AB ;">
                                <div class="ms-3">
                                    <p class="statText" style="color: white;font-size:20px">Completed Surveys</p>
                                    <h6 class="mb-0" style="color: white;  text-align:center;"><span id="completed" style="font-size:20px" runat="server"></span></h6>
                                </div>
                            </div>
                        </div>
                           <div class="col-sm-6 col-sm-3">
                            <div class=" rounded d-flex align-items-center justify-content-around p-4" style="background-color:#2672AB ;">
                                <div class="ms-3">
                                    <p class="statText" style="color: white; font-size:20px">Non-Completed Surveys</p>
                                    <h6 class="mb-0" style="color: white; text-align:center;"><span id="notCompleted" style="font-size:20px" runat="server"></span></h6>
                                </div>
                            </div>
                        </div>
                       <div class="col-sm-6 col-sm-3">
                            <div class=" rounded d-flex align-items-center justify-content-around p-4" style="background-color:#2672AB ;">
                                <div class="ms-3">
                                    <p class="statText" style="color: white;font-size:20px"> Employees</p>
                                    <h6 class="mb-0" style="color: white; text-align:center;"><span id="employeesNum" style="font-size:20px" runat="server"></span></h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-sm-3">
                            <div class=" rounded d-flex align-items-center justify-content-around p-4" style="background-color:#2672AB ;">
                                <div class="ms-3">
                                    <p class="statText" style="color: white; font-size:20px"> Missing Surveys</p>
                                    <h6 class="mb-0" style="color: white; text-align:center;"><span id="missing" style="font-size:20px" runat="server"></span></h6>
                                </div>
                            </div>
                        </div>
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