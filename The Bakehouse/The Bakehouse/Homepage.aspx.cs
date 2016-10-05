﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using The_Bakehouse.Data;
using The_Bakehouse.Services;
using The_Bakehouse.Domain;

namespace The_Bakehouse
{
    public partial class Homepage : System.Web.UI.Page
    {
        MailService service = new MailService();
        SubscriberBusiness subscriberBusiness = new SubscriberBusiness();
        NotificationBusiness notificationBusiness = new NotificationBusiness();

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
            Notification notification = new Notification("Se ha realizado una nueva inscripcion al sitio.", false);
            if (notificationBusiness.AddNotificationService(notification))
            {
                suscribeMessage.InnerText = subscriberBusiness.AddSubscriberService(nameTxt.Value, mailTxt.Value, phoneTxt.Value);
                ModalPopupExtender.Show();
                RestablishValues();
            }
            else 
            {
                suscribeMessage.InnerText = "Ha ocurrido un error, por favor intentelo má tarde";
                ModalPopupExtender.Show();
                RestablishValues();
            }
        }

        private void RestablishValues()
        {
            phoneTxt.Value = "";
            nameTxt.Value = "";
            mailTxt.Value = "";
        }

        protected void reset_ServerClick(object sender, EventArgs e)
        {
            RestablishValues();
        }
        
    }
}