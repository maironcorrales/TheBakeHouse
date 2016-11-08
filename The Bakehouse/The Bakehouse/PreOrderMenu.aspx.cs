using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using The_Bakehouse.Domain;
using The_Bakehouse.Services;
using AjaxControlToolkit;

namespace The_Bakehouse
{
    public partial class PreOrderMenu : System.Web.UI.Page
    {
        List<PreOrderProduct> list;
        int i = 0;
        PreOrderProductBusiness product = new PreOrderProductBusiness();
        OrderBusiness orderBusiness = new OrderBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {
            list = product.getAllPreOrder();
            productRepeater.DataSource = list;
            productRepeater.DataBind();
        }

        protected void productRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                HtmlGenericControl name = (HtmlGenericControl)e.Item.FindControl("productName");
                HtmlGenericControl description = (HtmlGenericControl)e.Item.FindControl("productDescription");
                HtmlGenericControl price = (HtmlGenericControl)e.Item.FindControl("price");
                HtmlGenericControl minimunDate = (HtmlGenericControl)e.Item.FindControl("minimunDelivery");
                HtmlGenericControl finalDate = (HtmlGenericControl)e.Item.FindControl("FinalDate");
                HtmlImage img = (HtmlImage)e.Item.FindControl("productImg");
                HiddenField id = (HiddenField)e.Item.FindControl("ProductID");
                id.Value = list.ElementAt(i).ProductID.ToString();
                minimunDate.InnerText ="Fecha mínima de entrega: " +product.MinimunDateDeliveryService();
                finalDate.InnerText = "Fecha máxima para hacer pedido: " + list.ElementAt(i).FinalizeDate;
                name.InnerText = list.ElementAt(i).Name;
                description.InnerText = list.ElementAt(i).Description;
                price.InnerText = list.ElementAt(i).Price.ToString();
                img.Attributes.Add("data-src", list.ElementAt(i).Foto);
            }
            i++;
        }

        protected void productRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("MakeOrder"))
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender");
                datePicker.Attributes.Add("placeholder", "Formato: DD/MM/AAAA");
                HiddenField idProduct = (HiddenField)e.Item.FindControl("ProductID");
                Session["IDP"] = Convert.ToInt32(idProduct.Value);
                popup.Show();
            }
        }

        protected void MakeOrderAccept_ServerClick(object sender, EventArgs e)
        {
            if (usernameTxt.Value != null && userPhoneTxt.Value != null && adressTxt.Value != null && amountTxt.Value != null && datePicker.Value != null)
            {
                OrderProduct order = new OrderProduct(usernameTxt.Value, userPhoneTxt.Value, adressTxt.Value, Convert.ToInt32(Session["IDP"]), Convert.ToInt32(amountTxt.Value), datePicker.Value);
                resultMessage.InnerText = orderBusiness.CreateOrderBusiness(order);
            }
            else
            {
                resultMessage.InnerText = "Debe llenar todos los campos requeridos.";
            }
            ModalPopupExtender1.Show();
        }
    }
}