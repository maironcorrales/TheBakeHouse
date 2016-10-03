﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using The_Bakehouse.Services;
using System.Web.UI.HtmlControls;
using The_Bakehouse.Domain;
using AjaxControlToolkit;

namespace The_Bakehouse
{
    public partial class Login : System.Web.UI.Page
    {
        AdministratorBusiness administratorBusiness = new AdministratorBusiness();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_ServerClick(object sender, EventArgs e)
        {
            string user = usernameTxt.Value;
            string pass = passwordTxt.Value;
            Administrator admin = new Administrator(user, pass);
            if (administratorBusiness.LoginService(admin))
            {
                Session["USER"] = user;
                Response.Redirect("AdministrationPanel.apsx");
            }
            else 
            {
                messageLogin.InnerText = "El usuario o la contraseña son incorrectos.";
                ModalPopupExtender.Show();
            }
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }
    }
}