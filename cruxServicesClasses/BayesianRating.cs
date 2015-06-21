using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cruxServicesClasses
{
    public class BayesianRating
    {
        static public void InsertRating(int hID, DateTime ratedDate, int timeR, int costR, int qualityOfWR, int relofFinR, int probResR, int totalScore25, int totalScore100, string comment)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("RatingInsert", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@hID", hID);
                cmd.Parameters.Add("@ratedDate", ratedDate);
                cmd.Parameters.Add("@timeR", timeR);
                cmd.Parameters.Add("@costR", costR);
                cmd.Parameters.Add("@qualityOfWR", qualityOfWR);
                cmd.Parameters.Add("@relofFinR", relofFinR);
                cmd.Parameters.Add("@probResR", probResR);
                cmd.Parameters.Add("@totalScore25", totalScore25);
                cmd.Parameters.Add("@totalScore100", totalScore100);
                cmd.Parameters.Add("@comment", comment);
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
        static public void UpdateHireStatus(int hID)
        {
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("RatingUpdateHireStatus", DBConnection.con);
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

        //Bayesian Rating
        static public int TotalNumOfRatedProviders()
        {
            int SP = new int();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("BayesianTotalNumProvider", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("Return", SqlDbType.Int);
                p1.Direction = ParameterDirection.ReturnValue;
                cmd.Parameters.Add(p1);
                cmd.ExecuteNonQuery();
                SP = Convert.ToInt32(p1.Value);
            }
            catch (SqlException exception)
            {
                //MessageBox.Show(exception.ToString());
            }
            finally
            {
                DBConnection.con.Close();
            }
            return SP;
        }

        static public int TotalNumOfVotes()
        {
            int NV = new int();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("BayesianTotalNumVotes", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("Return", SqlDbType.Int);
                p1.Direction = ParameterDirection.ReturnValue;
                cmd.Parameters.Add(p1);
                cmd.ExecuteNonQuery();
                NV = Convert.ToInt32(p1.Value);
            }
            catch (SqlException exception)
            {
                //MessageBox.Show(exception.ToString());
            }
            finally
            {
                DBConnection.con.Close();
            }
            return NV;
        }

        static public int TotalRatingScore100()
        {
            int TS = new int();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("BayesianTotalScore100", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("Return", SqlDbType.Int);
                p1.Direction = ParameterDirection.ReturnValue;
                cmd.Parameters.Add(p1);
                cmd.ExecuteNonQuery();
                TS = Convert.ToInt32(p1.Value);
            }
            catch (SqlException exception)
            {
                //MessageBox.Show(exception.ToString());
            }
            finally
            {
                DBConnection.con.Close();
            }
            return TS;
        }

        static public int TotalSPRating(string spUsrName)
        {
            int SPR = new int();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("BayesianTotalSPRating", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spUsrName", spUsrName);
                SqlParameter p1 = new SqlParameter("Return", SqlDbType.Int);
                p1.Direction = ParameterDirection.ReturnValue;
                cmd.Parameters.Add(p1);
                cmd.ExecuteNonQuery();
                SPR = Convert.ToInt32(p1.Value);
            }
            catch (SqlException exception)
            {
                //MessageBox.Show(exception.ToString());
            }
            finally
            {
                DBConnection.con.Close();
            }
            return SPR;
        }

        static public int TotalSPVotes(string spUsrName)
        {
            int SPV = new int();
            try
            {
                DBConnection.con.Open();
                SqlCommand cmd = new SqlCommand("BayesianTotalSPVotes", DBConnection.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@spUsrName", spUsrName);
                SqlParameter p1 = new SqlParameter("Return", SqlDbType.Int);
                p1.Direction = ParameterDirection.ReturnValue;
                cmd.Parameters.Add(p1);
                cmd.ExecuteNonQuery();
                SPV = Convert.ToInt32(p1.Value);
            }
            catch (SqlException exception)
            {
                //MessageBox.Show(exception.ToString());
            }
            finally
            {
                DBConnection.con.Close();
            }
            return SPV;
        }
    }
}
