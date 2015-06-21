using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cruxServicesClasses
{
    public class Quote
    {
        public static DataTable QuoteMaterialSelect(int quoteID)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetQuoteMaterial", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@quoteID", quoteID);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
            }
            catch (SqlException exception)
            {
            }
            finally
            {
                DBConnection.con.Close();
            }
            return ds;
        }
        static public void QuoteInsert(int hID, decimal quoteValue, string quoteDesc, DateTime quoteDate, string quoteStatus)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("InsertQuote", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@hID", hID);
                cmd.Parameters.Add("@quoteValue", quoteValue);
                cmd.Parameters.Add("@quoteDesc", quoteDesc);
                cmd.Parameters.Add("@quoteDate", quoteDate);
                cmd.Parameters.Add("@quoteStatus", quoteStatus);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException exception)
            {
                //MessageBox.Show(exception.ToString());
            }
            finally
            {
                DBConnection.con.Close();
            }

        }

        static public void QuoteMaterialInsert(string materialDes, int unitPrice, int qty,  int materialTol)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("InsertQuoteMaterial", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@materialDes", materialDes);
                cmd.Parameters.Add("@unitPrice", unitPrice);
                cmd.Parameters.Add("@qty", qty);
                cmd.Parameters.Add("@materialTol", materialTol);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException exception)
            {
                //MessageBox.Show(exception.ToString());
            }
            finally
            {
                DBConnection.con.Close();
            }

        }
        static public void UpdateHireSentQuoteStatus(int hID)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("UpdateQouteStatusSent", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@hID", hID);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException exception)
            {
                //MessageBox.Show(exception.ToString());
            }
            finally
            {
                DBConnection.con.Close();
            }
        }

        static public void UpdateHireSentQuoteMissed(int hID)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("UpdateQouteStatusMissed", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@hID", hID);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException exception)
            {
                //MessageBox.Show(exception.ToString());
            }
            finally
            {
                DBConnection.con.Close();
            }
        }

        static public void UpdateHireSentQuoteAccepted(int hID, int pID)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("UpdateQouteStatusAccepted", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@hID", hID);
                cmd.Parameters.Add("@pID", pID);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException exception)
            {
                //MessageBox.Show(exception.ToString());
            }
            finally
            {
                DBConnection.con.Close();
            }
        }
    }
}
