namespace The_Bakehouse.Domain
{
    public class PreOrderProduct
    {
        private int productID;
        private string name;
        private string description;
        private double price;
        private string foto;
        private string createDate;
        private string finalizeDate;

        public PreOrderProduct() { }
        public PreOrderProduct(int productID, string name, string description, double price, string foto, string createDate, string finalizeDate)
        {
            this.productID = productID;
            this.name = name;
            this.description = description;
            this.price = price;
            this.foto = foto;
            this.createDate = createDate;
            this.finalizeDate = finalizeDate;
        }
        public PreOrderProduct(string name, string description, double price, string foto, string createDate, string finalizeDate)
        {
            this.name = name;
            this.description = description;
            this.price = price;
            this.foto = foto;
            this.createDate = createDate;
            this.finalizeDate = finalizeDate;
        }

        public PreOrderProduct(int id, string name, string description, double price, string createDate, string finalizeDate)
        {
            this.productID = id;
            this.name = name;
            this.description = description;
            this.price = price;
            this.createDate = createDate;
            this.finalizeDate = finalizeDate;
        }

        public int ProductID
        {
            get
            {
                return productID;
            }

            set
            {
                productID = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Description
        {
            get
            {
                return description;
            }

            set
            {
                description = value;
            }
        }

        public double Price
        {
            get
            {
                return price;
            }

            set
            {
                price = value;
            }
        }

        public string CreateDate
        {
            get
            {
                return createDate;
            }

            set
            {
                createDate = value;
            }
        }

        public string Foto
        {
            get
            {
                return foto;
            }

            set
            {
                foto = value;
            }
        }

        public string FinalizeDate
        {
            get
            {
                return finalizeDate;
            }

            set
            {
                finalizeDate = value;
            }
        }
    }
}