using System.Collections.Generic;
using The_Bakehouse.Data;
using The_Bakehouse.Domain;

namespace The_Bakehouse.Services
{
    public class MenuBusiness
    {
        MenuData data = new MenuData();

        public List<Catalogue> GetAllProductsInMenu() 
        {
            return data.getAllProduct();
        }

        // add new product to menu
        public string AddNewProductToMenuService(Catalogue catalogue) 
        {
            string result = "";
            if (data.addProduct(catalogue))
                result = "Se ha agregado un producto nuevo al menú con exitó.";
            else
                result = "Se ha producido un error, por favor intentelo de nuevo más tarde.";
            return result;
        }

        // update product chararacteristics in catalogue and menu.
        public string ChangeProductCharacteristicsService(Catalogue catalogue) 
        {
            string result = "";
            if (data.updateProduct(catalogue))
                result = "Se ha actualizado el producto con éxito.";
            else
                result = "Se ha producido un error, por favor intentelo de nuevo más tarde.";
            return result;
        }

        // delete product
        public string DeleteProductFromMenuService(int id) 
        {
            string result = "";
            if (data.deleteProduct(id))
                result = "Se ha eliminado un producto del menu con éxito";
            else
                result = "Se ha producido un error, por favor intentelo de nuevo más tarde.";
            return result;
        }

        public Catalogue GetProductByIDservice(int id)
        {
            return data.GetProductById(id);
        }
    }
}