using System.Collections.Generic;
using The_Bakehouse.Data;
using The_Bakehouse.Domain;
using System.Security.Cryptography;
using System.Text;

namespace The_Bakehouse.Services
{
    public class AdministratorBusiness
    {
        AdministratorData data = new AdministratorData();

        // add admininstrator service

        public string AddAdmininstrator(Administrator administrator) 
        {
            string result = "";
            Administrator admin = new Administrator(administrator.Username,EncryptCredentials(administrator.Password));
            if (data.addAdministrator(admin))
                result = "Admininistrador ingresado con éxito";
            else
                result = "El intento ha fallado, por favor intentelo más tarde";
            return result;
        }

        // get Administrator list service.

        public List<Administrator> GetAdministrators() 
        {
            return data.getAllAdministrator();
        }

        // Encription service

        public string EncryptCredentials(string password) 
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] encryption;
            UTF8Encoding encode = new UTF8Encoding();
            encryption = md5.ComputeHash(encode.GetBytes(password));
            StringBuilder encriptedCode = new StringBuilder();
            for (int i = 0; i < encryption.Length; i++)
                encriptedCode.Append(encryption[i].ToString());
            return encriptedCode.ToString();
        }

        //Login service.

        public bool LoginService(Administrator administrator) 
        {
            bool flag = false;
            flag = data.verificateAdmin(administrator.Username.ToString(), EncryptCredentials(administrator.Password));
            return flag;
        }

        //delete service.

        public string DeleteAdministrator(int id) 
        {
            string result = "";
            if (data.deleteAdministrator(id))
                result = "Administrador eliminado con éxito";
            else
                result = "El intento ha fallado, por favor intentelo más tarde";
            return result;
        }

        //update service

        public string UpdateAdministrator(Administrator administrator) 
        {
            string result = "";
            if (data.updateAdministrador(administrator))
                result = "Se han actualizado los datos con éxito";
            else
                result = "El intento ha fallado, por favor intentelo más tarde";
            return result;
        }
    }
}