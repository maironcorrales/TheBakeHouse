using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using The_Bakehouse.Domain;
using The_Bakehouse.Services;
using AjaxControlToolkit;

namespace The_Bakehouse
{
    public partial class AdminAdministration : System.Web.UI.Page
    {
        AdministratorBusiness admBusiness = new AdministratorBusiness();
        NotificationBusiness nBusiness = new NotificationBusiness();
        private List<Administrator> adminList;
        private List<Notification> list_Notification;
        private int i = 0;
        private int j = 0;
        public int count_Notification;
        private string user;
        private string pass;
        Label nameAdmin;            
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
            {
                Response.Redirect("Login.aspx");                
            }
            user = Session["USER"].ToString();
            pass = Session["PASS"].ToString();
            adminList = admBusiness.GetAdministrators();
            administratorList.DataSource = adminList;
            administratorList.DataBind();
            count_Notification = nBusiness.countUnreadNotification();
            list_Notification = nBusiness.GetUnreadNotificationService();
            popup_Notifications.DataSource = list_Notification;
            popup_Notifications.DataBind();
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void Cancel_ServerClick(object sender, EventArgs e)
        {
            ClearSpaces();
        }

        private void ClearSpaces()
        {
            username.Value = "";
            password.Value = "";
            passwordRepeat.Value = "";
        }

        protected void CreateBtn_ServerClick(object sender, EventArgs e)
        {
            if(username.Value != "" && password.Value != ""){
                string admin = username.Value;
                string passw = password.Value;
                string passRepeat = passwordRepeat.Value;

                if (passw.ToString() == passRepeat.ToString())
                {
                    Administrator adm = new Administrator(admin, passw);
                    admBusiness.AddAdmininstrator(adm);
                    i = 0;
                    adminList = admBusiness.GetAdministrators();
                    administratorList.DataSource = adminList;
                    administratorList.DataBind();
                    message.InnerText = "Administrador: " + username.Value + ", contraseña: " + "*********" + " agregado con exito!";
                    username.Value = "";
                    password.Value = "";
                    passwordRepeat.Value = "";
                    ModalPopupExtender.Show();
                }
                else
                {
                    message.InnerText = "Las contraseñas no coinciden";
                    ModalPopupExtender.Show();
                }
            }
            else
            {
                message.InnerText = "Debe llenar los espacios.";
                ModalPopupExtender.Show();
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {

        }        

        protected void administratorList_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label id = (Label)e.Item.FindControl("lbl_Id_admin");
                id.Text = Convert.ToString(adminList.ElementAt(i).Id);
                nameAdmin = (Label)e.Item.FindControl("lbl_User_admin");
                nameAdmin.Text = adminList.ElementAt(i).Username;
                i++;
            }
        }

        protected void administratorList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "deleteItem")
            {
                Label lbl_Id = e.Item.FindControl("lbl_Id_admin") as Label;
                int id_Admin = Convert.ToInt32(lbl_Id.Text);
                admin_Info.Text = id_Admin.ToString();
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender2");
                popup.Show();
            }

            if (e.CommandName == "editItem")
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender3");
                Label username = (Label)e.Item.FindControl("lbl_User_admin");
                Label id = (Label)e.Item.FindControl("lbl_Id_admin");
                int idToUpdate = Convert.ToInt32(id.Text);
                userLabel.Text = "Nombre de usuario actual";
                currentPassLabel.Text = "Digite su contraseña actual";
                newPassLabel.Text = "Digite la nueva contraseña";
                repeatPassword.Text = "Repita la nueva contraseña";
                nameToEdit.Value = username.Text;
                Admin_ID.Text = idToUpdate.ToString();
                popup.Show();
            }
        }

        protected void processbtn_Click1(object sender, EventArgs e)
        {

        }

        protected void processbtn2_Click(object sender, EventArgs e)
        {

        }

        protected void btnUpdateAdmin_ServerClick(object sender, EventArgs e)
        {
            //Primero vamos a comparar la contrasena que ingresamos la encriptamos 
            string currentUser = nameAdmin.Text;
            Administrator admin = new Administrator(currentUser, currentPassToEdit.Value);
            if (admBusiness.ComparePassword(admin))
            {
                if (newPassEdited.Value.ToString().Equals(PasswordEditRepeat.Value.ToString()))
                {
                    Administrator admin1 = new Administrator(nameToEdit.Value, admBusiness.EncryptCredentials(newPassEdited.Value));
                    admBusiness.UpdateAdministrator(admin1);
                    currentPassToEdit.Value = "";
                    newPassEdited.Value = "";
                    message.InnerText = "El usuario ha sido actualizado con éxito.";
                    ModalPopupExtender.Show();
                }
                else
                {
                    message.InnerText = "Las contraseña nuevas no coinciden.";
                    ModalPopupExtender.Show();
                }
            }
            else
            {
                currentPassToEdit.Value = "";
                newPassEdited.Value = "";
                message.InnerText = "La contraseña actual no es la correcta.";
                ModalPopupExtender.Show();
            }
        }

        protected void deleteAdminConfirm_ServerClick(object sender, EventArgs e)
        {
            if (usernameToConfirm.Text.Equals(user) && passToConfirm.Text.Equals(pass))
            {
                admBusiness.DeleteAdministrator(Convert.ToInt32(admin_Info.Text));
                i = 0;
                adminList = admBusiness.GetAdministrators();
                administratorList.DataSource = adminList;
                administratorList.DataBind();
                usernameToConfirm.Text = "";
                passToConfirm.Text = "";
                message.InnerText = "Administrador eliminado con exito";
                ModalPopupExtender.Show();
            }
            else
            {
                message.InnerText = "El intento de eliminar un administrador ha fallado. Intentelo de nuevo más tarde.";
                usernameToConfirm.Text = "";
                passToConfirm.Text = "";
                ModalPopupExtender.Show();
            }
        }

        protected void popup_Notifications_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label notification = (Label)e.Item.FindControl("lbl_Notification_Popup");
                notification.Text = list_Notification.ElementAt(j).Notificate;
                j++;
            }
        }

        protected void link_ServerClick(object sender, EventArgs e)
        {

        }
    }
}