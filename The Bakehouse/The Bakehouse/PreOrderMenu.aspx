<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PreOrderMenu.aspx.cs" Inherits="The_Bakehouse.PreOrderMenu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Productos Bajo Pedido</title>
    
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
                        <a href="PreOrderMenu.aspx">Bajo Pedido</a>
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
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <main>
        <section class="well well__offset-3">
            <div class="container">
                <h2><em>Productos</em>Contra Pedido</h2>
                <p>Tenga en cuenta que si ordena de nuestro menú contra pedido, los mismos seran entregados dos días luego de que el pedido se haga, como mínimo. Gracias por su comprensión. Todos los productos que desee ordenar le seran entregados a la dirección y el lugar que usted especifique.</p>
                <p>Además recuerden que nuestro transporte de pedidos por el momento abarca San Pedro, Curridabat, Tres Ríos, San Francisco de Dos Ríos y Cartago Centro. Esperamos que disfrute de nuestros fresquisimos productos libres de gluten.</p>
                <div class="row box-2">
                    <!-- Este es el repeater que me sirve para poder tener los datos de los productos -->
                    <asp:Repeater ID="productRepeater" runat ="server" OnItemDataBound="productRepeater_ItemDataBound" OnItemCommand="productRepeater_ItemCommand">
                        <ItemTemplate>
                            <div class="grid_4">
                                <div class="img"><div class="lazy-img"style="padding-bottom: 76.21621621621622%;" > <img ID="productImg" runat="server" /></div></div>
                                <h3 runat ="server" id="productName"></h3>
                                <p runat="server" id="productDescription"></p>
                                <h3 runat="server" id="price"></h3>
                                <p runat="server" id="minimunDelivery"></p>
                                <p runat="server" id="finalDate"></p>
                                <asp:HiddenField runat="server" ID="ProductID" />
                                <div id="contact-form" class='contact-form' >
                                    <div class="btn-wr">
                                    <asp:LinkButton runat="server" ID="MakeOrder" CommandName="MakeOrder" >Haz tu Pedido</asp:LinkButton>
                                    <asp:Button runat="server" ID="processbtn" Style="visibility:hidden;" />    
                                    </div> 
                                 <!--<div class="btn-wr">
                                    <a id="BuyBtn" runat="server" >Comprar</a>
                                </div> -->
                                </div>
                            </div>
                            <asp:ModalPopupExtender ID="ModalPopupExtender" runat="server"
                                        TargetControlID="processbtn"
                                        
                                        PopupControlID="Panel1"
                                        Drag="true"
                                        BackgroundCssClass="modalBackground">
                                    </asp:ModalPopupExtender>
                        </ItemTemplate>
                    </asp:Repeater>
                     <!-- fin del repeater -->
                    <asp:Panel ID="Panel1" Style="display: none" CssClass="modalPopup" align="center" runat="server">
                                    <p runat="server" id="messageLogin">Es necesario llenar los espacios</p>
                                    <hr />
                        <div id="contact-form" class='contact-form'>
                        <label>Correo:</label>
                        <input style="width:50%;" type="text" id="usernameTxt" runat="server" value=""
                                           data-constraints="@Required @JustLetters"/>
                            <label>Teléfono:</label>
                        <input style="width:50%;" type="text" id="userPhoneTxt" runat="server" value=""
                                           data-constraints="@Required @JustLetters"/>   
                            <label>Dirección Exacta:</label>
                        <textarea style="width:50%; height:10%;" type="text" id="adressTxt" runat="server" value=""
                                           data-constraints="@Required @JustLetters"/> 
                                     <label>Cantidad:</label>
                        <input style="width:50%;" type="number" id="amountTxt" min="1"  runat="server" value=""
                                           data-constraints="@Required @JustLetters"/>   
                            <label>Fecha en la que desea la entrega:</label> 
                            <input style="width:50%;" type="date" id="datePicker"  runat="server" />
                            
                        <div class="btn-wr">
                                    <a id="MakeOrderAccept" runat="server" onserverclick="MakeOrderAccept_ServerClick">Ordenar</a>
                            <asp:Button runat="server" ID="processbtn2" Style="visibility:hidden;" />
                            </div>
                            </div>
                                </asp:Panel>
                </div>
            </div>
            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
                                        TargetControlID="processbtn2"
                                        CancelControlID="btnCancel"
                                        PopupControlID="Panel2"
                                        Drag="true"
                                        BackgroundCssClass="modalBackground1">
                                    </asp:ModalPopupExtender>
            <asp:Panel ID="Panel2" Style="display: none" CssClass="modalPopup1" align="center" runat="server">
                                    <p runat="server" id="resultMessage"></p>
                                    <hr />
                <div id="contact-form" class='contact-form'>
                    <div class="btn-wr">
                                    <a id="btnCancel">Aceptar</a>
                        </div>
                    </div>
                                </asp:Panel>
            
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
    <style type="text/css">
            .modalBackground {
                background-color: Black;
                filter: alpha(opacity=90);
                opacity: 0.8;
            }

            .modalPopup {
                background-color: #FFFFFF;
                border-width: 3px;
                border-style: solid;
                border-color: black;
                padding-top: 10px;
                padding-left: 10px;
                width: 70%;
                height: 90%;
            }
        </style>
    <style type="text/css">
            .modalBackground1 {
                background-color: Black;
                filter: alpha(opacity=90);
                opacity: 0.8;
            }

            .modalPopup1 {
                background-color: #FFFFFF;
                border-width: 3px;
                border-style: solid;
                border-color: black;
                padding-top: 10px;
                padding-left: 10px;
                width: 300px;
                height: 180px;
            }
        </style>
</body>
</html>
