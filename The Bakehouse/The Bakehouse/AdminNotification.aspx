<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminNotification.aspx.cs" Inherits="The_Bakehouse.AdminNotification" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrar Notificaciones</title>
    <meta charset="utf-8" />
    <meta name="format-detection" content="telephone=no" />
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/grid.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/camera.css" />
    <link rel="stylesheet" href="css/tableStyle.css"/>
    <link rel="stylesheet" href="css/jquery.fancybox.css" />
    <link rel="stylesheet" href="css/contact-form.css" />

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
    <div class=" page">
        <!--========================================================
                              HEADER
    =========================================================-->
        <header>
            <div id="stuck_container" class="stuck_container">
                <div class="container">

                    <div class="brand">
                        <h1 class="brand_name">
                            <a href="AdministrationPanel.aspx">Notificaciones</a>
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
                                <a href="AdminNotification.aspx">
                                    <img src="images/notification.png" /></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>

        </header>

        <!-- Fin del header -->

      <main>
        <!-- Inicio del Fact--
         <section class="parallax parallax1" data-parallax-speed="-0.4">
         </section>
        <!-- Fin del Fact del Fact-->
      <form id="form1" runat="server">        
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>                
      <section class="well">     
        <h2>Tus Notificaciones</h2>     
        <div class="container">
           <div id="content">
                <table cellspacing="0">
                    <tr>
                        <th>Notificacion</th>
                        <th>Individuo</th>
                        <th>Estado</th>

                    </tr>
                        <asp:Repeater id="AllNotification" runat="server" OnItemDataBound="AllNotification_ItemDataBound" OnItemCommand="AllNotification_ItemCommand">
                        <ItemTemplate>
                            <tr runat="server">
                                <td><asp:Label runat="server" ID="Idlbl"/></td>
                                <td><asp:Label runat="server" ID="Notificationlbl"/></td>
                                <td><asp:Label runat="server" ID="SeenNotlbl"/></td>
                            </tr>
                        </ItemTemplate>
                        </asp:Repeater>                   
                </table>
            </div>
            <div class="button-action">
                <div id="contact-form" class='contact-form'>
                 <fieldset>
                    <div class="btn-wr">  
                        <a class="" runat="server" id="btnConfirmToDelete" onserverclick="btnConfirmToDelete_ServerClick">Eliminar todas las notificaciones</a>    
                        <a class="" runat="server" id="btnSendEmail">Boton</a>  
                        <asp:Button runat="server" id="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />    
                    </div> 
                 </fieldset>  
                 <asp:ModalPopupExtender id="ModalPopupExtender" runat="server"
                    TargetControlID="processbtn"
                    cancelcontrolid="btnCancel"
                    PopupControlID="Panel1"
                    drag="true"
                    backgroundcssclass="modalBackground1">                 
                  </asp:ModalPopupExtender>
                  <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
                    TargetControlID="processbtn"
                    cancelcontrolid="btnCancel2" 
	                PopupControlID="Panel2"
	                drag="true" 
	                backgroundcssclass="modalBackground">

                 </asp:ModalPopupExtender>
                    <asp:Panel ID="Panel1" style="display:none" CssClass="modalPopup" align="center" runat="server">
                        <p>Para eliminar todas las notificaciones debe ingresar sus credenciales de administrador</p>
                        <hr />
                        <asp:TextBox runat="server" ID="txtUsername" placeholder="Usuario"></asp:TextBox>
                        <br />
                        <asp:TextBox runat="server" ID="txtPassword" placeholder="Clave" TextMode="Password"></asp:TextBox>
                        <br />
                        <hr />
                        <asp:Button runat="server" ID="btnDeleteNotification" OnClick="btnDeleteNotification_Click" Text="Aceptar"/>
                        <input id="btnCancel" type="button" value="Cancelar"/>
                    </asp:Panel>
                    <asp:panel id="Panel2" style="display: none" CssClass="modalPopup2" align="center" runat="server">
                        <p runat="server" id="message"></p>
                        <hr />
                        <input id="btnCancel2" type="button" value="Aceptar" />
                    </asp:panel>
                </div>
            </div>            
         </div>                 
       </section>
        <style type="text/css">
            .modalBackground1
            {
                background-color: Black;
                filter: alpha(opacity=90);
                opacity: 0.8;
            }
            .modalPopup
            {
                background-color: #FFFFFF;
                border-width: 3px;
                border-style: solid;
                border-color: black;
                padding-top: 20px;
                padding-left: 10px;
                padding-right: 10px;
                width: 425px;
                height: 350px;
            }
        </style>
        <style type="text/css">
            .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=90);
        opacity: 0.8;
    }
    .modalPopup2
    {
        background-color: #FFFFFF;
        border-width: 3px;
        border-style: solid;
        border-color: black;
        padding-top: 20px;
        padding-left: 10px;
        padding-right: 10px;
        width: 350px;
        height: 120px;
    }
        </style>
      </form>
     </main>
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
