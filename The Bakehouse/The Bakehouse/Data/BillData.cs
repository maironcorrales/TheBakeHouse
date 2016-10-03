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
                MySqlCommand query = new MySqlCommand("SELECT * FROM factura;", Conn);
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
                MySqlCommand query = new MySqlCommand("INSERT INTO factura(Monto, Fecha) VALUES(@amount, @date);", Conn);
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
                MySqlCommand query = new MySqlCommand("UPDATE factura SET Monto = @amount, Fecha = @date WHERE idFactura = @idBill;", Conn);
                query.Parameters.AddWithValue("@amount", bill.Amount);
                query.Parameters.AddWithValue("@date", bill.Date);
                query.Parameters.AddWithValue("@idBill", bill.IdBill);
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
                MySqlCommand query = new MySqlCommand("DELETE FROM factura WHERE idFactura = @id;", Conn);
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