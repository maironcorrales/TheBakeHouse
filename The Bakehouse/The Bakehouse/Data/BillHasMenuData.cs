using System;
using System.Collections.Generic;
using The_Bakehouse.Domain;
using MySql.Data.MySqlClient;

namespace The_Bakehouse.Data
{
    public class BillHasMenuData:DBConnection
    {
        public List<bill_has_menu> getOrderDetail(int orderNumber)
        {
            List<bill_has_menu> list = new List<bill_has_menu>();

            try
            {
                MySqlCommand query = new MySqlCommand("SELECT f.Fecha, m.nombre, m.descripcion,m.precio,m.cantidad,f.Monto" +
                "from factura f JOIN menu m ON f.idFactura = m.idProducto WHERE where factura_has_menu.numero de orden = @orden", Conn);
                query.Parameters.AddWithValue("@orden", orderNumber);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    bill_has_menu billhasmenu = new bill_has_menu(reader.GetString(0), reader.GetString(1), reader.GetString(2), reader.GetInt32(3), reader.GetInt32(4), reader.GetDouble(5));
                    list.Add(billhasmenu);
                }
            }
            catch(MySqlException e) 
            {
                Console.WriteLine(e.Message);
            }
            finally 
            {
                disconnectDB();
                Conn.Close();
            }
            return list;
        }
    }
}