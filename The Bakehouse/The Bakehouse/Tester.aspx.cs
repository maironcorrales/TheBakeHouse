using System;
using The_Bakehouse.Services;
using The_Bakehouse.Domain;

namespace The_Bakehouse
{
    public partial class Tester : System.Web.UI.Page
    {

        NotificationBusiness nBusiness = new NotificationBusiness();
        Notification noti = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnTester_Click(object sender, EventArgs e)
        {
            noti = new Notification("Prueba", false);
            nBusiness.AddNotificationService(noti);
        }
    }
}