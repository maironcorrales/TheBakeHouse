using System;
using The_Bakehouse.Services;
using The_Bakehouse.Domain;

namespace The_Bakehouse
{
    public partial class Tester : System.Web.UI.Page
    {
        NotificationBusiness nBusiness = new NotificationBusiness();
        Notification not1;
        Notification not2;
        Notification not3;
        Notification not4;
        Notification not5;
        Notification not6;
        Notification not7;

        AdministratorBusiness admbus = new AdministratorBusiness();
        Administrator admin = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnTester_Click(object sender, EventArgs e)
        {
            not1 = new Notification("hola", false);
            not2 = new Notification("holwea", false);
            not3 = new Notification("hodfla", false);
            not4 = new Notification("hdfdfola", false);
            not5 = new Notification("hofdfla", false);
            not6 = new Notification("hofdfla", false);
            not7 = new Notification("fdffg", false);
            nBusiness.AddNotificationService(not1);
            nBusiness.AddNotificationService(not2);
            nBusiness.AddNotificationService(not3);
            nBusiness.AddNotificationService(not4);
            nBusiness.AddNotificationService(not5);
            nBusiness.AddNotificationService(not6);
            nBusiness.AddNotificationService(not7);

        }
    }
}