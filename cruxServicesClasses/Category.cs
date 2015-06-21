using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace cruxServicesClasses
{
    public class Category
    {
        public static DataTable categoryPop()
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("CategorySelect", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
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

        public static DataTable tagsPop(string categry)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("Tags", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@categry", categry);
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