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
                                    <div style="height:310px;">
                                        <asp:Repeater  runat="server" ID="popup_Notifications" OnItemDataBound="popup_Notifications_ItemDataBound">
                                            <ItemTemplate>
                                                 <div id="noti_Item" style="height:40px; border-color:gray; margin-top:-2px;">
                                                    <a><asp:Label runat="server" ID="lbl_Notification_Popup"></asp:Label></a>                                                    
                                                </div>
                                                <hr />
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

      <main>
        <!-- Inicio del Fact--
         <section class="parallax parallax1" data-parallax-speed="-0.4">
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

                $('.seeAll').click(function () {
                    location.href = "AdminNotification.aspx";
                });

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
      <section class="well">     
        <h2>Tus Notificaciones</h2>     
        <div class="container">
           <div id="content">
                <table cellspacing="0">
                    <tr>
                        <th style="width:10%">Id</th>
                        <th style="width:90%">Notificacion</th>
                    </tr>
                        <asp:Repeater id="AllNotification" runat="server" OnItemDataBound="AllNotification_ItemDataBound">
                        <ItemTemplate>
                            <tr runat="server">
                                <td><asp:Label runat="server" ID="Idlbl"/></td>
                                <td><asp:Label runat="server" ID="Notificationlbl"/></td>
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
                        <div id="contact-form" class='contact-form' >
                        <p>Para eliminar todas las notificaciones debe ingresar sus credenciales de administrador</p>
                        <hr />
                        <asp:TextBox runat="server" ID="txtUsername" placeholder="Usuario" Style="text-align:center;"></asp:TextBox>
                        <br />
                        <asp:TextBox runat="server" ID="txtPassword" placeholder="Clave" TextMode="Password" Style="text-align:center;"></asp:TextBox>
                        <br />
                        <hr />
                            <div class="btn-wr">
                        <a runat="server" id="btnDeleteNotification1" onserverclick="btnDeleteNotification_ServerClick">Eliminar</a>
                        <a id="btnCancel">Cancelar</a>
                                </div>
                            </div>
                    </asp:Panel>

                    <asp:panel id="Panel2" style="display: none" CssClass="modalPopup2" align="center" runat="server">
                        <div id="contact-form" class='contact-form' >
                        <p runat="server" id="message"></p>
                        <hr />
                        <div class="btn-wr">
                        <a id="btnCancel2">Aceptar</a>
                            </div>
                        </div>
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
        height: 180px;
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
