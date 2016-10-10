﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

namespace The_Bakehouse.Services
{
    public class MailService
    {
        public bool sendMail(string name, string email, string subject, string message)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient client = new SmtpClient();
                mail.From = new MailAddress("danicormu@hotmail.com");
                mail.To.Add(new MailAddress("danicormu@hotmail.com"));
                mail.Subject = subject;
                mail.Body = name + "<" + email + ">" + "\n" + message;
                client.Port = 587;
                client.Host = "smtp.live.com";
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("danicormu@hotmail.com" , "sanviteno199411");
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.Send(mail);
                return true;
            }
            catch(Exception e){
                Console.WriteLine(e.Message);
            }
            return false;
        }
    }
}