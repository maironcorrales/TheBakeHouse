using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using The_Bakehouse.Domain;

namespace The_Bakehouse.Data
{
    public class OrderData:DBConnection
    {
        public List<OrderProduct> GetAllOrders()
        {
            List<OrderProduct> list = new List<OrderProduct>();
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("Select * from pedido");
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    OrderProduct order = new OrderProduct(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetInt32(4), reader.GetInt32(5), reader.GetString(6));
                    list.Add(order);
                }
                reader.Close();
            }
            catch (Exception e)
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

        public bool CreateOrder(OrderProduct order)
        {
            bool flag = false;
            try
            {
                MySqlCommand query = new MySqlCommand("insert into pedido (correodecliente,telefonocliente,direccionentrega,ProductosContraPedido_idProducto,Cantidadsolicitada,fechaSolicitud) values (@email,@phone,@address,@productID,@amount,@dueDate);");
                query.Parameters.AddWithValue("@email",order.ClientMail);
                query.Parameters.AddWithValue("@",order.ClientPhone);
                query.Parameters.AddWithValue("@",order.Address);
                query.Parameters.AddWithValue("@",order.PreOrderProductID);
                query.Parameters.AddWithValue("@",order.Amount);
                query.Parameters.AddWithValue("@",order.DueDate);
                query.ExecuteNonQuery();
                flag = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                Conn.Close();
            }
            return flag;
        }
    }
}