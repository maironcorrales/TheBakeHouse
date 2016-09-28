using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using The_Bakehouse.Domain;

namespace The_Bakehouse.Data
{
    public class SubscriberData:DBConnection
    {
        //get all subscribers
        public List<Subscriber> getAllSubscriber()
        {
            List<Subscriber> list = new List<Subscriber>();
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("select * from suscriptores;", Conn);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                while(reader.Read())
                {
                    Subscriber subscriber = new Subscriber(reader.GetString(0), reader.GetString(1), reader.GetInt32(2));
                    list.Add(subscriber);
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
            return list;
        }

        //get id subscriber
        public int getIdSubscriber(string subscriber, string email)
        {
            int id = 0;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("select id_Suscriptor from suscriptores where nombre_suscriptor = @subs, email = @email;", Conn);
                query.Parameters.AddWithValue("@subs", subscriber);
                query.Parameters.AddWithValue("@email", email);
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
                Conn.Open();
            }
            return id;
        }

        //add subscriber
        public bool addSubscriber(Subscriber subscriber)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("insert into suscriptores values(@subscriber,@email,@phone);", Conn);
                query.Parameters.AddWithValue("@subscriber", subscriber.Name);
                query.Parameters.AddWithValue("@email", subscriber.Email);
                query.Parameters.AddWithValue("@phone", subscriber.Telephone);
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

        //update subscriber
        public bool updateSubscriber(Subscriber subscriber)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("update suscriptores set nombre_suscriptores = @susbcriber, email = @email, telefono = @phone;", Conn);
                query.Parameters.AddWithValue("@susbcriber", subscriber.Name);
                query.Parameters.AddWithValue("@email", subscriber.Email);
                query.Parameters.AddWithValue("@phone", subscriber.Telephone);
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

        //delete subscriber
        public bool deleteSubscriber(int id)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("delete from suscriptores where id_Suscriptor = @id;", Conn);
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