﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace The_Bakehouse.Domain
{
    public class Bill
    {
        private int idBill;
        private double amount;
        private string date;       

        //Constructor
        public Bill(int idBill, double amount, string date)
        {
            this.idBill = idBill;
            this.amount = amount;
            this.date = date;
        }

        //Constructor 
        public Bill(double amount, string date)
        {
            this.amount = amount;
            this.date = date;
        }

        //Getters and Setters
        public int IdBill
        {
            get { return idBill; }
            set { idBill = value; }
        }

        public double Amount
        {
            get { return amount; }
            set { amount = value; }
        }

        public string Date
        {
            get { return date; }
            set { date = value; }
        }
    }
}