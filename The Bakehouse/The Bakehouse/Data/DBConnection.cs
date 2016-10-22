using System;
using MySql.Data.MySqlClient;

namespace The_Bakehouse.Data
{
    public abstract class DBConnection
    {
        private MySqlConnection conn = null;
        //protected String path = "Server = localhost; Database = TheBakehouse; UID = root; password = LinkinPark01;";
        protected String path = "Server = localhost; Database = TheBakehouse; UID = root; password = student1994;";

        protected MySqlConnection Conn
        {
            get { return conn; }
            set { conn = value; }
        }

        public void ConnectDB() 
        {
            try 
            {
                conn = new MySqlConnection(path);
                Console.WriteLine("Conecte con exito");
            }
            catch(Exception e)
            { 
                Console.WriteLine(e.Message);
            }     
        }

        public void disconnectDB()
        {
            try
            {
                if (conn != null)
                    conn.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }
    }
}