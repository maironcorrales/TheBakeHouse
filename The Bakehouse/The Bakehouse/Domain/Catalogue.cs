using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace The_Bakehouse.Domain
{
    public class Catalogue
    {
        private int id;
        private string name;
       // private int productId; Para que jale el nombre del producto desde la base de datos y no tener que digitar el nombre de prod.
        private int price;
        private string description;
        private string[] ingredients;
        private string date;
    }
}