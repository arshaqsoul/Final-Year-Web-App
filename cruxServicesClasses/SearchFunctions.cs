using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cruxServicesClasses
{
    public class SearchFunctions
    {
        public static DataTable searchCriteria(string spSpecialty, string spLocation)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("Search", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spSpecialty", spSpecialty);
                cmd.Parameters.Add("@spLocation", spLocation);
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

        public static DataTable searchFilterbyHour(string spSpecialty, string spLocation, int spChargeHourlyMin, int spChargeHourlyMax)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("SearchFilterHrPrice", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spSpecialty", spSpecialty);
                cmd.Parameters.Add("@spLocation", spLocation);
                cmd.Parameters.Add("@spChargeHourlyMin", spChargeHourlyMin);
                cmd.Parameters.Add("@spChargeHourlyMax", spChargeHourlyMax);
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

        public static DataTable searchFilterbyDay(string spSpecialty, string spLocation, int spChargeDailyMin, int spChargeDailyMax)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("SearchFilterDayPrice", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spSpecialty", spSpecialty);
                cmd.Parameters.Add("@spLocation", spLocation);
                cmd.Parameters.Add("@spChargeDailyMin", spChargeDailyMin);
                cmd.Parameters.Add("@spChargeDailyMax", spChargeDailyMax);
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
