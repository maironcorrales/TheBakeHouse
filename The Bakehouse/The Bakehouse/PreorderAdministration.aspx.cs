using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using The_Bakehouse.Services;
using The_Bakehouse.Domain;
using AjaxControlToolkit;
using System.Web.UI.HtmlControls;

namespace The_Bakehouse
{
    public partial class PreorderAdministration : System.Web.UI.Page
    {
        NotificationBusiness nBusiness = new NotificationBusiness();
        PreOrderProductBusiness preorderBusiness = new PreOrderProductBusiness();
        public int i = 0;
        public int j = 0;
        public int count_Notification;
        private List<Notification> list_Notification;
        private List<PreOrderProduct> list_Preorder;
        HttpPostedFile fileToSave;

        protected void Page_Load(object sender, EventArgs e)
        {
            Browse.Attributes.Add("onclick", "document.getElementById('" + ImageUploader.ClientID + "').click();");
            list_Preorder = preorderBusiness.getAllPreOrder();
            productRepeater.DataSource = list_Preorder;
            productRepeater.DataBind();

            if (Session["USER"] == null)
                Response.Redirect("Login.aspx");

            if (Session["IMAGE"] == null)
                uploadImageUser.Attributes.Add("data-src", "images/placeholder.gif");
            else
                fileToSave = (HttpPostedFile)Session["IMAGE"];

            count_Notification = nBusiness.countUnreadNotification();
            list_Notification = nBusiness.GetUnreadNotificationService();
            popup_Notifications.DataSource = list_Notification;
            popup_Notifications.DataBind();            
        }

        protected void popup_Notifications_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label notification = (Label)e.Item.FindControl("lbl_Notification_Popup");
                notification.Text = list_Notification.ElementAt(i).Notificate;
                i++;
            }
        }

        
        protected void SavePreOrderProduct_ServerClick(object sender, EventArgs e)
        {
            if (productName.Value != null && priceProduct.Value != null && creationDateProduct.Value != null && finishDateProduct.Value != null && productDescription.Value != null && fileToSave != null)
            {
                PreOrderProduct product = new PreOrderProduct(productName.Value, productDescription.Value, Convert.ToInt32(priceProduct.Value), "MenuImages/" + fileToSave.FileName, creationDateProduct.Value, finishDateProduct.Value);
                resultMessage.InnerText = preorderBusiness.addPreOrderProductService(product);
                clearSpaces();
                ModalPopupExtender.Show();
                Response.Redirect("PreorderAdministration.aspx");
            }
            else
            {
                resultMessage.InnerText = "Debe llenar todos los campos requeridos.";
                ModalPopupExtender.Show();
            }
        }


        protected void cancelBtn_ServerClick(object sender, EventArgs e)
        {
            clearSpaces();
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void UploadImage_ServerClick(object sender, EventArgs e)
        {
            if (!ImageUploader.HasFile)
            {
                resultMessage.InnerText = "Debe buscar una imagen!";
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

        protected void productRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                HtmlGenericControl productNameH3Label = (HtmlGenericControl)e.Item.FindControl("product_Name");
                productNameH3Label.InnerText = list_Preorder.ElementAt(j).Name;
                HtmlGenericControl productDescriptionP = (HtmlGenericControl)e.Item.FindControl("product_Description");
                productDescriptionP.InnerText = list_Preorder.ElementAt(j).Description;
                HtmlGenericControl productPriceH3 = (HtmlGenericControl)e.Item.FindControl("price");
                productPriceH3.InnerHtml = "Precio:₡ " + list_Preorder.ElementAt(j).Price;
                HtmlGenericControl dateCreate = (HtmlGenericControl)e.Item.FindControl("date_create");
                dateCreate.InnerText = "Fecha Creacion: " + list_Preorder.ElementAt(j).CreateDate;
                HtmlGenericControl dateEnd = (HtmlGenericControl)e.Item.FindControl("date_end");
                dateEnd.InnerText = "Fecha Final: " + list_Preorder.ElementAt(j).FinalizeDate;
                HtmlImage productImage = (HtmlImage)e.Item.FindControl("productImg");
                productImage.Attributes.Add("data-src", list_Preorder.ElementAt(j).Foto);
                HiddenField id = (HiddenField)e.Item.FindControl("product_ID");
                id.Value = list_Preorder.ElementAt(j).ProductID.ToString();
                j++;
            }
        }

        protected void productRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "deleteProduct")
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("deletePopUp");
                HiddenField id = (HiddenField)e.Item.FindControl("product_ID");
                Session["PRODUCTID"] = id.Value;
                DeleteQuestion.InnerText = "¿Desea elimnar el producto seleccionado?";
                popup.Show();
            }
            if (e.CommandName == "EditProduct")
            {
                ModalPopupExtender updatePopup = (ModalPopupExtender)e.Item.FindControl("EditPopUp");
                HiddenField id = (HiddenField)e.Item.FindControl("product_ID");
                Session["PRODUCTID"] = id.Value;                
                updateMessage.InnerText = "Edite el producto. Use los espacios provistos para introducir los nuevos datos.";
                updatePopup.Show();
                HtmlGenericControl productNameH3Label = (HtmlGenericControl)e.Item.FindControl("product_Name");
                HtmlGenericControl productDescriptionP = (HtmlGenericControl)e.Item.FindControl("product_Description");
                HtmlGenericControl productPriceH3 = (HtmlGenericControl)e.Item.FindControl("price");
                HtmlGenericControl dateCreate = (HtmlGenericControl)e.Item.FindControl("date_create");
                HtmlGenericControl dateEnd = (HtmlGenericControl)e.Item.FindControl("date_end");
                updateName.Value = productNameH3Label.InnerText;
                updateDescription.Value = productDescriptionP.InnerText;
                updatePrice.Value = productPriceH3.InnerText;
                updateDateCreation.Value = dateCreate.InnerText;
                updateDateEnd.Value = dateEnd.InnerText;
            }
        }

        protected void updateProcess_Click(object sender, EventArgs e) { }

        protected void deleteProcess_Click(object sender, EventArgs e)   { }

        protected void btnAcceptDelete_ServerClick(object sender, EventArgs e)
        {
            resultMessage.InnerText = preorderBusiness.deletePreOrderProduct(Convert.ToInt32(Session["PRODUCTID"]));
            Response.Redirect("PreorderAdministration.aspx");
        }

        protected void UpdateAccept_ServerClick(object sender, EventArgs e)
        {
            PreOrderProduct productToUpdate = new PreOrderProduct(Convert.ToInt32(Session["PRODUCTID"]), updateName.Value, updateDescription.Value, Convert.ToInt32(updatePrice.Value), updateDateCreation.Value, updateDateEnd.Value);
            resultMessage.InnerText = preorderBusiness.updatePreOrderProductService(productToUpdate);
            Response.Redirect("PreorderAdministration.aspx");
        }

        public void clearSpaces()
        {
            productName.Value = "";
            productDescription.Value = "";
            priceProduct.Value = "";
            creationDateProduct.Value = "";
            finishDateProduct.Value = "";
            Session["IMAGE"] = null;
            uploadImageUser.Attributes.Add("data-src", "images/placeholder.gif");
        }


    }
}