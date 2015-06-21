using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cruxServicesClasses
{
    public class Portfolio
    {
        static public void ProPortfolioInsert(string spUsrName, string pffilename, string pffiletype, string fileURL, DateTime dateUpdated)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("InsertProPortfolio", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spUsrName", spUsrName);
                cmd.Parameters.Add("@pffilename", pffilename);
                cmd.Parameters.Add("@pffiletype", pffiletype);
                cmd.Parameters.Add("@fileURL", fileURL);
                cmd.Parameters.Add("@dateUpdated", dateUpdated);
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

        public static DataTable SelectProPortfolio(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetProPortfolio", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spUsrName", spUsrName);
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
        public static DataTable SelectProDes(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetProDes", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spUsrName", spUsrName);
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
    }
}
