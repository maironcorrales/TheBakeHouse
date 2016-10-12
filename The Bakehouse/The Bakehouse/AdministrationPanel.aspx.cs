using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using The_Bakehouse.Services;

namespace The_Bakehouse
{
    public partial class AdministrationPanel : System.Web.UI.Page
    {
        MailService service = new MailService();
        protected void Page_Load(object sender, EventArgs e)
        {
            
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
    }
}