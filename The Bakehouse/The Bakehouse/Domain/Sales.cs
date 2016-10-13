namespace The_Bakehouse.Domain
{
    public class Sales
    {
        private int idSale;       
        private int idBill;

        public Sales() { }
        //Constructor
        public Sales(int idSale, int idBill)
        {
            this.idSale = idSale;
            this.idBill = idBill;
        }

        //Constructor
        public Sales(int idBill)
        {
            this.idBill = idBill;
        }

        //Getters and Setters
        public int IdSale
        {
            get { return idSale; }
            set { idSale = value; }
        }

        public int IdBill
        {
            get { return idBill; }
            set { idBill = value; }
        }
    }
}