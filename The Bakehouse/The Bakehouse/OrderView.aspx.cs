using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using The_Bakehouse.Services;
using The_Bakehouse.Domain;
using System.Collections.Generic;


namespace The_Bakehouse
{
    public partial class OrderView : System.Web.UI.Page
    {
        NotificationBusiness nBusiness = new NotificationBusiness();
        OrderBusiness orderBusiness = new OrderBusiness();
        PreOrderProductBusiness preOrderBusiness = new PreOrderProductBusiness();
        private List<Notification> list_Notification;
        private List<OrderProduct> list_OrderProduct;
        public int count_Notification;
        private int i = 0;
        private int j = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Login.aspx");
            count_Notification = nBusiness.countUnreadNotification();
            list_Notification = nBusiness.GetUnreadNotificationService();
            popup_Notifications.DataSource = list_Notification;
            popup_Notifications.DataBind();
            list_OrderProduct = orderBusiness.GetAllOrders();
            AllOrders.DataSource = list_OrderProduct;
            AllOrders.DataBind();
        }

        protected void popup_Notifications_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label notification = (Label)e.Item.FindControl("lbl_Notification_Popup");
                notification.Text = list_Notification.ElementAt(i).Notificate;
                i++;
            }
        }


        protected void AllOrders_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label id = (Label)e.Item.FindControl("Id_lbl");
                id.Text = Convert.ToString(list_OrderProduct.ElementAt(j).OrderID);
                Label email = (Label)e.Item.FindControl("Email_lbl");
                email.Text = list_OrderProduct.ElementAt(j).ClientMail;
                Label phone = (Label)e.Item.FindControl("Phone_lbl");
                phone.Text = list_OrderProduct.ElementAt(j).ClientPhone;
                Label address = (Label)e.Item.FindControl("Address_lbl");
                address.Text = list_OrderProduct.ElementAt(j).Address;
                Label product = (Label)e.Item.FindControl("Product_lbl");
                string productName = Convert.ToString(list_OrderProduct.ElementAt(j).PreOrderProductID);
                product.Text = preOrderBusiness.GetNameProductService(Convert.ToInt32(productName));
                Label quantity = (Label)e.Item.FindControl("Quantity_lbl");
                quantity.Text = Convert.ToString(list_OrderProduct.ElementAt(j).ProductQuantity);
                Label date = (Label)e.Item.FindControl("Date_lbl");
                date.Text = list_OrderProduct.ElementAt(j).DueDate;
                j++;
            }
        }
    }
}