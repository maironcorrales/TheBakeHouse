using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
                MySqlCommand query = new MySqlCommand("select * from administradores;", Conn);
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

        //Update Administrator

        //Delete Administrator

    }
}