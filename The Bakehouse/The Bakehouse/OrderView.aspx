<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderView.aspx.cs" Inherits="The_Bakehouse.OrderView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <title>Ordenes</title>
      <meta charset="utf-8"/>
      <meta name="format-detection" content="telephone=no"/>
      <link rel="icon" href="images/favicon.ico" type="image/x-icon"/>
      <link rel="stylesheet" href="css/grid.css"/>
      <link rel="stylesheet" href="css/style.css"/>
      <link rel="stylesheet" href="css/camera.css"/>
      <link rel="stylesheet" href="css/jquery.fancybox.css"/>
      <link rel="stylesheet" href="css/contact-form.css"/>
      <link rel="stylesheet" href="css/tableStyle.css"/>

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

                $('.seeAll').click(function () {
                    location.href = "AdminNotification.aspx";
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
        color:#a95858;
    }
    .seeAll a:hover {
        color:#a95858;
        text-decoration:underline;
    }
    </style>
            <section class="well">     
        <h2>Pedidos</h2>     
        <div class="container">
           <div id="content">
                <table cellspacing="0">
                    <tr>
                        <th style="width:5%">Id</th>
                        <th style="width:15%">Correo</th>
                        <th style="width:10%">Telefono</th>
                        <th style="width:35%">Direccion</th>
                        <th style="width:20%">Productos</th>
                        <th style="width:5%">Cantidad</th>
                        <th style="width:10%">Fecha entrega</th>
                    </tr>
                        <asp:Repeater id="AllOrders" runat="server" OnItemDataBound="AllOrders_ItemDataBound">
                        <ItemTemplate>
                            <tr runat="server">
                                <td><asp:Label runat="server" ID="Id_lbl"/></td>
                                <td><asp:Label runat="server" ID="Email_lbl"/></td>
                                <td><asp:Label runat="server" ID="Phone_lbl"/></td>
                                <td><asp:Label runat="server" ID="Address_lbl"/></td>
                                <td><asp:Label runat="server" ID="Product_lbl"/></td>
                                <td><asp:Label runat="server" ID="Quantity_lbl"/></td>
                                <th><asp:Label runat="server" ID="Date_lbl"/></th>
                            </tr>
                        </ItemTemplate>
                        </asp:Repeater>                   
                </table>
            </div>
            <div class="button-action">
                <div id="contact-form" class='contact-form'>
                 <fieldset>
                    <div class="btn-wr">  
                        <a class="" runat="server" id="btnConfirmToDelete">Eliminar todas las ordenes</a>  
                        <asp:Button runat="server" id="processbtn"  Style="visibility:hidden;" />    
                    </div> 
                 </fieldset>  
                 <!--- Aqui lo modal popup -->
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
                        <a runat="server" id="btnDeleteNotification1" >Eliminar</a>
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
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>  
         <!--========================================================
                              FOOTER
    =========================================================-->
            </form>
            </main>
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
