using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace The_Bakehouse.Domain
{
    public class Notification
    {
        private int idNotification;
        private string notificate;       
        private bool seen;

        public Notification() { }
        //Constructor
        public Notification(int idNotification, string notificate, bool seen)
        {
            this.idNotification = idNotification;
            this.notificate = notificate;
            this.seen = seen;
        }

        //Constructor
        public Notification(string notificate, bool seen)
        {
            this.notificate = notificate;
            this.seen = seen;
        }

        //Getters and Setters
        public int IdNotification
        {
            get { return idNotification; }
            set { idNotification = value; }
        }

        public string Notificate
        {
            get { return notificate; }
            set { notificate = value; }
        }

        public bool Seen
        {
            get { return seen; }
            set { seen = value; }
        }
    }
}