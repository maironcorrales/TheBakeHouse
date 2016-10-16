using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
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
        HttpPostedFile fileToSave;
        protected void Page_Load(object sender, EventArgs e)
        {
            Browse.Attributes.Add("onclick", "document.getElementById('" + ImageUploader.ClientID + "').click();");
            productList = menuService.GetAllProductsInMenu();
            productRepeater.DataSource = productList;
            productRepeater.DataBind();
            if (Session["IMAGE"] == null)
                uploadImageUser.Attributes.Add("data-src", "images/placeholder.gif");
            else
                fileToSave = (HttpPostedFile)Session["IMAGE"];
        }

        protected void cancelBtn_ServerClick(object sender, EventArgs e)
        {
            ClearSpaces();
        }

        protected void SaveProduct_ServerClick(object sender, EventArgs e)
        {
            if (productName.Value != null && productDescription.Value != null && price.Value != null && amount.Value != null && fileToSave != null)
            {
                Catalogue product = new Catalogue(productName.Value, productDescription.Value, Convert.ToInt32(price.Value), Convert.ToInt32(amount.Value), "MenuImages/" + fileToSave.FileName);
                resultMessage.InnerText = menuService.AddNewProductToMenuService(product);
                ClearSpaces();
                ModalPopupExtender.Show();
                Response.Redirect("MenuAdministration.aspx");
            }
            else
            {
                resultMessage.InnerText = "Debe llenar todos los campos requeridos.";
                ModalPopupExtender.Show();
            }
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

        private void ClearSpaces()
        {
            productName.Value = "";
            price.Value = "";
            productDescription.Value = "";
            amount.Value = "";
            Session["IMAGE"] = null;
            uploadImageUser.Attributes.Add("data-src", "images/placeholder.gif");
        }

        protected void UploadImage_ServerClick(object sender, EventArgs e)
        {
            
            if (!ImageUploader.HasFile)
            {
                resultMessage.InnerText = "Debe buscar y escoger una imagen primero.";
                ModalPopupExtender.Show();
            }
            else
            {
                HttpPostedFile file = ImageUploader.PostedFile;
                Session["IMAGE"] = file;
                file.SaveAs(Server.MapPath(@"MenuImages/" + file.FileName));
                uploadImageUser.Attributes.Add("data-src", "MenuImages/" + file.FileName);
            }
        }
    }
}