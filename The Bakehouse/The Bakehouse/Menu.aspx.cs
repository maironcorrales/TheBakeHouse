using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using The_Bakehouse.Services;
using The_Bakehouse.Domain;

namespace The_Bakehouse
{
    public partial class Menu : System.Web.UI.Page
    {
        MenuBusiness menuService = new MenuBusiness();
        private int i = 0;
        private List<Catalogue> productList;

        protected void Page_Load(object sender, EventArgs e)
        {

            productList = menuService.GetAllProductsInMenu();
           productRepeater.DataSource = productList;
            productRepeater.DataBind();
        }

        protected void BuyBtn_Click(object sender, EventArgs e)
        {

        }

        protected void productRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                HtmlGenericControl productNameH3Label = (HtmlGenericControl)e.Item.FindControl("productName");
                productNameH3Label.InnerText = productList.ElementAt(i).Name;
                HtmlGenericControl productDescriptionP = (HtmlGenericControl)e.Item.FindControl("productDescription");
                productDescriptionP.InnerText = productList.ElementAt(i).Description;
                HtmlGenericControl productPriceH3 = (HtmlGenericControl)e.Item.FindControl("price");
                productPriceH3.InnerHtml = productList.ElementAt(i).Price.ToString();
                HtmlImage productImage = (HtmlImage)e.Item.FindControl("productImg");
                productImage.Attributes.Add("data-src", productList.ElementAt(i).Photo);
                i++;
            }
        }
    }
}