using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using The_Bakehouse.Services;
using The_Bakehouse.Domain;

namespace The_Bakehouse
{
    public partial class Homepage : System.Web.UI.Page
    {
        SubscriberBusiness subscriberService = new SubscriberBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void suscribeBtn_ServerClick(object sender, EventArgs e)
        {
            int phoneNumber = 0;
            if (subscriberPhoneTxt.Value != null)
                phoneNumber = Convert.ToInt32(subscriberPhoneTxt.Value);
            subscriberMessage.InnerText = subscriberService.AddSubscriberService(subscriberNameTxt.Value,subscriberMailTxt.Value,phoneNumber);
            ModalPopupExtender.Show();
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }
    }
}