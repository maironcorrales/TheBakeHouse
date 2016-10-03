using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace The_Bakehouse.Domain
{
    public class Catalogue
    {
        private int idProducto;
        private string name;
        private string description;
        private int price;
        private int quantity;
        private string photo; //Url de donde se encuentra la foto       


        public Catalogue() { }
        //Constructor
        public Catalogue(int idProducto, string name, string description, int price, int quantity, string photo)
        {
            this.idProducto = idProducto;
            this.name = name;
            this.description = description;
            this.price = price;
            this.quantity = quantity;
            this.photo = photo;
        }

        //Constructor
        public Catalogue(string name, string description, int price, int quantity, string photo)
        {
            this.name = name;
            this.description = description;
            this.price = price;
            this.quantity = quantity;
            this.photo = photo;
        }
         
        //Constructor
        public Catalogue(string name, string description, int price, string photo)
        {
            this.name = name;
            this.description = description;
            this.price = price;
            this.photo = photo;
        }

        //Getters and Setters
        public int IdProducto
        {
            get { return idProducto; }
            set { idProducto = value; }
        }

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public string Description
        {
            get { return description; }
            set { description = value; }
        }

        public int Price
        {
            get { return price; }
            set { price = value; }
        }

        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }

        public string Photo
        {
            get { return photo; }
            set { photo = value; }
        }
    }
}