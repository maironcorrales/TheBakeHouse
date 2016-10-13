<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageSuscriptor.aspx.cs" Inherits="The_Bakehouse.MessageSuscriptor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Escribir a Suscriptores</title>
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
                        <a href="AdministrationPanel.aspx">Administracíon</a>
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
                                <a href="MenuAdministration.aspx">Menú y Catalogo</a>
                                
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

        
        <!-- Inicio de contacto con suscriptores -->
        <main>
        <form id="form1" runat="server">
         <section class="parallax parallax1" data-parallax-speed="-0.4">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             <div class="container">
                <h2><em>Contacta</em>A los Suscripteres de The Bakehouse</h2>
                <section class="center">
            <div class="container">
                <div class="row box-2">
                    <div class="grid_12">
                        <div id="contact-form" class='contact-form'>
                            <fieldset>
                                <label>Asunto</label>
                                    <input style="width:50%;text-align:center;" type="text" id="ContactSubject" runat="server" value=""
                                           data-constraints="@Required @JustLetters"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid name.</span>
                
                             <label class="message">
                                    Escribe tu mensaje:
                                    <textarea style="width:50%;text-align:left; margin-left:auto; margin-right:auto" name="message"  id="contactSuscriberMessage" runat="server"
                                              data-constraints='@Required'></textarea>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*El mensaje es demasiado corto.</span>
                                </label>
                
                                <div class="btn-wr">
                                    <a runat="server" id="SendBtn" onserverclick="SendBtn_ServerClick">Enviar</a>
                                    <a runat="server" id="CancelMessage" onserverclick="CancelMessage_ServerClick">Cancelar</a>
                                    <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                    <asp:Panel ID="Panel1" Style="display: none" CssClass="modalPopup" align="center" runat="server">
                                        <p runat="server" id="message"></p>
                                        <hr />
                                        <a id="btnCancel">Aceptar</a>
                                    </asp:Panel>
                                </div>
                            </fieldset>
                        </div>
                    </div>     
                   
                </div>
            </div>
                    <asp:ModalPopupExtender ID="ModalPopupExtender" runat="server"
                                        TargetControlID="processbtn"
                                        CancelControlID="btnCancel"
                                        PopupControlID="Panel1"
                                        Drag="true"
                                        BackgroundCssClass="modalBackground">
                                    </asp:ModalPopupExtender>
                    
        </section>
                
            </div>
         </section>
                
        </form>
            
             <!--========================================================
                              FOOTER
    =========================================================-->

    
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
