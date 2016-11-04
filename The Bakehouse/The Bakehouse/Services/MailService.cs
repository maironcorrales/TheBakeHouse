using System;
using System.Net;
using System.Net.Mail;
using The_Bakehouse.Domain;
using System.Linq;
using System.Collections.Generic;

namespace The_Bakehouse.Services
{
    public class MailService
    {
        public bool sendMail(string name, string email, string subject, string message)
        {
            if(name != null && email != null && subject != null && message != null)
                try
                {
                    MailMessage mail = new MailMessage();
                    SmtpClient client = new SmtpClient();
                    mail.From = new MailAddress("thebakehouseservice@hotmail.com");
                    mail.To.Add(new MailAddress("thebakehouseglutenfree@gmail.com"));
                    mail.Subject = subject;
                    mail.Body = name + "<" + email + ">" + "\n" + message;
                    client.Port = 587;
                    client.Host = "smtp.live.com";
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("thebakehouseservice@hotmail.com", "THE.BakeHouse.2016");
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Send(mail);
                    return true;
                }
                catch(Exception e){
                    Console.WriteLine(e.Message);
                }
                return false;
        }


        public bool sendMailWebMaster(string name, string email, string subject, string message)
        {
            if(name != null && email != null && subject != null && message != null)
                try
                {
                    MailMessage mail = new MailMessage();
                    SmtpClient client = new SmtpClient();
                    mail.From = new MailAddress("thebakehouseservice@hotmail.com");
                    mail.To.Add(new MailAddress("appstudiodevelopers@gmail.com"));
                    mail.Subject = subject;
                    mail.Body = "ADMINISTRACION THEBAKEHOUSE" + "\n" +
                                name + " <" + email + "> " + "\n" + message;
                    client.Port = 587;
                    client.Host = "smtp.live.com";
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("thebakehouseservice@hotmail.com", "THE.BakeHouse.2016");
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Send(mail);
                    return true;

                }
                catch(Exception e)
                {
                    Console.WriteLine(e.Message);
                }
            return false;
        }

        public string SendMessageToAllSuscriptors(string subject, string message)
        {

            string result = "";
            if (subject != "" && message != "")
            {
                List<Subscriber> subscriberList = new List<Subscriber>();
                SubscriberBusiness subscriberBussiness = new SubscriberBusiness();
                subscriberList = subscriberBussiness.ListSubscriber();
                try
                {
                    MailMessage mail = new MailMessage();
                    SmtpClient client = new SmtpClient();
                    mail.From = new MailAddress("thebakehouseservice@hotmail.com");
                    foreach (var element in subscriberList)
                        mail.To.Add(new MailAddress(element.Email));
                    mail.Subject = subject;
                    mail.Body = "Por Favor no responda este mensage." + "\n" 
                        + "De parte de la admininstración de The Bakehouse Gluten Free:" + "\n"
                        + message + "\n"
                        +"Puede ponerse en contacto con The Bakehouse Gluten Free por medio de la siguiente dirección de correo electrónico: TheBakehouseGlutenFree@gmail.com.";
                    client.Port = 587;
                    client.Host = "smtp.live.com";
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("thebakehouseservice@hotmail.com", "THE.BakeHouse.2016");
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Send(mail);
                    result = "Su mensage a sido enviado con éxito a todos los suscriptores the The bakehouse Gluten Free.";

                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
                    result = "Ha sucedido un inconveniente. Intentelo más tarde o pongase en contacto con su proveedor de servicios y el Web Master.";
                }
            }
            else
                result = "No debe dejar los espacios de escritura en blanco.";
            return result;
        }
    }
}