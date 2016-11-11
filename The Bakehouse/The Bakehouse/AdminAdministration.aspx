<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAdministration.aspx.cs" Inherits="The_Bakehouse.AdminAdministration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administradores</title>
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
    <div class =" page">
         <!--========================================================
                              HEADER
    =========================================================-->
    <header>

        <div id="stuck_container" class="stuck_container">
            <div class="container">

                <div class="brand">
                    <h1 class="brand_name">
                        <a href="AdministrationPanel.aspx">Administradores</a>
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
                        <a href="Order.aspx">Ordenes</a>
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
                                    <div class="seeAll" ><a href="AdminNotification.aspx">Ver Todo</a></div>
                                </div>
                            </li>
                    </ul>
                </nav>
            </div>
        </div>

    </header>



        <!-- Fin del header -->
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

                    $('.seeAll').click(function () {
                        location.href = "AdminNotification.aspx";
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
            <main>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <section class="parallax parallax1" data-parallax-speed="-0.4">     
                    <h2>Crear Nuevo Administrador</h2>     
                    <div class="container">
                        <section class="center">
                            <div class="container">
                                <div class="row box-2">
                                    <div class="grid_12">
                                        <div id="contact-form" class='contact-form'>
                                            <fieldset>
                                                <label>Nombre de Usuario</label>
                                                    <input style="width:50%;text-align:center;" type="text" id="username" runat="server" value=""
                                                           data-constraints="@Required @JustLetters"/>                
                                                    <span class="empty-message">*This field is required.</span>
                                                    <span class="error-message">*This is not a valid name.</span>

                                                <label>Contraseña</label>
                                                    <input style="width:50%;text-align:center;" type="password" id="password" runat="server" value=""
                                                           data-constraints="@Required @JustLetters"/>                
                                                    <span class="empty-message">*This field is required.</span>
                                                    <span class="error-message">*This is not a valid name.</span>
                                                <label>Repita la Contraseña</label>
                                                    <input style="width:50%;text-align:center;" type="password" id="passwordRepeat" runat="server" value=""
                                                           data-constraints="@Required @JustLetters"/>                
                                                    <span class="empty-message">*This field is required.</span>
                                                    <span class="error-message">*This is not a valid name.</span>
                
                                                        <div class="btn-wr">
                                                            <a runat="server" id="CreateBtn" onserverclick="CreateBtn_ServerClick">Crear</a>
                                                            <a runat="server" id="Cancel" onserverclick="Cancel_ServerClick">Cancelar</a>
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
                <div class="container">
                    <hr />
                </div>
                
                <section class="well">
                    <h2>Todos los Administradores</h2>
                    <div class="container">
                       <div id="content">
                            <table cellspacing="0">
                                <tr><th>Id de administrador</th><th>Nommbre de usuario</th><th>Editar</th><th>Eliminar</th></tr>
                                <asp:Repeater runat="server" ID="administratorList" OnItemDataBound="administratorList_ItemDataBound" OnItemCommand="administratorList_ItemCommand">
                                    <ItemTemplate>
                                        <tr runat="server">
                                            <td><asp:Label runat="server" ID="lbl_Id_admin"/></td>
                                            <td><asp:Label runat="server" ID="lbl_User_admin"/></td>
                                            <td>
                                                <asp:LinkButton visible="true" runat="server" ID="btn_Edit" Text="Editar" CommandName="editItem" />
                                                <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click1" Style="visibility:hidden;" />
                                            </td>
                                            <td>
                                                <asp:LinkButton visible="true" runat="server" ID="btn_Delete" Text="Eliminar" CommandName="deleteItem" />
                                                <asp:Button runat="server" ID="processbtn2" OnClick="processbtn2_Click" Style="visibility:hidden;" />
                                            </td>
                                        </tr>
                                        <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server"
                                            TargetControlID="processbtn"
                                            CancelControlID="btnCancelEdit"
                                            PopupControlID="Panel3"
                                            drag="true"
                                            BackgroundCssClass="modalBackground3">                                         
                                        </asp:ModalPopupExtender>

                                        <asp:ModalPopupExtender id="ModalPopupExtender2" runat="server" 
                                            TargetControlID="processbtn2"
                                            cancelcontrolid="btnCancelDelete" 
	                                        PopupControlID="Panel2"
	                                        drag="true" 
	                                        backgroundcssclass="modalBackground1">
                                        </asp:ModalPopupExtender>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </table>

                           <asp:panel id="Panel2" style="display: none" CssClass="modalPopup1" align="center" runat="server">
                               <div id="contact-form" class='contact-form' >
                               <p>ID de Administrador: <asp:Label runat="server" ID="admin_Info"></asp:Label></p>
                               <p>Para eliminar un admininstrador existente por favor indique sus credenciales de administrador en los espacios que se le proveen</p>
                               <hr />
                               <asp:TextBox runat="server" ID="usernameToConfirm" placeholder="nombre de usuario"></asp:TextBox>
                               <br />
                               <asp:TextBox runat="server" ID ="passToConfirm" placeholder ="contraseña" TextMode="Password"></asp:TextBox> 
                               <hr />
                               <div class="btn-wr">
                               <a runat="server" id="deleteAdminConfirm" onserverclick="deleteAdminConfirm_ServerClick">Eliminar</a>
                               <a id="btnCancelDelete">Cancelar</a>
                              </div>
                                </div>
                            </asp:panel>

                           <asp:Panel ID="Panel3" style="display: none" CssClass="modalPopup3" align="center" runat="server">
                               <div id="contact-form" class='contact-form' >
                               <a>Id de Admin: </a><asp:Label runat="server" ID="Admin_ID"></asp:Label> 
                               <br />
                                   <fieldset>
                                <asp:Label runat="server" ID="userLabel"></asp:Label>
                                   <input runat="server" id ="nameToEdit" style="width:75%"/>
                               <br />
                               <hr/>
                                <asp:Label runat="server" ID="currentPassLabel"></asp:Label>
                                    <input runat="server" id="currentPassToEdit" type="password" style="width:75%"/>
                               <br/>
                               <asp:Label runat="server" ID="newPassLabel"></asp:Label>
                               <input runat="server" id="newPassEdited" type="password" style="width:75%"/>
                               <br />
                               <asp:Label runat="server" ID="repeatPassword"></asp:Label>
                               <input runat="server" id="PasswordEditRepeat" type="password" style="width:75%"/>
                               <br />
                            </fieldset>
                                   <div class="btn-wr">
                               <a runat="server" id="btnUpdateAdmin1" onserverclick="btnUpdateAdmin_ServerClick">Editar</a>
                               <a id="btnCancelEdit">Cancelar</a>   
                                       <div />  
                               </div>
                           </asp:Panel>

                           
                        </div>
                    </div>
                </section>
            </main>
        </form>
<style type="text/css">
    .modalBackground
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
        padding-top: 10px;
        padding-left: 10px;
        width: 300px;
        height: 160px;
    }
</style>
<style type="text/css">
    .modalBackground1
    {
        background-color: Black;
        filter: alpha(opacity=90);
        opacity: 0.8;
    }
    .modalPopup1
    {
        background-color: #FFFFFF;
        border-width: 3px;
        border-style: solid;
        border-color: black;
        padding-top: 10px;
        padding-left: 10px;
        padding-right: 10px;
        width: 400px;
        height: 400px;
    }
</style>
<style type="text/css">
    .modalBackground3{
        background-color: Black;
        filter: alpha(opacity=90);
        opacity: 0.8;
    }
    .modalPopup3{
        background-color: #FFFFFF;
        border-width: 3px;
        border-style: solid;
        border-color: black;
        padding-top: 10px;
        padding-left: 10px;
        width: 50%;
        height: 70%;
    }
</style>
    <!--========================================================
                              FOOTER
    =========================================================-->

    <footer>
        <div class="container">
            <div class="copyright">© <span id="copyright-year"></span> |
                <a>The Bakehouse Gluten Free</a>
            </div>
        </div>
    </footer>
    </div>
    
     <script src="js/script.js"></script>
</body>
</html>
