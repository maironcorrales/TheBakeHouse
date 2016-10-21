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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>   

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
                                <a href="Billing.aspx">Facturación</a>
                             </li>
                        </ul>
                    </li>
                    <li>
                        <a href="MessageSuscriptor.aspx">Escribir A Suscriptores</a>
                    </li>
                    <li>
                        <a href="Homepage.aspx">Cerrar Sesión</a>
                    </li>
                    <li id="noti_Container">
                                <div id="noti_Counter"></div>   
                                <a href="AdminNotification.aspx" id="noti_Button">
                                    <img src="images/notification.png"/></a>
                                <div id="notifications">
                                    <h3>Notificationes</h3>
                                    <div style="height:300px;">
                                        <asp:Repeater runat="server" ID="popup_Notifications" OnItemDataBound="popup_Notifications_ItemDataBound">
                                            <ItemTemplate>
                                                <div id="noti_Item">
                                                    <a><asp:Label runat="server" ID="lbl_Notification_Popup"></asp:Label></a>
                                                    <hr />
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>                                        
                                    </div>
                                    <div class="seeAll"><a href="AdminNotification.aspx">Ver Todo</a></div>
                                </div>
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
                 <script type="text/javascript">
                     $(document).ready(function () {

                         // ANIMATEDLY DISPLAY THE NOTIFICATION COUNTER.
                         $('#noti_Counter')
                             .css({ opacity: 0 })
                             .text('<%=count_Notification%>')              // ADD DYNAMIC VALUE (YOU CAN EXTRACT DATA FROM DATABASE OR XML).
                    .css({ top: '-10px' })
                    .animate({ top: '-2px', opacity: 1 }, 500);

                $('#noti_Button').click(function () {

                    // TOGGLE (SHOW OR HIDE) NOTIFICATION WINDOW.
                    $('#notifications').fadeToggle('fast', 'linear', function () {
                        if ($('#notifications').is(':hidden')) {
                            $('#noti_Button').css('background-color', '#a95858');
                        }
                        else $('#noti_Button').css('background-color', '#a95858');        // CHANGE BACKGROUND COLOR OF THE BUTTON.
                    });

                    $('#noti_Counter').fadeOut('slow');                 // HIDE THE COUNTER.

                    return false;
                });

                // HIDE NOTIFICATIONS WHEN CLICKED ANYWHERE ON THE PAGE.
                $(document).click(function () {
                    $('#notifications').hide();

                    // CHECK IF NOTIFICATION COUNTER IS HIDDEN.
                    if ($('#noti_Counter').is(':hidden')) {
                        // CHANGE BACKGROUND COLOR OF THE BUTTON.
                        $('#noti_Button').css('background-color', '#a95858');
                    }
                });

                $('#notifications').click(function () {
                    return false;       // DO NOTHING WHEN CONTAINER IS CLICKED.
                });
            });
    </script>
    <style>        
    #noti_Container {
        position:relative;
    }
    
        
    /* THE POPULAR RED NOTIFICATIONS COUNTER. */
    #noti_Counter {
        display:block;
        position:absolute;
        background:#E1141E;
        color:#FFF;
        font-size:16px;
        font-weight:normal;
        padding:1px 3px;
        margin:-8px 0 0 25px;
        border-radius:2px;
        -moz-border-radius:2px; 
        -webkit-border-radius:2px;
        z-index:1;
    }
        
    /* THE NOTIFICAIONS WINDOW. THIS REMAINS HIDDEN WHEN THE PAGE LOADS. */
    #notifications {
        display:none;
        width:430px;
        position:absolute;
        top:38px;
        right:-28px;
        background:#FFF;
        border:solid 1px rgba(100, 100, 100, .20);
        -webkit-box-shadow:0 3px 8px rgba(0, 0, 0, .20);
        z-index: 0;
    }
    /* AN ARROW LIKE STRUCTURE JUST OVER THE NOTIFICATIONS WINDOW */
    #notifications:before {         
        content: 'ddd';
        display:block;
        width:0;
        height:0;
        color:transparent;
        border:10px solid #CCC;
        border-color:transparent transparent #FFF;
        margin-top:-20px;
        margin-left:375px;
    }

    #noti_Item{
        height:40px;
        font-size:14px;
       /* border-bottom:solid 1px rgba(100, 100, 100, .30);*/
        padding-left:0.2em;
        padding-right:0.2em;
    }

    #noti_Item a{
        padding-left:0.5em;
        padding-right:0.5em;
        padding-top:0.5em;        
        color:black;
    }
        
    h3 {
        display:block;
        color:#333; 
        background:#FFF;
        font-weight:bold;
        font-size:13px;    
        padding:8px;
        margin:0;
        border-bottom:solid 1px rgba(100, 100, 100, .30);
    }
        
    .seeAll {
        padding:8px;
        font-size:12px;
        font-weight:bold;
        border-top:solid 1px rgba(100, 100, 100, .30);
        text-align:center;
    }
    .seeAll a {
        color:#a95858;
    }
    .seeAll a:hover {
        color:#a95858;
        text-decoration:underline;
    }
    </style>
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
                                    <input type="text" id="productName" runat="server" name="name" 
                                           data-constraints="@Required @JustLetters"/>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*Este no es un nombre válido.</span>
                                </label>
                
                                <label class="email">
                                    Precio:
                                    <input type="text" id="price" runat="server"/>                
                                    <span class="empty-message">*Este campo es requerido.</span>
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
                                        <p runat="server" id="resultMessage"></p>
                                        <hr />
                                        <a id="btnAccept" runat="server">Aceptar</a>
                                    </asp:Panel>
                                </div>
                            </fieldset>
                        </div>
                    </div>    
                    <div class="preffix_1 grid_6">
                        <h2>Imagen del Producto</h2>
                        <div class="img"><div class="lazy-img" style="padding-bottom: 76.21621621621622%;"><img runat="server" id="uploadImageUser"></div></div>
                        <div id="contact-form" class='contact-form'>
                        <div class="btn-wr">
                            <a class="" runat="server" id="Browse">Buscar Imagen</a>
                            <a class="" runat="server" id="UploadImage" onserverclick="UploadImage_ServerClick">Subir Imagen</a>
                            <asp:FileUpload id="ImageUploader" runat="server" style="display:none;"/>
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
                    <asp:Repeater ID="productRepeater" runat ="server" OnItemDataBound="productRepeater_ItemDataBound" OnItemCommand="productRepeater_ItemCommand" >
                        <ItemTemplate>
                            <div class="grid_4">
                                <div class="img"><div class="lazy-img"style="padding-bottom: 76.21621621621622%;" > <img ID="productImg" runat="server" /></div></div>
                                <h3 runat ="server" id="productName"></h3>
                                <p runat="server" id="productDescription"></p>
                                <h3 runat="server" id="price"></h3>
                                <p runat="server" id="amount"></p>
                                <asp:HiddenField runat ="server" ID="productID" />
                                <div id="contact-form" class='contact-form' >
                                 <div class="btn-wr">
                                    <asp:LinkButton Visible="true" ID="EditBtn" runat="server" CommandName="EditProduct" Text="Editar"></asp:LinkButton>
                                     <asp:LinkButton visible="true" ID="DeleteBtn" runat="server" CommandName="deleteProduct" Text="Eliminar"></asp:LinkButton>
                                     <asp:Button runat ="server" ID="updateProcess" OnClick="deleteProcess_Click" Style="visibility:hidden;"  />
                                     <asp:Button runat ="server" ID="deleteProcess" OnClick="deleteProcess_Click" Style="visibility:hidden;"  />
                                </div>
                                </div>
                            </div>
                            <asp:ModalPopupExtender runat="server" ID="deletePopUp" TargetControlID="deleteProcess"
                                CancelControlID="btnCancel"
                                PopupControlID="PanelDelete"
                                Drag="true"
                                BackgroundCssClass="modalBackgroundDelete">
                            </asp:ModalPopupExtender>

                             <asp:ModalPopupExtender runat="server" ID="EditPopUp" TargetControlID="updateProcess"
                                CancelControlID="btnCancelEdit"
                                PopupControlID="PanelEdit"
                                Drag="true"
                                BackgroundCssClass="modalBackgroundEdit">
                            </asp:ModalPopupExtender>

                        </ItemTemplate>
                    </asp:Repeater>
                     <!-- fin del repeater -->
                    <!--delete Panel and modal -->
                    
                    <asp:Panel ID="PanelDelete" Style="display:none" CssClass="modalPopupDelete" align="center" runat="server">
                         <p runat="server" id="DeleteQuestion"></p>
                         <hr />
                         <div id="contact-form" class='contact-form' >
                         <div class="btn-wr">
                         <a id="btnAcceptDelete" runat="server" onserverclick="btnAcceptDelete_ServerClick" >Aceptar</a>
                         <a id="btnCancel">Cancelar</a>
                        </div>
                             </div>
                    </asp:Panel>

                    <asp:Panel ID="PanelEdit" Style="display:none" CssClass="modalPopupEdit" align="center" runat="server">
                         <h3 runat="server" id="updateMessage"></h3>
                         <hr />
                         <div id="contact-form" class='contact-form' >
                         <div class="btn-wr">
                             
                            <fieldset>
                                <label class="name">
                                    Nombre del producto:
                                    </label>
                                    <input type="text" id="updateName" runat="server" name="name"  style="width:75%"
                                           data-constraints="@Required @JustLetters"/>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*Este no es un nombre válido.</span>
                                
                
                                <label class="email"> 
                                    Precio:
                                    </label>
                                    <input type="text" id="updatePrice" runat="server" style="width:75%" />                
                                    <span class="empty-message">*Este campo es requerido.</span>
                               
                
                                <label class="Subject">
                                    Cantidad en Existencia:
                                    </label>
                                    <input type="text" id="updateAmount" runat="server" style="width:75%"
                                           data-constraints="@Required"/>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*Este no es un teléfono válido.</span>
                                
                
                                <label class="message">
                                    Descripcion del Producto:
                                    </label>
                                    <textarea name="message"  id="updateDescription" runat="server" style="width:75%"
                                              data-constraints='@Required'></textarea>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*El mensaje es demasiado corto.</span>
                                
                            </fieldset>
                        
                             <a id="UpdateAccept" runat="server" onserverclick="UpdateAccept_ServerClick" >Editar</a>
                             <a id="btnCancelEdit">Cancelar</a>
                             </div>
                        </div>
                             
                    </asp:Panel>
                    <!--end delete Panel and modal -->
                    <!-- Edit Pop up and modal -->
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
                height: 200px;
            }
        </style>
    <style type="text/css">
            .modalBackgroundDelete {
                background-color: Black;
                filter: alpha(opacity=90);
                opacity: 0.8;
            }

            .modalPopupDelete {
                background-color: #FFFFFF;
                border-width: 3px;
                border-style: solid;
                border-color: black;
                padding-top: 10px;
                padding-left: 10px;
                width: 300px;
                height: 200px;
            }
        </style>
    <style type="text/css">
            .modalBackgroundEdit {
                background-color: Black;
                filter: alpha(opacity=90);
                opacity: 0.8;
            }

            .modalPopupEdit {
                background-color: #FFFFFF;
                border-width: 3px;
                border-style: solid;
                border-color: black;
                padding-top: 10px;
                padding-left: 10px;
                width: 75%;
                height: 100%;
            }
        </style>
</body>
</html>
