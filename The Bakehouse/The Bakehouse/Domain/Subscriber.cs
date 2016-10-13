namespace The_Bakehouse.Domain
{
    public class Subscriber
    {
        private int id;       
        private string name;        
        private string email;        
        private string telephone;

        public Subscriber() { }
        //Constructor
        public Subscriber(int id, string name, string email, string telephone)
        {
            this.id = id;
            this.name = name;
            this.email = email;
            this.telephone = telephone;
        }

        //Constructor
        public Subscriber(string name, string email, string telephone)
        {
            this.name = name;
            this.email = email;
            this.telephone = telephone;
        }

        //Getters and Setters
        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Telephone
        {
            get { return telephone; }
            set { telephone = value; }
        }
    }
}