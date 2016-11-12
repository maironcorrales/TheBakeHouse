<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministrationPanel.aspx.cs" Inherits="The_Bakehouse.AdministrationPanel" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Panel de Admninistración</title>
    <meta charset="utf-8" />
    <meta name="format-detection" content="telephone=no" />
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/grid.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/camera.css" />
    <link rel="stylesheet" href="css/jquery.fancybox.css" />
    <link rel="stylesheet" href="css/contact-form.css" />

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
    <div class=" page">
        <!--========================================================
                              HEADER
    =========================================================-->
        <header>

            <div id="stuck_container" class="stuck_container">
                <div class="container">

                    <div class="brand">
                        <h1 class="brand_name">
                            <a href="AdministrationPanel.aspx">Administración</a>
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
                                <a href="PreorderAdministration.aspx">Productos de Preorden</a>
                                
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
                        <a href="OrderView.aspx">Ordenes</a>
                    </li>
                            <li>
                                <a href="Homepage.aspx">Cerrar Sesión</a>
                            </li>
                            <li id="noti_Container">
                                <div id="noti_Counter"></div>   
                                <a href="AdminNotification.aspx" id="noti_Button">
                                    <img src="images/notification.png" style="background-color: #5e5e5e;"/></a>
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
                                     <div class="seeAll"><a onclick="" href="AdminNotification.aspx">Ver Todo</a></div>
                                </div>

                            </li>

                        </ul>
                    </nav>
                </div>
            </div>
        </header>

        <!-- Fin del header -->

        <main>
        <!-- Inicio del Fact-->
         <section class="parallax parallax1" data-parallax-speed="-0.4">
             <div class="container">
                <h2><em>Preguntas</em>Frecuentes</h2>
                
                <div class="row">
                    <div class="grid_6">
                        <h2>Administración</h2>
                        <p class="indents-3">Esta sección permite al adminintrador controlar el contenido del sitio que se mostrará, el menú y darse cuenta de lo que acontece en la aplicación, por ejemplo en el panel de notificaciones podrá ver las suscripciones, los pedidos efectuados y las compras realizadas.<br><br>En esta pequeña sección se le daran "tips" necesarios para que pueda ubicar cada uno de los elementos y sepa como administrar el contenido del sitio.</p>                        
                    </div>
                    <div class="grid_6">
                         <h2>Administradores</h2>
                        <p class="indents-3">En la pestaña de administradores podrá crear nuevos administradores llenando el formulario y ver los existentes. Podrá editar o eliminar un usuario, pero debe proveer sus credenciales de usuario administrador antes de hacerlo.<br><br>El punto anterior es necesario ya que de esa manera se mantiene la integridad de los datos almacenados en la aplicación y la seguridad de la misma.</p>
                    </div>
                </div>
                 </div>
                 </section>
            <section class="parallax parallax4" data-parallax-speed="-0.4">
             <div class="container">
                 <div class="row">
                    <div class="grid_6">
                        <h2>Menú</h2>
                        <p class="indents-3">En la sección de admininistración de menú puede crear un producto, ver todos los productos en el menú, editarlos o eliminarlos. Para crear un un producto nuevo debe llenar los espacios correspondientes y subir una imagen del producto que desea crear.<br><br>Es necesario escoger la foto antes de subirla, luego de escogerla y subirla se puede guardar el producto nuevo.</p>                        
                    </div>
                    <div class="grid_6">
                         <h2>Notificaciones</h2>
                        <p class="indents-3">En el panel de menú vera una campanita que le indicará la cantidad de notificaciones no leidas que haya. Al tocarla le desplegará el panel de notificaciones. Si desea verlas todas puede ir a la pestaña "notificaciones" de la barra de navegación o tocar "ver todas" en el panel de la campanita.<br><br>En la página de administración de notificaciones las vera todas y tiene la opción de eliminarlas, si ya no desea tenerlas en almacenamiento.</p>
                    </div>
                </div>
                 </div>
                 </section>
           
            <section class="parallax parallax2" data-parallax-speed="-0.4">
             <div class="container">
                <div class="row">
                    <div class="grid_6">
                        <h2>Facturación</h2>
                        <p class="indents-3">Es una sección de la administración diseñada para que se pueda llevar un control de las ventas realizadas por medio de la web. Se podrá ver el detalle de lo comprado y el monto total de una compra así como los datos de quien lo haya realizado.<br><br>Podrá también realizar un cierre de caja virtual que le permitira cerrar las facturas de un día completo. Asimismo la sección permite la creación de facturas virtuales.</p>                        
                    </div>
                    <div class="grid_6">
                         <h2>Suscriptores</h2>
                        <p class="indents-3">Esta es una sección diseñada para qeu el admininstrador escriba a tods los suscriptores de The Bakehouse Gluten Free al llenar el formulario con el asunto y mensaje que quiere transmitir a los suscriptores.<br><br>Es un metodo sencillo de hacerles llegar a todos aquellos que lo desean ofertas, novedades, nuevos productos, etc... que tenga The Bakehouse Gluten Free.</p>
                    </div>
                </div>
            </div>
         </section>

        <!-- Fin del Fact del Fact-->
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
                            $('#noti_Counter').fadeOut('slow');
                        }
                        else $('#noti_Button').css('background-color', '#a95858');        // CHANGE BACKGROUND COLOR OF THE BUTTON.
                    });

                    $('#noti_Counter').fadeOut('slow');                 // HIDE THE COUNTER.

                    return false;
                });

                // HIDE NOTIFICATIONS WHEN CLICKED ANYWHERE ON THE PAGE.
                $(document).click(function () {
                    $('#notifications').hide();
                    $('#noti_Counter').fadeOut('slow');
                    // CHECK IF NOTIFICATION COUNTER IS HIDDEN.
                    if ($('#noti_Counter').is(':hidden')) {
                        // CHANGE BACKGROUND COLOR OF THE BUTTON.
                        $('#noti_Button').css('background-color', '#a95858');
                    }
                });

                $('.seeAll').click(function(){
                    location.href= "AdminNotification.aspx";    
                });

                $('#notifications').click(function () {
                    $('#noti_Counter').fadeOut('slow');
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
        z-index: 100;
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
        color:#5e5e5e;
    }
    .seeAll a:hover {
        color:#5e5e5e;
        text-decoration:underline;
    }
    </style>
        
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <!--Contact Web masters -->
        <section class="well well__offset-2">
            <div class="container center">
                <h2>Contacto para ayuda especializada</h2>
                 <section class="well well__offset-3">
            <div class="container">
                <div class="row box-3">
                    <div class="grid_5">
                        <h2>Contacte al Web Master</h2>
                        <div id="contact-form" class='contact-form'>
                            <div class="contact-form-loader"></div>
                            <fieldset>
                                <label class="name">
                                    Nombre Completo:
                                    <input type="text" id="nameTxt" runat="server"
                                           data-constraints="@Required @JustLetters"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid name.</span>
                                </label>
                
                                <label class="email">
                                    E-mail:
                                    <input type="text" id="mailTxt" runat="server"
                                           data-constraints="@Required @Email"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid email.</span>
                                </label>
                
                                <label class="Subject">
                                    Asunto:
                                    <input type="text" id="subjectTxt" runat="server"
                                           data-constraints="@Required"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid phone.</span>
                                </label>
                                <label class="message">
                                    Escribe tu mensaje:
                                    <textarea name="message"  id="contactMessage" runat="server"
                                              data-constraints='@Required'></textarea>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*El mensaje es demasiado corto.</span>
                                </label>
                                <div class="btn-wr">
                                    <a class="" href="#" runat="server" onserverclick="reset_ServerClick" id="reset" data-type="reset">Cancelar</a>
                                    <a class="" runat="server" id="btnSendToMaster" onserverclick="btnSendToMaster_ServerClick">Enviar</a>
                                    <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                    <asp:Panel ID="Panel1" Style="display: none" CssClass="modalPopup" align="center" runat="server">
                                        <p runat="server" id="Message"></p>
                                        <hr />
                                        <a id="btnCancel">Aceptar</a>
                                    </asp:Panel>
                                </div>
                            </fieldset>
                        
                        </div>
                    </div>    
                    <div class="preffix_1 grid_6">
                        <h2>Contacto Especializado</h2>
                        <h3>Al Admininstrador. Debe tener en cuenta que este espacio está disponible para que contacte al proveedor de servicios de la aplicación en caso de que no se entienda como gestionar o administrar ciertas areas de la misma, o en caso de que los "tips" antes listados no le queden claros o no le den toda la información que usted considera necesaria para la gestión del panel de control de la administración."</h3>
                        <h3>Encontrará un lugar donde poner sus datos y el asunto al cual quiere referirse. Por favor en el mensage que va a enviar, sea conciso y abarque el problema de manera ordenada, esto con el fin de facilitar su comprensión por parte del web master que lo vaya a atender. Por último esperamos que su uso sea sencillo y en general que disfrute del manejo ágil que le permite la aplicación en sus diferentes áreas.</h3>
                    </div>
                    <asp:ModalPopupExtender ID="ModalPopupExtender" runat="server"
                        TargetControlID="processbtn"
                        CancelControlID="btnCancel"
                        PopupControlID="Panel1"
                        Drag="true"
                        BackgroundCssClass="modalBackground">
                     </asp:ModalPopupExtender>
                </div>
            </div>
        </section>
            </div>
        </section>
            </form>
            </main>

        <!--Contact Web masters end -->

        <!--========================================================
                              FOOTER
    =========================================================-->

        <footer>
            <div class="container">
                <div class="copyright">
                    © <span id="copyright-year"></span>|
                <a>The Bakehouse Gluten Free</a>
                </div>
            </div>
        </footer>
    </div>

    <script src="js/script.js"></script>
</body>
</html>
