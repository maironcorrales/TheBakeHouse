using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using The_Bakehouse.Domain;
using The_Bakehouse.Data;


namespace The_Bakehouse.Services
{
    public class SubscriberBusiness
    {
        SubscriberData data = new SubscriberData();

        // get all the subscribers
        public List<Subscriber> ListSubscriber() 
        {
            return data.getAllSubscriber();
        }

        //add subscriber
        public string AddSubscriberService(string name, string mail, string phoneNumber) 
        {
            string message = "";
            Subscriber subscriber = new Subscriber(name, mail, phoneNumber);
            if (data.addSubscriber(subscriber))
                message = "Gracias por suscribirte a The Bakehouse. Estaremos en contacto.";
            else
                message = "Ha ocurrido un error. Por favor intentalo más tarde.";
            return message;
        }
    }
}