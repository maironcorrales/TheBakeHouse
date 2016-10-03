using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using The_Bakehouse.Domain;


namespace The_Bakehouse.Data
{
    public class MenuData:DBConnection
    {
        //List of all the Menu
        public List<Catalogue> getAllProduct()
        {
            List<Catalogue> listProduct = new List<Catalogue>();
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("SELECT * FROM menu", Conn);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Catalogue catalogue = new Catalogue(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetInt32(3), reader.GetInt32(4), reader.GetString(5));
                    listProduct.Add(catalogue);
                }
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
            return listProduct;
        }
        
        //Insert a product
        public bool addProduct(Catalogue catalogue)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("INSERT INTO menu(nombre, descripcion, precio, cantidad, foto) VALUES(@name, @description, @price, @quantity, @photo);", Conn);
                query.Parameters.AddWithValue("@name", catalogue.Name);
                query.Parameters.AddWithValue("@description", catalogue.Description);
                query.Parameters.AddWithValue("@price", catalogue.Price);
                query.Parameters.AddWithValue("@quantity", catalogue.Quantity);
                query.Parameters.AddWithValue("@photo", catalogue.Photo);
                Conn.Open();
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

        //Update a Product
        public bool updateProduct(Catalogue catalogue)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("UPDATE menu SET nombre = @name, descripcion = @description, precio = @price, cantidad = @quantity, foto = @photo WHERE idProducto = @id;", Conn);
                query.Parameters.AddWithValue("@name", catalogue.Name);
                query.Parameters.AddWithValue("@description", catalogue.Description);
                query.Parameters.AddWithValue("@price", catalogue.Price);
                query.Parameters.AddWithValue("@quantity", catalogue.Quantity);
                query.Parameters.AddWithValue("@photo", catalogue.Photo);
                query.Parameters.AddWithValue("@id", catalogue.IdProducto);
                Conn.Open();
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

        //Delete a Product
        public bool deleteProduct(int id)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("DELETE FROM menu WHERE idProducto = @id", Conn);
                query.Parameters.AddWithValue("@id", id);
                Conn.Open();
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