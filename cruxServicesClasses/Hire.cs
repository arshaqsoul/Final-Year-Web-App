using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cruxServicesClasses
{
    public class Hire
    {
        static public void ProbInsert(string itemName, string itemProb, string whichPartofTheHouse, int durationOfProbExistence, string quoteRequirement, DateTime toStartDate, DateTime toCompleteDate, string probFileUrl, string probDescription)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("InsertProblem", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@itemName", itemName);
                cmd.Parameters.Add("@itemProb", itemProb);
                cmd.Parameters.Add("@whichPartofTheHouse", whichPartofTheHouse);
                cmd.Parameters.Add("@durationOfProbExistence", durationOfProbExistence);
                cmd.Parameters.Add("@quoteRequirement", quoteRequirement);
                cmd.Parameters.Add("@toStartDate", toStartDate);
                cmd.Parameters.Add("@toCompleteDate", toCompleteDate);
                cmd.Parameters.Add("@probFileUrl", probFileUrl);
                cmd.Parameters.Add("@probDescription", probDescription);
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

        static public void HireInsert(string spUsrName, string srUsrName, DateTime dateOfRequest, string hStatus)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("InsertHire", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spUsrName", spUsrName);
                cmd.Parameters.Add("@srUsrName", srUsrName);
                cmd.Parameters.Add("@dateOfRequest", dateOfRequest);
                cmd.Parameters.Add("@hStatus", hStatus);
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

        static public void UpdateHireStatusInProgress(int hID)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("InProgressUpdateHireStatus", DBConnection.con);
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

        static public void UpdateHireStatusCompleted()
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("UpdateHireStatusCompleted", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
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
