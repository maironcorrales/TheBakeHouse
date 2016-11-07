
namespace The_Bakehouse.Domain
{
    public class OrderProduct
    {
        private int orderID;
        private string clientMail;
        private string clientPhone;
        private string address;
        private int preOrderProductID;
        private int amount;
        private string dueDate;

        
        public OrderProduct(string clientMail, string clientPhone, string address, int preOrderProductID, int amount, string dueDate)
        {
            this.clientMail = clientMail;
            this.clientPhone = clientPhone;
            this.address = address;
            this.preOrderProductID = preOrderProductID;
            this.amount = amount;
            this.dueDate = dueDate;
        }

        public OrderProduct(int orderID, string clientMail, string clientPhone, string address, int preOrderProductID, int amount, string dueDate)
        {
            this.orderID = orderID;
            this.clientMail = clientMail;
            this.clientPhone = clientPhone;
            this.address = address;
            this.preOrderProductID = preOrderProductID;
            this.amount = amount;
            this.dueDate = dueDate;
        }

        public int OrderID
        {
            get
            {
                return orderID;
            }

            set
            {
                orderID = value;
            }
        }

        public string ClientMail
        {
            get
            {
                return clientMail;
            }

            set
            {
                clientMail = value;
            }
        }

        public string ClientPhone
        {
            get
            {
                return clientPhone;
            }

            set
            {
                clientPhone = value;
            }
        }

        public string Address
        {
            get
            {
                return address;
            }

            set
            {
                address = value;
            }
        }

        public int PreOrderProductID
        {
            get
            {
                return preOrderProductID;
            }

            set
            {
                preOrderProductID = value;
            }
        }

        public int Amount
        {
            get
            {
                return Amount;
            }

            set
            {
                Amount = value;
            }
        }

        public string DueDate
        {
            get
            {
                return dueDate;
            }

            set
            {
                dueDate = value;
            }
        }
    }
}