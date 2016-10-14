<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminNotification.aspx.cs" Inherits="The_Bakehouse.AdminNotification" %>

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
                                <a href="AdminNotification.aspx">
                                    <img src="images/notification.png" /><span class="badge">5</span></a>
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
                    <tr><th>Notificacion</th><th>Individuo</th><th>Estado</th></tr>
                    <tr><td>Se subscribio a TheBakeHouse</td><td>Mairon Corrales</td><td>Leido</td></tr>
                    <tr><td>Le interesa un producto</td><td>Daniel Corrales</td><td>Sin Leer</td></tr>
                </table>
            </div>
            <div class="button-action">
                <div id="contact-form" class='contact-form'>
                 <fieldset>
                    <div class="btn-wr">  
                        <a class="" href="#" runat="server" id="btnSinAccion" data-type="reset">Eliminar todas las notificaciones</a>                                    
                        <a class="" runat="server" id="btnSendEmail">Enviar</a>              
                    </div> 
                 </fieldset>  
                </div>
            </div>            
         </div>                 
       </section>
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
