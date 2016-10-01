using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using The_Bakehouse.Domain;
using MySql.Data.MySqlClient;

namespace The_Bakehouse.Data
{
    public class BillData:DBConnection
    {
        //get all the bills
        public List<Bill> getAllBill()
        {
            List<Bill> list = new List<Bill>();
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("select * from factura;", Conn);
                Conn.Open();
                MySqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Bill bill = new Bill(reader.GetInt32(0), reader.GetDouble(1), reader.GetString(2));
                    list.Add(bill);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                Conn.Close();
            }
            return list;
        }

        //add a bill
        public bool addBill(Bill bill)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("insert into factura values(@amount, @date);", Conn);
                query.Parameters.AddWithValue("@amount", bill.Amount);
                query.Parameters.AddWithValue("@date", bill.Date);
                Conn.Open();
                query.ExecuteNonQuery();
                flag = true;
            }
            catch(Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                Conn.Close();
            }
            return flag;
        }
        
        //Se puede actualizar la factura?
        //update the bill
        public bool updateBill(Bill bill)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("update factura set Monto = @amount, Fecha = @date;", Conn);
                query.Parameters.AddWithValue("@amount", bill.Amount);
                query.Parameters.AddWithValue("@date", bill.Date);
                Conn.Open();
                query.ExecuteNonQuery();
                flag = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                Conn.Close();
            }
            return flag;
        }

        //delete bill 
        public bool deleteBill(int id)
        {
            bool flag = false;
            try
            {
                ConnectDB();
                MySqlCommand query = new MySqlCommand("delete from factura where idFactura = @id;", Conn);
                query.Parameters.AddWithValue("@id", id);
                Conn.Open();
                query.ExecuteNonQuery();
                flag = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                Conn.Close();
            }
            return flag;
        }
    }
}