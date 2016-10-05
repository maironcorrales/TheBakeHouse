using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using The_Bakehouse.Data;
using The_Bakehouse.Domain;

namespace The_Bakehouse.Services
{
    public class MenuBusiness
    {
        MenuData data = new MenuData();

        public List<Catalogue> GetAllProductsInMenu() 
        {
            return data.getAllProduct();
        }
    }
}