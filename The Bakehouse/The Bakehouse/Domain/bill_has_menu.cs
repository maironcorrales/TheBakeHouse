namespace The_Bakehouse.Domain
{
    public class bill_has_menu
    {
        private int numeroOrden;
        private string date;
        private double amount;
        private string productName;
        private string description;
        private int price;
        private int quantity;

        public bill_has_menu(int nOrden, string date, string productName, string description, int price, int quantity, double amount)
        {
            this.numeroOrden = nOrden;
            this.date = date;
            this.amount = amount;
            this.productName = productName;
            this.description = description;
            this.price = price;
            this.quantity = quantity;
        }

        public bill_has_menu(string date, string productName, string description, int price, int quantity, double amount)
        {
            this.date = date;
            this.amount = amount;
            this.productName = productName;
            this.description = description;
            this.price = price;
            this.quantity = quantity;
        }      

        public int NumeroOrden
        {
            get { return numeroOrden; }
            set { numeroOrden = value; }
        }

        public double Amount
        {
            get { return amount; }
            set { amount = value; }
        }

        public string Date
        {
            get { return date; }
            set { date = value; }
        }

        public string ProductName
        {
            get { return productName; }
            set { productName = value; }
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

    }
}