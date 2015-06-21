using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cruxServicesClasses
{
    public class ServiceProvider
    {
        //profilePop
        public static DataTable ProviderSelect(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetPro", DBConnection.con);
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

        public static DataTable ProviderComments(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetProComments", DBConnection.con);
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

        public static DataTable ProviderSelectProfileRating(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetProProfileRating", DBConnection.con);
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
        public static DataTable ProviderPortfolio(string spUsrName)
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
        public static DataTable ProviderProblem(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetProviderProblem", DBConnection.con);
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

        public static DataTable ProviderQuoteProblem(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetProviderProblemQuote", DBConnection.con);
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

        public static DataTable ProviderQuoteSent(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetProviderQuoteSent", DBConnection.con);
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

        public static DataTable ProviderQuoteAcc(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetProviderQuoteAccepted", DBConnection.con);
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

        public static DataTable ProviderCompletedProblem(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetProviderProblemCompleted", DBConnection.con);
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
        public static DataTable ProviderInprogressProblem(string spUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetProviderProblemInProgress", DBConnection.con);
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

        static public void ProviderInsert(string spUsrName, string spPass, string spFirstName, string spLastName, string spLocation, string spSpecialty, DateTime spDOB, string spTelephone, string spMobile, string spDescription, decimal spBaynesianRating, decimal spChargeHourly, decimal spChargeDaily, string spProPic, string spStatus)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("InsertNewProvider", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spUsrName", spUsrName);
                cmd.Parameters.Add("@spPass", spPass);
                cmd.Parameters.Add("@spFirstName", spFirstName);
                cmd.Parameters.Add("@spLastName", spLastName);
                cmd.Parameters.Add("@spLocation", spLocation);
                cmd.Parameters.Add("@spSpecialty", spSpecialty);
                cmd.Parameters.Add("@spDOB", spDOB);
                cmd.Parameters.Add("@spTelephone", spTelephone);
                cmd.Parameters.Add("@spMobile", spMobile);
                cmd.Parameters.Add("@spDescription", spDescription);
                cmd.Parameters.Add("@spBaynesianRating", spBaynesianRating);
                cmd.Parameters.Add("@spChargeHourly", spChargeHourly);
                cmd.Parameters.Add("@spChargeDaily", spChargeDaily);
                cmd.Parameters.Add("@spProPic", spProPic);
                cmd.Parameters.Add("@spStatus", spStatus);
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

        static public void ProviderUpdate(string spUsrName, string spFirstName, string spLastName, string spLocation, string spSpecialty, string spTelephone, string spMobile, string spDescription, decimal spChargeHourly, decimal spChargeDaily)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("UpdateProvider", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spUsrName", spUsrName);
                cmd.Parameters.Add("@spFirstName", spFirstName);
                cmd.Parameters.Add("@spLastName", spLastName);
                cmd.Parameters.Add("@spLocation", spLocation);
                cmd.Parameters.Add("@spSpecialty", spSpecialty);
                cmd.Parameters.Add("@spTelephone", spTelephone);
                cmd.Parameters.Add("@spMobile", spMobile);
                cmd.Parameters.Add("@spDescription", spDescription);
                cmd.Parameters.Add("@spChargeHourly", spChargeHourly);
                cmd.Parameters.Add("@spChargeDaily", spChargeDaily);
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

        static public void UpdateBayesianRating(string spUsrName, decimal spBaynesianRating)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("UpdateProBayesianRating", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spUsrName", spUsrName);
                cmd.Parameters.Add("@spBaynesianRating", spBaynesianRating);
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
