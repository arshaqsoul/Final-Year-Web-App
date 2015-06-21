using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cruxServicesClasses
{
    public class Business
    {

        static public void BusinessInsert(string bUsrName, string bPass, string bName, string bLocation, string bTelephone, string bMobile, string bDescription, decimal bAvgRating, string bProPLogo, string bStatus)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("InsertBusiness", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@bUsrName", bUsrName);
                cmd.Parameters.Add("@bPass", bPass);
                cmd.Parameters.Add("@bName", bName);
                cmd.Parameters.Add("@bLocation", bLocation);
                cmd.Parameters.Add("@bTelephone", bTelephone);
                cmd.Parameters.Add("@bMobile", bMobile);
                cmd.Parameters.Add("@bDescription", bDescription);
                cmd.Parameters.Add("@bAvgRating", bAvgRating);
                cmd.Parameters.Add("@bProPLogo", bProPLogo);
                cmd.Parameters.Add("@bStatus", bStatus);
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

        static public void BusinessUpdate(string bUsrName, string bName, string bLocation, string bTelephone, string bMobile, string bDescription)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("UpdateBusiness", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@bUsrName", bUsrName);
                cmd.Parameters.Add("@bName", bName);
                cmd.Parameters.Add("@bLocation", bLocation);
                cmd.Parameters.Add("@bTelephone", bTelephone);
                cmd.Parameters.Add("@bMobile", bMobile);
                cmd.Parameters.Add("@bDescription", bDescription);
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

        public static DataTable BusinessSelect(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetBusiness", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@bUsrName", spUsrName);
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
        public static DataTable BusinessProSelect(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetBusinessPro", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@bUsrName", spUsrName);
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
        public static DataTable BusinessSelectProfileRating(string bUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetBusinessAvgRating", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@bUsrName", bUsrName);
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
