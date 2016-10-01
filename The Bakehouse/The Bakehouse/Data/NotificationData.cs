using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using The_Bakehouse.Domain;
using MySql.Data.MySqlClient;

namespace The_Bakehouse.Data
{
    public class NotificationData:DBConnection
    {
        //Get all Notification
        public List<Notification> getAllNotification()
        {
            List<Notification> list = new List<Notification>();
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("select * from notificaciones;", Conn);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Notification notification = new Notification(reader.GetInt32(0), reader.GetString(1), reader.GetBoolean(3));
                    list.Add(notification);
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

        //add Notif
        public bool addNotification(Notification notification)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("insert into notification values(@notification, @seen);", Conn);
                query.Parameters.AddWithValue("@notification", notification.Notificate);
                query.Parameters.AddWithValue("@seen", notification.Seen);
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

        //update Notif
        public bool updateNotification(Notification notification)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("update notificaciones set notificacion = @notification, visto = @seen;", Conn);
                query.Parameters.AddWithValue("@notification", notification.Notificate);
                query.Parameters.AddWithValue("@seen", notification.Seen);
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

        //delete Notif
        public bool deleteNotification(int idNot)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("delete from notificaciones where idNotificacion = id;", Conn);
                query.Parameters.AddWithValue("@id", idNot);
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