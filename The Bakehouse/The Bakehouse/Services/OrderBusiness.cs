using System.Collections.Generic;
using The_Bakehouse.Domain;
using The_Bakehouse.Data;

namespace The_Bakehouse.Services
{
    public class OrderBusiness
    {
        OrderData data = new OrderData();
        public List<OrderProduct> GetAllOrders()
        {
            return data.GetAllOrders();
        }

        public string CreateOrderBusiness(OrderProduct order)
        {
            string result = "";
            if (data.CreateOrder(order))
                result = "Su orden fue procesada. le llegará al lugar especificado y el día que usted designó. Gracias por preferirnos!";
            else
                result = "Lo sentimos, ha ocurrido un error. Intentelo más tarde.";
            return result;
        }
    }
}