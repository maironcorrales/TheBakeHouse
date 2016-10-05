using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using The_Bakehouse.Domain;
using The_Bakehouse.Data;

namespace The_Bakehouse.Services
{
    public class BillBusiness
    {
        BillData data = new BillData();

        //get the bills
        public List<Bill> GetAllTheBillsService() 
        {
            return data.getAllBill();
        }

        // add the bill
        public bool AddBillService(Bill bill) 
        {
            return data.addBill(bill);
        }

        public List<Bill> GetTodaysBillsService(string date) 
        {
            return data.GettodaysBills(date);
        }
    }
}