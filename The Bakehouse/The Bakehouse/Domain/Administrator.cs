using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace The_Bakehouse.Domain
{
    public class Administrator
    {
        private int idAdmin;
        private string username;
        private string password;        

        //Constructor
        public Administrator(int id, string username, string password)
        {
            this.idAdmin = id;
            this.username = username;
            this.password = password;
        }
        
        //Constructor
        public Administrator(string username, string password)
        {
            this.username = username;
            this.password = password;
        }

        //Setters and Getters
        public int Id
        {
            get { return idAdmin; }
            set { idAdmin = value; }
        }

        public string Username
        {
            get { return username; }
            set { username = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
    }
}