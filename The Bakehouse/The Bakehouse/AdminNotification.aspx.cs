using System;
using AjaxControlToolkit;
using The_Bakehouse.Domain;
using The_Bakehouse.Services;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            username = Session["USER"].ToString();
            password = Session["PASS"].ToString();
            list_Notification = NBusiness.GetUnreadNotificationService();
            AllNotification.DataSource = list_Notification;
            AllNotification.DataBind();
        }

        protected void AllNotification_ItemDataBound(object sender, System.Web.UI.WebControls.RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label id = (Label)e.Item.FindControl("Idlbl");
                id.Text = Convert.ToString(list_Notification.ElementAt(i).IdNotification);
                Label notification = (Label)e.Item.FindControl("Notificationlbl");
                notification.Text = list_Notification.ElementAt(i).Notificate;
                Label seen = (Label)e.Item.FindControl("SeenNotlbl");
                seen.Text = Convert.ToString(list_Notification.ElementAt(i).Seen);
                i++;
            }
        }

        protected void AllNotification_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {

        }

        public void paintRow()
        {
            Notification notification = new Notification();
            bool unread = NBusiness.GetAllNotificationService().ElementAt(2).Seen;
            if (unread == false)
            {
               
            }
        }
        
        protected void btnDeleteNotification_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text.Equals(username) && txtPassword.Text.Equals(password))
            {
                //Aqui se llama el metodo que elimina todas las notificaciones
                NBusiness.DeleteAllNotificationService();
                //Se recarga la pagina
                Response.Redirect("AdminNotification.aspx");
            }
            else
            {
                message.InnerText = "Credenciales Incorrectas.";
                ModalPopupExtender1.Show();
            }
            
        }

        protected void btnConfirmToDelete_ServerClick(object sender, EventArgs e)
        {
            ModalPopupExtender.Show();           
        }
    
        protected void processbtn_Click(object sender, EventArgs e)
        {

        }
    }
}