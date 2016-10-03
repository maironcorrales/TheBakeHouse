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

        
    }
}