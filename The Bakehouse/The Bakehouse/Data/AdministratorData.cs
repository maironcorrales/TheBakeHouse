using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using The_Bakehouse.Domain;

namespace The_Bakehouse.Data
{
    public class AdministratorData:DBConnection
    {
        //List administrators
        public List<Administrator> getAllAdministrator()
        {
            List<Administrator> list = new List<Administrator>();
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("SELECT * FROM administradores;", Conn);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Administrator admin = new Administrator(reader.GetInt32(0), reader.GetString(1), reader.GetString(2));
                    list.Add(admin);
                }
            }
            catch(Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally{
                disconnectDB();
                Conn.Close();
            }
            return list;
        }

        //Insert Administrator
        public bool addAdministrator(Administrator administrator)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("INSERT into administradores(nombre_usuario, contraseña) VALUES(@user, @pass);", Conn);
                query.Parameters.AddWithValue("@user", administrator.Username);
                query.Parameters.AddWithValue("@pass", administrator.Password);
                Conn.Open();
                query.ExecuteNonQuery();
                flag = true;
            }
            catch(Exception e)
            {
                Console.WriteLine(e.Message);
            }

            finally{
                disconnectDB();
                Conn.Close();
            }
            return flag;
        }
        
        //Update Administrator
        public bool updateAdministrador(Administrator administrador)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("UPDATE administradores SET nombre_usuario = @user, contraseña = @password WHERE idAdministradores = @idAdmin;", Conn);
                query.Parameters.AddWithValue("@user", administrador.Username);
                query.Parameters.AddWithValue("@password", administrador.Password);
                query.Parameters.AddWithValue("@idAdmin", administrador.Id);
                Conn.Open();
                query.ExecuteNonQuery();
                flag = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally{
                disconnectDB();
                Conn.Close();
            }
            return flag;
        }

        //Delete Administrator
        public bool deleteAdministrator(int id)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("DELETE FROM administradores WHERE idAdministradores = @idAdmin", Conn);
                query.Parameters.AddWithValue("@idAdmin", id);
                Conn.Open();
                query.ExecuteNonQuery();
                flag = true;
            }
            catch(Exception e)
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

        //Get de Id of Administrator
        public int getIdAdministrator(string username, string password)
        {
            int id = 0;
            try
            {
                MySqlCommand query = new MySqlCommand("SELECT idAdministradores FROM administradores WHERE nombre_usuario = @user, contraseña = @pass;", Conn);
                query.Parameters.AddWithValue("@user", username);
                query.Parameters.AddWithValue("@pass", password);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                reader.Read();
                id = reader.GetInt32(0);
            }
            catch(Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                Conn.Close();
            }
            return id;
        }

        //Login Method
        public bool verificateAdmin(string username, string password)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("SELECT nombre_usuario, contraseña FROM administradores WHERE nombre_usuario = @user AND contraseña = @pass;", Conn);
                query.Parameters.AddWithValue("@user", username);
                query.Parameters.AddWithValue("@pass", password);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                reader.Read();
                if ((username == reader.GetString(0)) && (password == reader.GetString(1)))
                {
                    flag = true;
                }
            }
            catch(Exception e){
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