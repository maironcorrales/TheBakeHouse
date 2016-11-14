﻿using System;
using System.Collections.Generic;
using The_Bakehouse.Domain;
using MySql.Data.MySqlClient;

namespace The_Bakehouse.Data
{
    public class PreOrderProductData:DBConnection
    {
        public List<PreOrderProduct> GetAllPreOrderProducts()
        {
            List<PreOrderProduct> list = new List<PreOrderProduct>();
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("Select * from productoscontrapedido",Conn);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    PreOrderProduct product = new PreOrderProduct(reader.GetInt32(0),reader.GetString(1),reader.GetString(2),reader.GetDouble(3),reader.GetString(4),reader.GetString(5),reader.GetString(6));
                    list.Add(product);
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

        public PreOrderProduct getPreOrderProduct(int id)
        {
            PreOrderProduct preOrderProduct = null;
            try
            {
                MySqlCommand query = new MySqlCommand("SELECT * FROM productoscontrapedido where idProducto = @id", Conn);
                query.Parameters.AddWithValue("@id", id);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                reader.Read();
                preOrderProduct = new PreOrderProduct(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetDouble(3), reader.GetString(5), reader.GetString(6));
                return preOrderProduct;
            }
            catch (MySqlException e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                Conn.Close();
            }
            return null;
        }

        public bool CreatePreOrderProduct(PreOrderProduct product)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("Insert into productoscontrapedido(nombre,descripción,precio,foto,fechacreacion,fechatermino) values(@name,@description,@price,@image,@createDate,@finalDate)", Conn);
                Conn.Open();
                query.Parameters.AddWithValue("@name",product.Name);
                query.Parameters.AddWithValue("@description",product.Description);
                query.Parameters.AddWithValue("@price",product.Price);
                query.Parameters.AddWithValue("@image",product.Foto);
                query.Parameters.AddWithValue("@createDate",product.CreateDate);
                query.Parameters.AddWithValue("@finalDate",product.FinalizeDate);
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

        public bool UpdatePreOrderProduct(PreOrderProduct product)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("update productoscontrapedido set nombre= @ name descripción=@description and precio = @price and foto=@image and fechacreacion= @createDate and fechatermino=@finalDate where idProducto =@id;", Conn);
                Conn.Open();
                query.Parameters.AddWithValue("@name", product.Name);
                query.Parameters.AddWithValue("@description", product.Description);
                query.Parameters.AddWithValue("@price", product.Price);
                query.Parameters.AddWithValue("@image", product.Foto);
                query.Parameters.AddWithValue("@createDate", product.CreateDate);
                query.Parameters.AddWithValue("@finalDate", product.FinalizeDate);
                query.Parameters.AddWithValue("@id", product.ProductID);
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

        public bool DeletePreOrderProduct(int id)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("delete from productoscontrapedido where idProducto =@id;", Conn);
                Conn.Open();
                query.Parameters.AddWithValue("@id", id);
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

        public string GetProductName(int id)
        {
            string result = "";
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("SELECT nombre FROM productoscontrapedido WHERE idProducto = @id;", Conn);
                query.Parameters.AddWithValue("@id", id);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                reader.Read();      
                result = reader.GetString(0); 
            }
            catch (MySqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                disconnectDB();
                Conn.Close();
            }
            return result;
        }
    }
}