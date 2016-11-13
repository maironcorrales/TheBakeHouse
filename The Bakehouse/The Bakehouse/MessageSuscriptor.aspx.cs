using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using The_Bakehouse.Domain;
using The_Bakehouse.Services;

namespace The_Bakehouse
{
    public partial class MessageSuscriptor : System.Web.UI.Page
    {
        NotificationBusiness nBusiness = new NotificationBusiness();
        private List<Notification> list_Notification;
        public int count_Notification;
        private int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Login.aspx");
            count_Notification = nBusiness.countUnreadNotification();
            list_Notification = nBusiness.NotificationsPopup();
            popup_Notifications.DataSource = list_Notification;
            popup_Notifications.DataBind();
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void CancelMessage_ServerClick(object sender, EventArgs e)
        {
            ClearSpaces();
        }

        protected void SendBtn_ServerClick(object sender, EventArgs e)
        {
            MailService mail = new MailService();
            message.InnerText = mail.SendMessageToAllSuscriptors(ContactSubject.Value, contactSuscriberMessage.Value);
            ModalPopupExtender.Show();
        }

        private void ClearSpaces()
        {
            ContactSubject.Value = "";
            contactSuscriberMessage.Value = "";
        }

        protected void popup_Notifications_ItemDataBound(object sender, System.Web.UI.WebControls.RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label notification = (Label)e.Item.FindControl("lbl_Notification_Popup");
                notification.Text = list_Notification.ElementAt(i).Notificate;
                i++;
            }
        }
    }
}