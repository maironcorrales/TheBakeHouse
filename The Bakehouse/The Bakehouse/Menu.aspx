<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="The_Bakehouse.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Menú</title>
    <meta charset="utf-8"/>
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/grid.css"/>
    <link rel="stylesheet" href="css/style.css"/>
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
                        <a href="Homepage.aspx">Principal</a>
                        <ul>
                            <li>
                                <a href="homepage.aspx#Principal">Inicio</a>
                            </li>
                             <li>
                                <a href="homepage.aspx#Gallery">Conoce Nuestra Cocina</a>
                                
                            </li>
                             <li>
                                <a href="Homepage.aspx#ContactUs">Contáctenos</a>
                             </li>
                            <li>
                                <a href="Homepage.aspx#Ubication">Nuestra Ubicacíon</a>
                             </li>
                             <li>
                                 <a href="Homepage.aspx#SuscribeToTheBakehouse">Suscribete</a>
                            </li>
                            <li>
                                <a href="Homepage.aspx#SocialMedia">Redes Sociales</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="Menu.aspx">Menú</a>
                    </li>
                    <li>
                        <a href="Login.aspx">Administración</a>
                    </li>
                    </ul>
                </nav>
            </div>
        </div>

    </header>
        <form id="form1" runat="server">
            <main>
        <section class="well well__offset-3">
            <div class="container">
                <h2><em>Nuestro</em>Menú</h2>
                <div class="row box-2">
                    <!-- Este es el repeater que me sirve para poder tener los datos de los productos -->
                    <asp:Repeater ID="productRepeater" runat ="server" OnItemDataBound="productRepeater_ItemDataBound">
                        <ItemTemplate>
                            <div class="grid_4">
                                <div class="img"><div class="lazy-img"style="padding-bottom: 76.21621621621622%;" > <img ID="productImg" runat="server" /></div></div>
                                <h3 runat ="server" id="productName"></h3>
                                <p runat="server" id="productDescription"></p>
                                <h3 runat="server" id="price"></h3>
                                <p runat="server" id="amount"></p>
                                <div id="contact-form" class='contact-form' >
                                    <div class="btn-wr">
                                    <a href="Homepage.aspx#ContactUs">Haz tu Pedido</a>
                                        </div> 
                                 <!--<div class="btn-wr">
                                    <a id="BuyBtn" runat="server" onserverclick="BuyBtn_Click">Comprar</a>
                                </div> -->
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                     <!-- fin del repeater -->
                </div>
            </div>
        </section>
    </main>
    
    </form>
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
