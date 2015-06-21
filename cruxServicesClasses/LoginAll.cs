using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace cruxServicesClasses
{
    public class LoginAll
    {
        
        static public int AuthUsers(string uname, string pass)
        {
            int r = new int();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("LoginAll", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@uname", uname);
                cmd.Parameters.Add("@pass", pass);
                SqlParameter p1 = new SqlParameter("Return", SqlDbType.Int);
                p1.Direction = ParameterDirection.ReturnValue;
                cmd.Parameters.Add(p1);
                cmd.ExecuteNonQuery();
                r = Convert.ToInt32(p1.Value);
            }
            catch (SqlException exception)
            {
                //MessageBox.Show(exception.ToString());
            }
            finally
            {
                DBConnection.con.Close();
            }
            return r;
        }
    }
}