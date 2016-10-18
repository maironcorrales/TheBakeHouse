using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using The_Bakehouse.Data;
using The_Bakehouse.Services;
using The_Bakehouse.Domain;

namespace The_Bakehouse
{
    public partial class Tester : System.Web.UI.Page
    {
        AdministratorBusiness data = new AdministratorBusiness();
        Administrator admin = null;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTester_Click(object sender, EventArgs e)
        {
            admin = new Administrator("dan", "123");
            data.AddAdmininstrator(admin);
        }
    }
}