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
                            <li id="noti_Container">
                                <div id="noti_Counter"></div>   <!--SHOW NOTIFICATIONS COUNT.-->
                                <a href="AdminNotification.aspx" id="noti_Button">
                                    <img src="images/notification.png" /></a>
                                <div id="notifications">
                                    <h3>Notificationes</h3>
                                    <div style="height:300px;"></div>
                                    <div class="seeAll"><a href="AdminNotification.aspx">Ver Todo</a></div>
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

         </section>

        <!-- Fin del Fact del Fact-->
        <form id="form1" runat="server">
        <script type="text/javascript">
            $(document).ready(function () {

                // ANIMATEDLY DISPLAY THE NOTIFICATION COUNTER.
                $('#noti_Counter')
                    .css({ opacity: 0 })
                    .text('7')              // ADD DYNAMIC VALUE (YOU CAN EXTRACT DATA FROM DATABASE OR XML).
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
        content: '';
        display:block;
        width:0;
        height:0;
        color:transparent;
        border:10px solid #CCC;
        border-color:transparent transparent #FFF;
        margin-top:-20px;
        margin-left:375px;
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
                        <h3>Al Admininstrador. Debe tener en cuenta que este espacio está disponible para que contacte al proovedor de servicios de la aplicación en caso de que no se entienda como gestionar o administrar ciertas areas de la misma, o en caso de que los "tips" antes listados no le queden claros o no le den toda la información que usted considera necesaria para la gestión del panel de control de la administración."</h3>
                        <h3>Encontrará un lugar donde poner sus datos y el asunto al cual quiere referirse. Por favor en el mensage que va a enviar, sea conciso y abarque el problema de manera ordenada, esto con el fin de facilitar su comprension por parte del web master que lo vaya a atender. Por último esperamos que su uso sea sencillo y en general que disfrute del manejo ágil que le permitee la aplicación en sus diferentes áreas.</h3>
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
