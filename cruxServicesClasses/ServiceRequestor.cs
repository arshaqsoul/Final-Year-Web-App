using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cruxServicesClasses
{
    public class ServiceRequestor
    {
        public static DataTable RequestorSelect(string srUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetRequestor", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@srUsrName", srUsrName);
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
        public static DataTable RequestorProblem(string srUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetRequestorProblem", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@srUsrName", srUsrName);
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

        public static DataTable RequestorCompletedProblem(string srUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetRequestorProblemCompleted", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@srUsrName", srUsrName);
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

        public static DataTable RequestorInprogressVisitHire(string srUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetRequestorProblemInprogress", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@srUsrName", srUsrName);
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

        public static DataTable RequestorRatedProblem(string srUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetRequestorProblemRated", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@srUsrName", srUsrName);
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

        public static DataTable RequestorQuoteSent(string srUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetRequestorQuoteSent", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@srUsrName", srUsrName);
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

        public static DataTable RequestorQuoteAccept(string srUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetRequestorQuoteAccepted", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@srUsrName", srUsrName);
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

        public static DataTable RequestorQuoteRejected(string srUsrName)
        {
            DataTable ds = new DataTable();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("GetRequestorQuoteRejected", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@srUsrName", srUsrName);
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

        static public void RequestorInsert( string srUsrName, string srPass, string srFirstName, string srLastName, DateTime srDOB, string srLocation, string srTelephone, string srMobile, string srProPic)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("InsertNewRequestor", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@srUsrName", srUsrName);
                cmd.Parameters.Add("@srPass", srPass);
                cmd.Parameters.Add("@srFirstName", srFirstName);
                cmd.Parameters.Add("@srLastName", srLastName);
                cmd.Parameters.Add("@srDOB", srDOB);
                cmd.Parameters.Add("@srLocation", srLocation);
                cmd.Parameters.Add("@srTelephone", srTelephone);
                cmd.Parameters.Add("@srMobile", srMobile);
                cmd.Parameters.Add("@srProPic", srProPic);
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

        static public void RequestorUpdate(string srUsrName, string srFirstName, string srLastName, string srLocation, string srTelephone, string srMobile)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmdUpdate = new SqlCommand("UpdateRequestor", DBConnection.con);
                cmdUpdate.CommandType = CommandType.StoredProcedure;
                cmdUpdate.Parameters.Add("@srUsrName", srUsrName);
                cmdUpdate.Parameters.Add("@srFirstName", srFirstName);
                cmdUpdate.Parameters.Add("@srLastName", srLastName);
                cmdUpdate.Parameters.Add("@srLocation", srLocation);
                cmdUpdate.Parameters.Add("@srTelephone", srTelephone);
                cmdUpdate.Parameters.Add("@srMobile", srMobile);
                cmdUpdate.ExecuteNonQuery();
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
