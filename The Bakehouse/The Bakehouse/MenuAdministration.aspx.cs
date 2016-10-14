using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using The_Bakehouse.Domain;
using The_Bakehouse.Services;

namespace The_Bakehouse
{
    public partial class MenuAdministration : System.Web.UI.Page
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

        protected void cancelBtn_ServerClick(object sender, EventArgs e)
        {

        }

        protected void SaveProduct_ServerClick(object sender, EventArgs e)
        {

        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void EditBtn_ServerClick(object sender, EventArgs e)
        {

        }

        protected void DeleteBtn_ServerClick(object sender, EventArgs e)
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
                productPriceH3.InnerHtml = "Precio:₡ " + productList.ElementAt(i).Price.ToString();
                HtmlGenericControl productAmount = (HtmlGenericControl)e.Item.FindControl("amount");
                productAmount.InnerText = "Cantidad: " + productList.ElementAt(i).Quantity.ToString();
                HtmlImage productImage = (HtmlImage)e.Item.FindControl("productImg");
                productImage.Attributes.Add("data-src", productList.ElementAt(i).Photo);
                i++;
            }
        }
    }
}