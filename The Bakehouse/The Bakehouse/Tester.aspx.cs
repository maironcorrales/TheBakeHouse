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
        NotificationBusiness nBusiness = new NotificationBusiness();
        Notification notification = null;
        Notification notification1 = null;
        Notification notification2 = null;
        Notification notification3 = null;
        Notification notification4 = null;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            int unreadCount = nBusiness.countUnreadNotification();
            lbl_count.Text = unreadCount.ToString();
            //lbl_count.Text = "Hola";
        }

        protected void btnTester_Click(object sender, EventArgs e)
        {
            notification = new Notification("Test 1", false);
            notification1 = new Notification("Test 2", false);
            notification2 = new Notification("Test 3", false);
            notification3 = new Notification("Test 4", true);
            notification4 = new Notification("Test 5", false);
            nBusiness.AddNotificationService(notification);
            nBusiness.AddNotificationService(notification1);
            nBusiness.AddNotificationService(notification2);
            nBusiness.AddNotificationService(notification3);
            nBusiness.AddNotificationService(notification4);

            
            
        }
    }
}