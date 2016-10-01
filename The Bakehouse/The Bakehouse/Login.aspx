<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="The_Bakehouse.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login de Admininstración</title>
    <meta charset="utf-8"/>
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/grid.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/camera.css"/>
    <link rel="stylesheet" href="css/jquery.fancybox.css"/>
    <link rel="stylesheet" href="css/contact-form.css"/>

    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>

    <!--[if lt IE 9]>
    <html class="lt-ie9">
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/..">
            <img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a> 
    </div>
    <script src="js/html5shiv.js"></script>
    <![endif]-->
 
    <script src='js/device.min.js'></script> 
</head>
<body>
    <div class =" page">
        <!--========================================================
                              HEADER
    =========================================================-->
    <header>

        <div id="stuck_container" class="stuck_container">
            <div class="container">

                <div class="brand">
                    <h1 class="brand_name">
                        <a href="menu.aspx">The Bakehouse</a>
                    </h1>
                </div>

                <nav class="nav">
                    <ul class="sf-menu">
                        <li>
                            <a href="./">Home</a>
                        </li>
                        <li>
                            <a href="index-1.html">About</a>
                            <ul>
                                <li>
                                    <a href="#">Quisque nulla</a>
                                </li>
                                <li>
                                    <a href="#">Vestibulum libero</a>
                                    <ul>
                                        <li>
                                            <a href="#">Lorem</a>
                                        </li>
                                        <li>
                                            <a href="#">Dolor</a>
                                        </li>
                                        <li>
                                            <a href="#">Sit amet</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Vivamus eget nibh</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="index-2.html">What We Do</a>
                        </li>
                        <li class="active">
                            <a href="index-3.html">Menu</a>
                        </li>
                        <li>
                            <a href="index-4.html">Contacts</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

    </header>
       
    <div>
        <form runat="server" id="form1">
       <section class="parallax parallax1" data-parallax-speed="-0.4">
            <div class="container">
                <h2><em>Login</em>De Administración</h2>
                <section class="center">
            <div class="container">
                <div class="row box-2">
                    <div class="grid_12">
                        <div id="contact-form" class='contact-form'>
                            <fieldset>
                                <label>Nombre de Usuario</label>
                                    <input style="width:50%;text-align:center;" type="text" id="username" runat="server" value=""
                                           data-constraints="@Required @JustLetters"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid name.</span>
                
                             <label>Contraseña</label>
                                    <input style="width:50%;text-align:center; " type="password" id="password" runat="server"
                                           data-constraints="@Required @JustLetters"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid name.</span>          
                
                                <div class="btn-wr">
                                    <asp:Button runat="server" ID="loginBtn1" OnClick="loginBtn_ServerClick" Text ="Ingresar"></asp:Button>
                                </div>
                            </fieldset>
                        </div>
                    </div>    
                   
                </div>
            </div>
        </section>
                
            </div>
        </section>
            </form>
    
    </div>
   
        <!--========================================================
                              FOOTER
    =========================================================-->
    <footer>
        <div class="container">
            <ul class="socials">
                <li><a href="https://www.facebook.com/TheBakehouseGlutenfree/?fref=ts" class="fa fa-facebook"></a></li>
                <li><a href="#" class="fa fa-tumblr"></a></li>
                <li><a href="#" class="fa fa-google-plus"></a></li>
            </ul>
            <div class="copyright">© <span id="copyright-year"></span> |
                <a href="#">Privacy Policy</a>
            </div>
        </div>
    </footer>
        </div>
    
    <script src="js/script.js"></script>
</body>
</html>
