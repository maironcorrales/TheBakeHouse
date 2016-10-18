using System;
using System.Collections.Generic;
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
                MySqlCommand query = new MySqlCommand("SELECT * FROM notificaciones;", Conn);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Notification notification = new Notification(reader.GetInt32(0), reader.GetString(1), reader.GetBoolean(2));
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
                MySqlCommand query = new MySqlCommand("INSERT into notificaciones(notificacion, visto) VALUES(@notification, @seen);", Conn);
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

        public List<Notification> GetUnreadNotification() 
        {
            List<Notification> list = new List<Notification>();
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("SELECT * FROM notificaciones where visto = false;", Conn);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Notification notification = new Notification(reader.GetInt32(0), reader.GetString(1), reader.GetBoolean(2));
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

        //update Notif
        public bool updateNotification(Notification notification)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("UPDATE notificaciones SET notificacion = @notification, visto = @seen;", Conn);
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
                MySqlCommand query = new MySqlCommand("DELETE FROM notificaciones WHERE idNotificacion = @id;", Conn);
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

        public bool deleteAllNotification()
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("DELETE FROM notificaciones;", Conn);
                Conn.Open();
                query.ExecuteNonQuery();
                flag = true;
            }
            catch(MySqlException e){
                Console.WriteLine(e.Message);
            }
            finally{
                disconnectDB();
                Conn.Close();
            }
            return flag;
        }
    }
}