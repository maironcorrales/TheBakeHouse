using System.Collections.Generic;
using The_Bakehouse.Domain;
using The_Bakehouse.Data;

namespace The_Bakehouse.Services
{
    public class NotificationBusiness
    {
        NotificationData data = new NotificationData();

        //Get unread notifications to see them
        public List<Notification> GetUnreadNotificationService()
        {
            return data.GetUnreadNotification();
        }

        // Get all the notifications
        public List<Notification> GetAllNotificationService() 
        {
            return data.getAllNotification();
        }

        // this adds a notification every time someone suscribe or sends a message to the bakehouse
        public bool AddNotificationService(Notification notification) 
        {
            return data.addNotification(notification);
        }

        // this change the state of every reaad notificaction
        public bool UpdateNotificationToReadService(Notification notification)
        {
            return data.updateNotification(notification);
        }

        // delete the unwanted notification.
        public string DeleteNotificationService(int id) 
        {
            string result = "";
            if (data.deleteNotification(id))
                result = "Se ha eliminado la notificacion con éxito";
            else
                result = "Ha ocurrido un error. Intentalo más tarde.";
            return result;
        }

        //Delete all the notification
        public string DeleteAllNotificationService()
        {
            string result = "";
            if (data.deleteAllNotification())
                result = "Se han eliminado todas las notificaciones";
            else
                result = "Ha ocurrido un error. Intentelo de nuevo.";
            return result;
        }

    }
}