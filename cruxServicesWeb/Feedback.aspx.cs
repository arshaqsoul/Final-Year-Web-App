using cruxServicesClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cruxServicesWeb
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["hid"]=="")
            {
                Response.Redirect("Login.aspx");
            }
            Label1.Text = Request.QueryString["sp"].ToString();
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            int total25 = 0;
            int total100 = 0;
            int a = System.Convert.ToInt32(input1.Text);
            int b = System.Convert.ToInt32(input2.Text);
            int c = System.Convert.ToInt32(input3.Text);
            int d = System.Convert.ToInt32(input4.Text);
            int ef = System.Convert.ToInt32(input5.Text);

            total25 = a + b + c + d + ef;
            total100 = total25 * 4;

            BayesianRating.InsertRating(System.Convert.ToInt32(Request.QueryString["hid"]), System.Convert.ToDateTime(DateTime.Today), a, b, c, d, ef, total25, total100, Txtcmmt.Text);
            BayesianRating.UpdateHireStatus((System.Convert.ToInt32(Request.QueryString["hid"])));
            //Response.Write(a + "<br />" + b + "<br />" + c + "<br />" + d + "<br />" + ef + "<br />" + total25 + "<br />" + total100);

            //Bayesian Rating

            int NP = BayesianRating.TotalNumOfRatedProviders(); //total sps
            int NV = BayesianRating.TotalNumOfVotes(); //total number of votes
            int TS = BayesianRating.TotalRatingScore100(); //total score 100 all sps
            int SPR = BayesianRating.TotalSPRating(Request.QueryString["sp"].ToString()); //the relevant sp's total Rating value
            int SPV = BayesianRating.TotalSPVotes(Request.QueryString["sp"].ToString()); //the relevant sp's total number of votes
            double ANV = NV / NP; //average number of votes/sp
            double AR = TS / NP; //average rating/sp
            double BayRating = ((ANV * AR) + (SPV * SPR)) / (ANV + SPV);

            //Response.Write(NP + "<br />" + NV + "<br />" + TS + "<br />" + SPR + "<br />" + SPV + "<br />" + ANV + "<br />" + AR + "<br />" + BayRating);
            ServiceProvider.UpdateBayesianRating(Request.QueryString["sp"], System.Convert.ToDecimal(BayRating));
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openMessage();", true);
        }

        protected void BtnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profiles/RequestorProfile.aspx");
        }
    }
}