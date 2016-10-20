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
    <link rel="stylesheet" href="css/notification.css" />

    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
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
    <script type="text/javascript">
        $(document).ready(function () {
            $("#notificationLink").click(function () {
                $("#notificationContainer").fadeToggle(300);
                $("#notification_count").fadeOut("slow");
                return false;
            });

            //Document Click
            $(document).click(function () {
                $("#notificationContainer").hide();
            });
            //Popup Click
            $("#notificationContainer").click(function () {
                return false
            });

        });
    </script>
    <style>
        body {
            background-color: #dedede;
            font-family: arial;
        }

        #nav {
            list-style: none;
            margin: 0px;
            padding: 0px;
        }

            #nav li {
                float: left;
                margin-right: 20px;
                font-size: 14px;
                font-weight: bold;
            }

                #nav li a {
                    color: #333333;
                    text-decoration: none;
                }

                    #nav li a:hover {
                        color: #006699;
                        text-decoration: none;
                    }

        #notification_li {
            position: relative;
        }

        #notificationContainer {
            background-color: #fff;
            border: 1px solid rgba(100, 100, 100, .4);
            -webkit-box-shadow: 0 3px 8px rgba(0, 0, 0, .25);
            overflow: visible;
            position: absolute;
            top: 30px;
            margin-left: -170px;
            width: 400px;
            z-index: -1;
            display: none;
        }

            #notificationContainer:before {
                content: '';
                display: block;
                position: absolute;
                width: 0;
                height: 0;
                color: transparent;
                border: 10px solid black;
                border-color: transparent transparent white;
                margin-top: -20px;
                margin-left: 188px;
            }

        #notificationTitle {
            z-index: 1000;
            font-weight: bold;
            padding: 8px;
            font-size: 13px;
            background-color: #ffffff;
            width: 384px;
            border-bottom: 1px solid #dddddd;
        }

        #notificationsBody {
            padding: 33px 0px 0px 0px !important;
            min-height: 300px;
        }

        #notificationFooter {
            background-color: #e9eaed;
            text-align: center;
            font-weight: bold;
            padding: 8px;
            font-size: 12px;
            border-top: 1px solid #dddddd;
        }

        #notification_count {
            padding: 3px 7px 3px 7px;
            background: #cc0000;
            color: #ffffff;
            font-weight: bold;
            margin-left: 77px;
            border-radius: 9px;
            position: absolute;
            margin-top: -11px;
            font-size: 11px;
        }
    </style>
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
                            <li id="notification_li">

                                <span id="notification_count">4</span>
                                <a href="AdminNotification.aspx" id="notificationLink">
                                    <img src="images/notification.png" /></a>
                                <div id="notificationContainer">
                                    <div id="notificationTitle">Notifications</div>
                                    <div id="notificationsBody" class="notifications">
                                    </div>
                                    <div id="notificationFooter"><a href="#">See All</a></div>
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
