<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAdministration.aspx.cs" Inherits="The_Bakehouse.MenuAdministration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admininstración de Menú</title>
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
                        <a href="AdministrationPanel.aspx">Menú</a>
                    </h1>
                </div>

                <nav class="nav">
                    <ul class="sf-menu">
                        <li>
                        <a href="AdministrationPanel.aspx">Administración</a>
                        <ul>
                            <li>
                                <a href="AdminAdministration.aspx">Administradores</a>
                            </li>
                             <li>
                                <a href="MenuAdministration.aspx">Menú y Catálogo</a>
                                
                            </li>
                             <li>
                                <a href="AdminNotification.aspx">Notificaciones</a>
                             </li>
                            <li>
                                <a href="BillingAdministration.aspx">Facturación</a>
                             </li>
                        </ul>
                    </li>
                    <li>
                        <a href="MessageSuscriptor.aspx">Escribir A Suscriptores</a>
                    </li>
                    <li>
                        <a href="Homepage.aspx">Cerrar Sesión</a>
                    </li>
                    <li>
                        <a href="AdminNotification.aspx"><img src="images/notification.png" /></a>
                    </li>
                    </ul>
                </nav>
            </div>
        </div>

    </header>

        <!-- Fin del header -->

        <!--Empieza la admininstracion del menu -->
        <main>
            <form id="form1" runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <section class="parallax parallax1" data-parallax-speed="-0.4">     
                    <h2>Introducir un Nuevo Producto</h2>     
                    <section class="well well__offset-3">
            <div class="container">
                <div class="row box-3">
                    <div class="grid_5">
                        <h2>Datos del Producto</h2>
                        <div id="contact-form" class='contact-form'>
                            <div class="contact-form-loader"></div>
                            <fieldset>
                                <label class="name">
                                    Nombre del producto:
                                    <input type="text" id="Text1" runat="server" name="name" 
                                           data-constraints="@Required @JustLetters"/>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*Este no es un nombre válido.</span>
                                </label>
                
                                <label class="email">
                                    Precio:
                                    <input type="text" id="price" runat="server"
                                           data-constraints="@Required @Email"/>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*Este no es un correo electrónico válido.</span>
                                </label>
                
                                <label class="Subject">
                                    Cantidad en Existencia:
                                    <input type="text" id="amount" runat="server"
                                           data-constraints="@Required"/>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*Este no es un teléfono válido.</span>
                                </label>
                
                                <label class="message">
                                    Descripcion del Producto:
                                    <textarea name="message"  id="productDescription" runat="server"
                                              data-constraints='@Required'></textarea>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*El mensaje es demasiado corto.</span>
                                </label>
                
                                <div class="btn-wr">
                                    <a class="" href="#" runat="server" onserverclick="cancelBtn_ServerClick" id="cancelBtn" data-type="reset">Cancelar</a>                                    
                                    <a class="" runat="server" id="SaveProduct" onserverclick="SaveProduct_ServerClick">Guardar</a>
                                    <asp:Button runat="server" id="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;"/>
                                    <asp:Panel ID="Panel2" Style="display:none" CssClass="modalPopup" align="center" runat="server">
                                        <p runat="server" id="sendEmailMessage"></p>
                                        <hr />
                                        <a id="btnAccept">Aceptar</a>
                                    </asp:Panel>
                                </div>
                            </fieldset>
                        </div>
                    </div>    
                    <div class="preffix_1 grid_6">
                        <h2>Imagen del Producto</h2>
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img runat="server" id="uploadImageUser" data-src="images/placeholder.gif" alt=""></div></div>
                        <div id="contact-form" class='contact-form'>
                        <div class="btn-wr">
                            <a class="" runat="server" id="UploadImage" onserverclick="SaveProduct_ServerClick">Subir Imagen</a>
                        </div>
                       </div>
                    </div>
                    <asp:ModalPopupExtender ID="ModalPopupExtender" runat="server"
                        TargetControlID="processbtn"
                        CancelControlID="btnAccept"
                        PopupControlID="Panel2"
                        Drag="true"
                        BackgroundCssClass="modalBackground">
                    </asp:ModalPopupExtender>
                </div>
            </div>
        </section>
                          
                </section>
                <div class="container">
                    <hr />
                </div>
                <section class="well well__offset-3">
            <div class="container">
                <h2>Todos los Productos</h2>
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
                                    <a id="EditBtn" runat="server" onserverclick="EditBtn_ServerClick">Editar</a>
                                    <a id="DeleteBtn" runat="server" onserverclick="DeleteBtn_ServerClick">Eliminar</a>
                                </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                     <!-- fin del repeater -->
           </div>
            </div>
        </section>
            </form>
        </main>
        <footer>
        <div class="container">
            <div class="copyright">© <span id="copyright-year"></span> |
                <a>The Bakehouse Gluten Free</a>
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
                width: 300px;
                height: 180px;
            }
        </style>
</body>
</html>
