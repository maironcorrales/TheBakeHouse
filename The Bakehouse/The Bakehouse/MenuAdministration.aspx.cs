using AjaxControlToolkit;
using System;
using System.Collections.Generic;
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
                HiddenField id = (HiddenField)e.Item.FindControl("productID");
                id.Value = productList.ElementAt(i).IdProducto.ToString(); 
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

        protected void deleteProcess_Click(object sender, EventArgs e)
        {

        }

        protected void btnAcceptDelete_ServerClick(object sender, EventArgs e)
        {
            resultMessage.InnerText = menuService.DeleteProductFromMenuService(Convert.ToInt32(Session["PRODUCTID"]));
            Response.Redirect("MenuAdministration.aspx");
        }

        protected void productRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "deleteProduct")
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("deletePopUp");
                HiddenField id = (HiddenField)e.Item.FindControl("productID");
                Session["PRODUCTID"] = id.Value;
                DeleteQuestion.InnerText = "¿Desea elimnar el producto seleccionado?";
                popup.Show();
            }
            if (e.CommandName == "EditProduct")
            {
                ModalPopupExtender updatePopup = (ModalPopupExtender)e.Item.FindControl("EditPopUp");
                HiddenField id = (HiddenField)e.Item.FindControl("productID");
                Session["PRODUCTID"] = id.Value;
                updateMessage.InnerText = "Edite el producto. Use los espacios provistos para introducir los nuevos datos.";
                updatePopup.Show();
            }
        }

        protected void UpdateAccept_ServerClick(object sender, EventArgs e)
        {
            Catalogue productToUpdate = new Catalogue(Convert.ToInt32(Session["PRODUCTID"]), updateName.Value, updateDescription.Value, Convert.ToInt32(updatePrice.Value), Convert.ToInt32(updateAmount.Value));
            resultMessage.InnerText = menuService.ChangeProductCharacteristicsService(productToUpdate);
            Response.Redirect("MenuAdministration.aspx");
        }
    }
}