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

        <div class="camera_container">
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
                <h1 class="brand_name">
                    <a href="Homepage.aspx">The Bakehouse</a>
                </h1>
            </div>
        </div>
        
        <div class="toggle-menu-container">
            <nav class="nav">
                <div class="nav_title"></div>
                <a class="sf-menu-toggle fa fa-bars" href="#"></a>
                <ul class="sf-menu">
                    <li class="active">
                        <a href="./">Home</a>
                    </li>
                    <li>
                        <a href="index-1.html">About</a>
                        <ul>
                            <li>
                                <a href="#">Quisque nulla</a>
                            </li>
                            <li>
                                <a href="#">Vestibulum libero</a>
                                <ul>
                                    <li>
                                        <a href="#">Lorem</a>
                                    </li>
                                    <li>
                                        <a href="#">Dolor</a>
                                    </li>
                                    <li>
                                        <a href="#">Sit amet</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Vivamus eget nibh</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="index-2.html">What We Do</a>
                    </li>
                    <li>
                        <a href="index-3.html">Menu</a>
                    </li>
                    <li>
                        <a href="index-4.html">Contacts</a>
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
        <section class="well">
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

        <!-- Contact start-->
        <form runat="server" id="form1">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <section class="parallax parallax1" data-parallax-speed="-0.4">
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
                                    <input type="text" name="name" placeholder="" value=""
                                           data-constraints="@Required @JustLetters"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid name.</span>
                                </label>
                
                                <label class="email">
                                    E-mail:
                                    <input type="text" name="email" placeholder="" value=""
                                           data-constraints="@Required @Email"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid email.</span>
                                </label>
                
                                <label class="Subject">
                                    Sujeto:
                                    <input type="text" name="phone" placeholder="" value=""
                                           data-constraints="@Required"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid phone.</span>
                                </label>
                
                                <label class="message">
                                    Escribe tu mensaje o pedido:
                                    <textarea name="message" placeholder=""
                                              data-constraints='@Required @Length(min=20,max=999999)'></textarea>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*The message is too short.</span>
                                </label>
                
                                <div class="btn-wr">
                                    <a class="" href="#" data-type="reset">Borrar</a>
                                    <a class="" href="#" data-type="submit">Enviar</a>
                                </div>
                            </fieldset>
                            <div class="modal fade response-message">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-hidden="true">
                                                &times;
                                            </button>
                                            <h4 class="modal-title">Modal title</h4>
                                        </div>
                                        <div class="modal-body">
                                            Su mensaje ha sido enviado. Estaremos pronto en contacto.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <div class="preffix_1 grid_6">
                        <h2>Información de Contacto</h2>
                        <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet sit amet est vel</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.Lamus at magna non nunc tristique rhoncuseri tym.<br><br>Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.Lamus at magna non nunc tristique rhoncuseri tym. Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.Lamus at magna non nunc tristique.</p>
                        <address class="address-2">
                            <div class="address_container"><p>Tres Ríos, La Unión, Cartago. Residencial Sierras de la Unión,  casa H-13.</p></div>
                            <dl>
                                <dt>Teléfono:</dt> <dd>+506 87304841</dd> <br/>
                                <dt>Fax:</dt> <dd>+1 800 899 9898</dd> <br/>
                                <dt>E-mail:</dt> <br /> <dd><a href="https://www.google.com/gmail/">thebakehoueseglutenfree@gmail.com </a></dd>
                            </dl>                        
                        </address>
                    </div>
                </div>
            </div>
        </section>
                <div class ="container">
                    <h2><em>Nuestra Ubicación </em></h2>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m8!1m3!1d1965.1349591566457!2d-83.97631606134442!3d9.911463071932891!3m2!1i1024!2i768!4f13.1!4m6!3e0!4m0!4m3!3m2!1d9.9119768!2d-83.9745382!5e0!3m2!1ses!2scr!4v1474671669086" style="height:400px; width:100%" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                
            </div>
        </section>
        <!-- Contact End -->


        <!--About Us Start -->
        <section class="well well__offset-1 bg-1">
            <div class="container">
                <h2><em>Conoce </em>Nuestros Cocineros</h2>
                <div class="row row__offset-1">
                    <div class="grid_4">
                        <figure>
                            <div class="img lazy-img" style="padding-bottom: 101.0810810810811%;"><img data-src="images/page-1_img12.jpg" alt=""/></div>
                            <figcaption>Kevin Grey</figcaption>
                        </figure>
                        <h3>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl </h3>
                        <p>Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                    <div class="grid_4">
                        <figure>
                            <div class="img lazy-img" style="padding-bottom: 101.0810810810811%;"><img data-src="images/page-1_img13.jpg" alt=""/></div>
                            <figcaption>Linda Klein</figcaption>
                        </figure>
                        <h3>Oeteger convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl </h3>
                        <p>Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                    <div class="grid_4">
                        <figure>
                            <div class="img lazy-img" style="padding-bottom: 101.0810810810811%;"><img data-src="images/page-1_img14.jpg" alt=""/></div>
                            <figcaption>Ann Shelton</figcaption>
                        </figure>
                        <h3>Koteger convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl </h3>
                        <p>Vestibulum volutpat turpis ut massa commodo, quis aliquam massa facilisis.Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl auctor vel veliterol. sed,pharetra venenatis nulla.</p>
                    </div>
                </div>
                <div class="decoration"> </div>
            </div>
        </section>
        <!--About Us End -->
       
        <!--Suscribe to Bakehouse start-->
        <section class="well well__offset-2">
            <div class="container center">
                <h2><em>Suscribete a The Bakehouse </em>Para que te des Cuneta de Todas Las Novedades</h2>
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
                                    <input type="text" id="subscriberNameTxt" runat="server" data-constraints="@Required"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid name.</span>
                                </label>
                
                                <label class="email">
                                    E-mail:
                                    <input type="text" data-constraints="@Required @Email" id="subscriberMailTxt" runat="server"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid email.</span>
                                </label>
                
                                <label class="Subject">
                                    Telefono (opcional):
                                    <input type="text" id="subscriberPhoneTxt" runat="server"
                                           data-constraints="@Required"/>                
                                    <span class="empty-message">*This field is required.</span>
                                    <span class="error-message">*This is not a valid phone.</span>
                                </label>
                                <div class="btn-wr">
                                    <a class="" href="#" data-type="reset">Cancelar</a>
                                    <a class="" href="#" id="suscribeBtn" onserverclick="suscribeBtn_ServerClick" runat="server">Suscribirse</a>
                                    <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                    <asp:Panel ID="Panel1" Style="display: none" CssClass="modalPopup" align="center" runat="server">
                                    <p runat="server" id="subscriberMessage"></p>
                                    <hr />
                                    <a id="btnCancel">Aceptar</a>
                                </asp:Panel>
                                </div>
                            </fieldset>
                            <asp:ModalPopupExtender ID="ModalPopupExtender" runat="server"
                                        TargetControlID="processbtn"
                                        CancelControlID="btnCancel"
                                        PopupControlID="Panel1"
                                        Drag="true"
                                        BackgroundCssClass="modalBackground">
                                    </asp:ModalPopupExtender>
                        </div>
                    </div>    
                    <div class="preffix_1 grid_6">
                        <h2>Información de Suscripción</h2>
                        <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet sit amet est vel</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.Lamus at magna non nunc tristique rhoncuseri tym.<br><br>Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.Lamus at magna non nunc tristique rhoncuseri tym. Etiam dui eros, laoreet sit amet est vel, commodo venenatis eros.Lamus at magna non nunc tristique.</p>
                    </div>
                </div>
            </div>
        </section>
            </div>
        </section>
        <!--Suscribe to Bakehouse end-->
             </form>
    </main>

    <!--========================================================
                              FOOTER
    =========================================================-->
    <footer>
        <div class="container">
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
