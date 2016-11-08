using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using The_Bakehouse.Data;
using The_Bakehouse.Domain;

namespace The_Bakehouse.Services
{
    public class PreOrderProductBusiness
    {
        PreOrderProductData data = new PreOrderProductData();

        public List<PreOrderProduct> getAllPreOrder()
        {
            return data.GetAllPreOrderProducts();
        }

        public string addPreOrderProductService(PreOrderProduct p)
        {
            string result = "";
            if (data.CreatePreOrderProduct(p))
                result = "Preorder product added";
            else
                result = "Preorder product not added";
            return result;
        }

        public string updatePreOrderProductService(PreOrderProduct p)
        {
            string result = "";
            if (data.UpdatePreOrderProduct(p))
                result = "Preorder product updated";
            else
                result = "Preorder product not updated";
            return result;
        }

        public string deletePreOrderProduct(int id)
        {
            string result = "";
            if (data.DeletePreOrderProduct(id))
                result = "Preorder product deleted";
            else
                result = "Preorder product not deleted";
            return result;
        }

        public string MinimunDateDeliveryService()
        {
            string date = DateTime.Now.AddDays(2).ToShortDateString();
            return date;
        }
    }
}