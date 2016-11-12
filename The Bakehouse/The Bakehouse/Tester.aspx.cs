using System;
using The_Bakehouse.Services;
using The_Bakehouse.Domain;

namespace The_Bakehouse
{
    public partial class Tester : System.Web.UI.Page
    {

        OrderBusiness orderBusiness = new OrderBusiness();
        OrderProduct order = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnTester_Click(object sender, EventArgs e)
        {
            order = new OrderProduct("Dadad@ffff.com", "2228282", "Alajuela", 1, 3, "22/3/22");
            orderBusiness.CreateOrderBusiness(order);
        }
    }
}