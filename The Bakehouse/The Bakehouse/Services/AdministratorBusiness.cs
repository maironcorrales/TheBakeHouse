using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using The_Bakehouse.Data;
using The_Bakehouse.Domain;

namespace The_Bakehouse.Services
{
    public class AdministratorBusiness
    {
        AdministratorData data = new AdministratorData();

        // get Administrator list service.

        public List<Administrator> GetAdministrators() 
        {
            return data.getAllAdministrator();
        }

        //Login service.

        public bool LoginService(Administrator administrator) 
        {
            bool flag = false;
            // code here
            return flag;
        }

        //delete service.

        public bool DeleteAdministrator(Administrator administrator) 
        {
            bool flag = false;
            // code here
            return flag;
        }

        //update service

        public bool UpdateAdministrator(Administrator administrator) 
        {
            bool flag = false;
            // code here
            return flag;
        }
    }
}