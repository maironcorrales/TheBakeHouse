using System;
using The_Bakehouse.Services;
using The_Bakehouse.Domain;

namespace The_Bakehouse
{
    public partial class Tester : System.Web.UI.Page
    {

        PreOrderProductBusiness pree = new PreOrderProductBusiness();


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnTester_Click(object sender, EventArgs e)
        {
            string r = pree.GetNameProductService(1);
            lbl_count.Text = r.ToString();
        }
    }
}