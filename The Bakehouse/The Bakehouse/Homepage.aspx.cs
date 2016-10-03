using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using The_Bakehouse.Data;
using The_Bakehouse.Services;

namespace The_Bakehouse
{
    public partial class Homepage : System.Web.UI.Page
    {
        MailService service = new MailService();
        SubscriberBusiness subscriberBusiness = new SubscriberBusiness();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (service.sendMail(contactMail.Value, contactMail.Value, contactSubject.Value, contactMessage.Value))
            {
                contactName.Value = "";
                contactMail.Value = "";
                contactSubject.Value = "";
                contactMessage.Value = "";
            }
            else
            {
                Console.WriteLine("EMAIL NO ENVIADO");
            }
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void SuscribeBtn_ServerClick(object sender, EventArgs e)
        {
            if (phoneTxt.Value == null)
                phoneTxt.Value = "0";
            suscribeMessage.InnerText= subscriberBusiness.AddSubscriberService(nameTxt.Value, mailTxt.Value, phoneTxt.Value);
            ModalPopupExtender.Show();
            RestablishValues();
        }

        private void RestablishValues() 
        {
            phoneTxt.Value = "";
            mailTxt.Value = "";
            mailTxt.Value = "";
        }
        
    }
}