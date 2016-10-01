using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using The_Bakehouse.Services;
using System.Web.UI.HtmlControls;
using The_Bakehouse.Domain;

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
            Administrator admin = new Administrator("mairon", "123");
            administratorBusiness.LoginService(admin);
        }
    }
}