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
                result = "Producto agregado correctamente!";
            else
                result = "Producto no agregado, vuelva a intentar!";
            return result;
        }

        public string updatePreOrderProductService(PreOrderProduct p)
        {
            string result = "";
            if (data.UpdatePreOrderProduct(p))
                result = "Producto actualizado correctamente!";
            else
                result = "Producto no actualizado!";
            return result;
        }

        public string deletePreOrderProduct(int id)
        {
            string result = "";
            if (data.DeletePreOrderProduct(id))
                result = "Producto eliminado!";
            else
                result = "Producto no eliminado, vuelva a intentar!";
            return result;
        }

        public string MinimunDateDeliveryService()
        {
            string date = DateTime.Now.AddDays(2).ToShortDateString();
            return date;
        }

        public string GetNameProductService(int id)
        {
            return data.GetProductName(id);
        }
    }
}