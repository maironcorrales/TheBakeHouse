<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="The_Bakehouse.Homepage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Bakehouse</title>
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
    <div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>

        <div class="camera_container" id="Principal">
            <div id="camera" class="camera_wrap">
                <div data-thumb="images/slide01_thumb.jpg" data-src="images/slide01.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="images/slide02_thumb.jpg" data-src="images/slide02.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="images/slide03_thumb.jpg" data-src="images/slide03.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
            </div>

            <div class="brand wow fadeIn">
                <h3 class="brand_name">
                    <a href="Homepage.aspx">The Bakehouse</a>
                </h3>
                </br>
                <img src="images/BakeHouseLogo.jpg" style="width:15%;height:15%;" />
            </div>
        </div>
        
        <div class="toggle-menu-container">
            <nav class="nav">
                <div class="nav_title"></div>
                <a class="sf-menu-toggle fa fa-bars" href="#"></a>
                <ul class="sf-menu">
                    <li>
                        <a href="Homepage.aspx">Principal</a>
                        <ul>
                            <li>
                                <a href="homepage.aspx#Principal">Inicio</a>
                            </li>
                             <li>
                                <a href="homepage.aspx#Gallery">Conoce Nuestra Cocina</a>
                                
                            </li>
                             <li>
                                <a href="Homepage.aspx#ContactUs">Contáctenos</a>
                             </li>
                            <li>
                                <a href="Homepage.aspx#Ubication">Nuestra Ubicacíon</a>
                             </li>
                             <li>
                                 <a href="Homepage.aspx#SuscribeToTheBakehouse">Suscribete</a>
                            </li>
                            <li>
                                <a href="Homepage.aspx#SocialMedia">Redes Sociales</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="Menu.aspx">Menú</a>
                    </li>
                    <li>
                        <a href="PreOrderMenu.aspx">Bajo Pedido</a>
                    </li>
                    <li>
                        <a href="Login.aspx">Administración</a>
                    </li>
                </ul>
            </nav>            
        </div>

    </header>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <main>
        <!-- Begin Gallery -->
        <section class="well" id="Gallery">
            <div class="container">
                <h2><em>Conozca</em>Nuestra Cocina</h2>
                <div class="decoration"></div>
            </div>            
            <div class="gallery">
                <div class="gallery_col-1">
                    <a data-fancybox-group="gallery" href="images/page-1_img03_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.96551724137931%;">
                        <img data-src="images/page-1_img03.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img04_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 74.13793103448276%;">
                        <img data-src="images/page-1_img04.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img05_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 94.6551724137931%;">
                        <img data-src="images/page-1_img05.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-2">
                    <a data-fancybox-group="gallery" href="images/page-1_img06_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 52.48322147651007%;">
                        <img data-src="images/page-1_img06.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img07_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 55.97315436241611%;">
                        <img data-src="images/page-1_img07.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img08_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 96.10738255033557%;">
                        <img data-src="images/page-1_img08.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-3">
                    <a data-fancybox-group="gallery" href="images/page-1_img09_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img data-src="images/page-1_img09.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img10_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 72.23168654173765%;">
                        <img data-src="images/page-1_img10.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="images/page-1_img11_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img data-src="images/page-1_img11.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Lorem Blandit</em></p>
                                <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </section>
        <!-- static gallery end -->
        <form runat="server" id="form1">
        <!-- Contact start Email-->
        <section class="parallax parallax1" data-parallax-speed="-0.4" id="ContactUs">
            <div class="container">
                <h2><em>Contáctenos </em> O Haz Tus Pedidos</h2>
                <section class="well well__offset-3">
            <div class="container">
                <div class="row box-3">
                    <div class="grid_5">
                        <h2>Escribenos</h2>
                        <div id="contact-form" class='contact-form'>
                            <div class="contact-form-loader"></div>
                            <fieldset>
                                <label class="name">
                                    Nombre Completo:
                                    <input type="text" id="contactName" runat="server" name="name" 
                                           data-constraints="@Required @JustLetters"/>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*Este no es un nombre válido.</span>
                                </label>
                
                                <label class="email">
                                    E-mail:
                                    <input type="text" id="contactMail" runat="server" name="email"
                                           data-constraints="@Required @Email"/>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*Este no es un correo electrónico válido.</span>
                                </label>
                
                                <label class="Subject">
                                    Asunto:
                                    <input type="text" id="contactSubject" runat="server" name="phone"
                                           data-constraints="@Required"/>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*Este no es un teléfono válido.</span>
                                </label>
                
                                <label class="message">
                                    Escribe tu mensaje o pedido:
                                    <textarea name="message"  id="contactMessage" runat="server"
                                              data-constraints='@Required'></textarea>                
                                    <span class="empty-message">*Este campo es requerido.</span>
                                    <span class="error-message">*El mensaje es demasiado corto.</span>
                                </label>
                
                                <div class="btn-wr">
                                    <a class="" href="#" runat="server" onserverclick="resetEmail_ServerClick" id="resetEmail" data-type="reset">Borrar</a>                                    
                                    <a class="" runat="server" id="btnSendEmail" onserverclick="btnSendEmail_ServerClick">Enviar</a>
                                    <asp:Button runat="server" id="processbtn2" OnClick="processbtn2_Click" Style="visibility:hidden;"/>
                                    <asp:Panel ID="Panel2" Style="display:none" CssClass="modalPopup" align="center" runat="server">
                                        <p runat="server" id="sendEmailMessage"></p>
                                        <hr />
                                        <a id="btnAccept">Aceptar</a>
                                    </asp:Panel>
                                </div>
                            </fieldset>
                        </div>
                    </div>    
                    <div class="preffix_1 grid_6">
                        <h2>Información de Contacto</h2>
                        <h3>Nos dedicamos al 100% a la pastelería,envasados sin gluten para cualquier evento. Para garantizar la frescura del producto trabajamos contra pedido, gracias.</h3>
                        <p>Utilice el espacio de la izquierda para jacer sus pedidos de cualquier producto. O puede utilizarlo para contactarnos y hacernos saber su opinión acerca de nuestros productos.</p>
                        <address class="address-2">
                            <div class="address_container"><p>Tres Ríos, La Unión, Cartago. Residencial Sierras de la Unión,  casa H-13.</p></div>
                            <dl>
                                <dt>Teléfono:</dt> <dd>+506 87304841</dd> <br/>
                                <dt>Teléfono:</dt> <dd>+506 22780408</dd> <br/>
                                <dt>E-mail:</dt> <br /> <dd><a href="https://www.google.com/gmail/">thebakehoueseglutenfree@gmail.com </a></dd>
                            </dl>                        
                        </address>
                    </div>
                    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
                        TargetControlID="processbtn2"
                        CancelControlID="btnAccept"
                        PopupControlID="Panel2"
                        Drag="true"
                        BackgroundCssClass="modalBackground">
                    </asp:ModalPopupExtender>
                </div>
            </div>
        </section>
                <div class ="container" id="Ubication">
                    <h2><em>Nuestra Ubicación </em></h2>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m8!1m3!1d1965.1349591566457!2d-83.97631606134442!3d9.911463071932891!3m2!1i1024!2i768!4f13.1!4m6!3e0!4m0!4m3!3m2!1d9.9119768!2d-83.9745382!5e0!3m2!1ses!2scr!4v1474671669086" style="height:400px; width:100%" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                
            </div>
        </section>
        <!-- Contact End -->

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
       

        <!--Suscribe to Bakehouse start-->
        <section class="well well__offset-2" id="SuscribeToTheBakehouse">
            <div class="container center">
                <h2><em>Suscribete a The Bakehouse </em>Para que te des Cuenta de Todas Las Novedades</h2>
                 <section class="well well__offset-3">
            <div class="container">
                <div class="row box-3">
                    <div class="grid_5">
                        <h2>Suscribete</h2>
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
                                    Telefono (opcional):
                                    <input type="text" id="phoneTxt" runat="server"
                                           data-constraints="@Required"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid phone.</span>
                                </label>
                                <div class="btn-wr">
                                    <a class="" href="#" runat="server" onserverclick="reset_ServerClick" id="reset" data-type="reset">Cancelar</a>
                                    <a class="" runat="server" id="SuscribeBtn" onserverclick="SuscribeBtn_ServerClick">Suscribirse</a>
                                    <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                    <asp:Panel ID="Panel1" Style="display: none" CssClass="modalPopup" align="center" runat="server">
                                    <p runat="server" id="suscribeMessage"></p>
                                    <hr />
                                    <a id="btnCancel">Aceptar</a>
                                </asp:Panel>
                                </div>
                            </fieldset>
                        
                        </div>
                    </div>    
                    <div class="preffix_1 grid_6">
                        <h2>Información de Suscripción</h2>
                        <h3>Al suscribirte a The Bakehouse Gluten Free, recibiras todas las noticias relevantes acerca de eventos especiales, ofertas y mucho más. Te esperamos!</h3>
                        <p>Puede utilizar el espacio provisto a la izquierda para proporcionarnos sus datos. Lo contactaremos por medio de su correo, pero esto no quiere decir que le vayamos a hacer spam.<br><br>Tenga en cuenta que usted está aceptando que le contactemos, ya que desea darse cuenta de nuestras actividades y ofertas relevantes. Esperamos que disfrute de nuestros deliciosos y frescos productos.</p>                   </div>
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
        <!--Suscribe to Bakehouse end-->
    </main>

    <!--========================================================
                              FOOTER
    =========================================================-->
    <footer>
        <div class="container" id="SocialMedia">
            <ul class="socials">
                <li><a href="https://www.facebook.com/TheBakehouseGlutenfree/?fref=ts" class="fa fa-facebook"></a></li>
                <li><a href="#" class="fa fa-tumblr"></a></li>
                <li><a href="#" class="fa fa-google-plus"></a></li>
            </ul>
            <div class="copyright">© <span id="copyright-year"></span> |
                <a href="#">Privacy Policy</a>
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
                height: 160px;
            }
        </style>
</body>
</html>
