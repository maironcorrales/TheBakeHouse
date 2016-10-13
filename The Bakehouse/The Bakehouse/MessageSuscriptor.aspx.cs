using System;
using The_Bakehouse.Services;

namespace The_Bakehouse
{
    public partial class MessageSuscriptor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}