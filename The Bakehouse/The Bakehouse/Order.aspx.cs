using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Bakehouse
{
    public partial class Order : System.Web.UI.Page
    {
        private int v1;
        private string v2;
        private string v3;
        private string v4;
        private int v5;
        private int v6;
        private string v7;

        public Order(int v1, string v2, string v3, string v4, int v5, int v6, string v7)
        {
            this.v1 = v1;
            this.v2 = v2;
            this.v3 = v3;
            this.v4 = v4;
            this.v5 = v5;
            this.v6 = v6;
            this.v7 = v7;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}