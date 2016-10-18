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
                                 <a href="Homepage.aspx#AboutUs">Conocenos</a>
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
                                    <a id="BuyBtn" runat="server" onserverclick="BuyBtn_Click">Comprar</a>
                                </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                     <!-- fin del repeater -->
                     <!--A continuacion muestra de como se veria el producto final  -->
                    <%--<div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img01.jpg" alt=""></div></div>
                        <h3>Anteger convallis orci vel mi nelaoreet, at ornare lorem consequat. </h3>
                        <p>Vestibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequat.</p>
                        <h3>Precio:₡ 2500</h3>
                        <div class="btn-wr">
                                    <asp:Button CssClass="button" ID="Button8" runat="server" Text ="Comprar" OnClick="BuyBtn_Click" />
                                </div>
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img02.jpg" alt=""></div></div>
                        <h3>Genteger convallis orci vel mi nelaoreet, at ornare lorem consequat.</h3>
                        <p>Meestibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequatre. </p>
                        <p>Precio:₡ 2500</p>
                        <asp:Button CssClass="button" ID="BuyBtn" runat="server" Text ="Comprar" OnClick="BuyBtn_Click" />
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img03.jpg" alt=""></div></div>
                        <h3>Ternteger convallis orci vel mi nelaoreet, at ornare lorem consequat. </h3>
                        <p>Testibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequ.</p>
                        <p>Precio:₡ 2500</p>
                        <div class="btn-wr">
                                    <asp:Button CssClass="button" ID="Button1" runat="server" Text ="Comprar" OnClick="BuyBtn_Click" />
                                </div>
                    </div>
                </div>
                <div class="row box-2">
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img04.jpg" alt=""></div></div>
                        <h3>Onteger convallis orci vel mi nelaoreet, at ornare lorem consequate. </h3>
                        <p>Testibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequa.</p>
                        <p>Precio:₡ 2500</p>
                        <div class="btn-wr">
                                    <asp:Button CssClass="button" ID="Button2" runat="server" Text ="Comprar" OnClick="BuyBtn_Click" />
                                </div>
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img05.jpg" alt=""></div></div>
                        <h3>Fenteger convallis orci vel mi nelaoreet, at ornare lorem consequat. </h3>
                        <p>Vestibulum volutp turpis ut massa commodo, quis aliquam massa facilisis.Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.</p>
                        <p>Precio:₡ 2500</p>
                        <div class="btn-wr">
                                    <asp:Button CssClass="button" ID="Button3" runat="server" Text ="Comprar" OnClick="BuyBtn_Click" />
                                </div>
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img06.jpg" alt=""></div></div>
                        <h3>Dernteger convallis orci vel mi nelaoreet, at ornare lorem consequat. </h3>
                        <p>Testibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem conseasellus era nisl. </p>
                        <p>Precio:₡ 2500</p>
                        <div class="btn-wr">
                                    <asp:Button CssClass="button" ID="Button4" runat="server" Text ="Comprar" OnClick="BuyBtn_Click" />
                                </div>
                    </div>
                </div>
                <div class="row box-2">
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img07.jpg" alt=""></div></div>
                        <h3>Anteger convallis orci vel mi nelaoreet, at ornare lorem consequat. </h3>
                        <p>Vestibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequat.</p>
                        <p>Precio:₡ 2500</p>
                        <div class="btn-wr">
                                    <asp:Button CssClass="button" ID="Button5" runat="server" Text ="Comprar" OnClick="BuyBtn_Click" />
                                </div>
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img08.jpg" alt=""></div></div>
                        <h3>Genteger convallis orci vel mi nelaoreet, at ornare lorem consequat.</h3>
                        <p>Meestibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequatre. </p>
                        <p>Precio:₡ 2500</p>
                        <div class="btn-wr">
                                    <asp:Button CssClass="button" ID="Button6" runat="server" Text ="Comprar" OnClick="BuyBtn_Click" />
                                </div>
                    </div>
                    <div class="grid_4">
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img data-src="images/page-4_img09.jpg" alt=""></div></div>
                        <h3>Ternteger convallis orci vel mi nelaoreet, at ornare lorem consequat. </h3>
                        <p>Testibulum volutpatturpis ut massa commodo, quis aliquam massa facilisis.Integer convavel miberto merlonelaoreet, at ornare lorem consequ.</p>
                        <p>Precio: ₡ 2500</p>
                        <div class="btn-wr">
                                    <asp:Button CssClass="button" ID="Button7" runat="server" Text ="Comprar" OnClick="BuyBtn_Click" />
                                </div>
                    </div>--%>
                    <!--Fin de la demostracion  -->
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
