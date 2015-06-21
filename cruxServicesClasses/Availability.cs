using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cruxServicesClasses
{
    public class Availability
    {
        static public void AvailabilityInsert(string spUsrName)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("InsertAvailability", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spUsrName", spUsrName);
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
        static public void AvailabilityUpdate(int hID, string spUsrName, DateTime unStartDate, DateTime unEndDate)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("UpdateAvailability", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@hID", hID);
                cmd.Parameters.Add("@spUsrName", spUsrName);
                cmd.Parameters.Add("@unStartDate", unStartDate);
                cmd.Parameters.Add("@unEndDate", unEndDate);
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
