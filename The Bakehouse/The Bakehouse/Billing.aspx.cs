﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using The_Bakehouse.Domain;
using The_Bakehouse.Services;

namespace The_Bakehouse
{
    public partial class Billing : System.Web.UI.Page
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