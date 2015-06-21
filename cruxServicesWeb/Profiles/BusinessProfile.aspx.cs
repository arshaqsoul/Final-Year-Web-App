using cruxServicesClasses;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cruxServicesWeb.Profiles
{
    public partial class BusinessProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataTable dt = new DataTable();
                if (Session["BSP"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    dt = Business.BusinessSelect(Session["BSP"].ToString());
                    Object propic = dt.Rows[0]["bProPLogo"];
                    Object profname = dt.Rows[0]["bName"];
                    Object proloc = dt.Rows[0]["bLocation"];
                    Object proTele = dt.Rows[0]["bTelephone"];
                    Object proMob = dt.Rows[0]["bMobile"];
                    Object proDes = dt.Rows[0]["bDescription"];
                    Object proStatus = dt.Rows[0]["bStatus"];
                    ProIcon.ImageUrl = "../" + propic.ToString();
                    ProIcon1.ImageUrl = "../" + propic.ToString();
                    NamePro.Text = profname.ToString();
                    //dash
                    DataTable dt1 = new DataTable();
                    dt1 = Business.BusinessSelectProfileRating(Session["BSP"].ToString());
                    Object time = dt1.Rows[0][0];
                    Object cost = dt1.Rows[0][1];
                    Object qof = dt1.Rows[0][2];
                    Object rof = dt1.Rows[0][3];
                    Object pr = dt1.Rows[0][4];
                    LblTime.Text = time.ToString() + "/5";
                    LblCost.Text = cost.ToString() + "/5";
                    LblQOW.Text = qof.ToString() + "/5";
                    LblROF.Text = rof.ToString() + "/5";
                    LblPR.Text = pr.ToString() + "/5";
                    //info
                    TxtFName.Text = profname.ToString();
                    ProDes.Text = proDes.ToString();
                    TxtAdd.Text = proloc.ToString();
                    TxtTele.Text = proTele.ToString();
                    TxtMobile.Text = proMob.ToString();
                    //employeelist
                }
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            Business.BusinessUpdate(Session["BSP"].ToString(), TxtFName.Text, TxtAdd.Text, TxtTele.Text, TxtMobile.Text, ProDes.Text);
        }
        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session["BSP"] = null;
            Response.Redirect("../Default.aspx");
        }
    }
}