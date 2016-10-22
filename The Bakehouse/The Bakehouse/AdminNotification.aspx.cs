using System;
using AjaxControlToolkit;
using The_Bakehouse.Domain;
using The_Bakehouse.Services;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace The_Bakehouse
{
    public partial class AdminNotification : System.Web.UI.Page
    {
        NotificationBusiness NBusiness = new NotificationBusiness();
        private List<Notification> list_Notification;
        private int i = 0;
        private string username;
        private string password;
        private List<Notification> list_NotificationPopUp;
        public int count_Notification;
        private int j = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            username = Session["USER"].ToString();
            password = Session["PASS"].ToString();
            list_Notification = NBusiness.GetAllNotificationService();
            AllNotification.DataSource = list_Notification;
            AllNotification.DataBind();
            NBusiness.NotificationRead();
        }

        protected void AllNotification_ItemDataBound(object sender, System.Web.UI.WebControls.RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label id = (Label)e.Item.FindControl("Idlbl");
                id.Text = Convert.ToString(list_Notification.ElementAt(i).IdNotification);
                Label notification = (Label)e.Item.FindControl("Notificationlbl");
                notification.Text = list_Notification.ElementAt(i).Notificate;
                i++;
            }
        }

        protected void btnConfirmToDelete_ServerClick(object sender, EventArgs e)
        {
            ModalPopupExtender.Show();           
        }
    
        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void popup_Notifications_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label notification = (Label)e.Item.FindControl("lbl_Notification_Popup");
                notification.Text = list_Notification.ElementAt(j).Notificate;
                j++;
            }
        }

        protected void btnDeleteNotification_ServerClick(object sender, EventArgs e)
        {
            if (txtUsername.Text.Equals(username) && txtPassword.Text.Equals(password))
            {
                NBusiness.DeleteAllNotificationService();
                Response.Redirect("AdminNotification.aspx");
            }
            else
            {
                message.InnerText = "Credenciales Incorrectas.";
                ModalPopupExtender1.Show();
            }
        }
    }
}