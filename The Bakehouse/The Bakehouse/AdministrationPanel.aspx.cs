using System;
using The_Bakehouse.Services;
using The_Bakehouse.Domain;
using System.Linq;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace The_Bakehouse
{
    public partial class AdministrationPanel : System.Web.UI.Page
    {
        MailService service = new MailService();
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

        protected void reset_ServerClick(object sender, EventArgs e)
        {
            clearSpace();
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void btnSendToMaster_ServerClick(object sender, EventArgs e)
        {
            if (service.sendMailWebMaster(nameTxt.Value, mailTxt.Value, subjectTxt.Value, contactMessage.Value))
            {
                nameTxt.Value = "";
                mailTxt.Value = "";
                subjectTxt.Value = "";
                contactMessage.Value = "";
                Message.InnerText = "Su mensaje ha sido enviando! Pronto lo contactaran!";
                ModalPopupExtender.Show();
                clearSpace();
            }
            else
            {
                Console.WriteLine("EMAIL NO ENVIADO");
                Message.InnerText = "Hubo un problema! vuelva a intentarlo!";
                ModalPopupExtender.Show();
                clearSpace();
            }
        }

        public void clearSpace()
        {
            nameTxt.Value = "";
            mailTxt.Value = "";
            subjectTxt.Value = "";
            contactMessage.Value = "";
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