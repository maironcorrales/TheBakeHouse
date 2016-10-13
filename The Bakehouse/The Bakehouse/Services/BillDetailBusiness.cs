using System.Collections.Generic;
using The_Bakehouse.Domain;
using The_Bakehouse.Data;

namespace The_Bakehouse.Services
{

    public class BillDetailBusiness
    {
        BillHasMenuData data = new BillHasMenuData();

        public List<bill_has_menu> GetallDetailsOfTheBill(int BillOrder)
        {
            return data.getOrderDetail(BillOrder);
        }
    }
}