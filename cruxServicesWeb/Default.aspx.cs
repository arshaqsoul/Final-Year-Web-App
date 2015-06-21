using cruxServicesClasses;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cruxServicesWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if (Session["SP"]!=null)
            {
                signUp.Visible = false;
                logIn.Visible = false;
                dt = ServiceProvider.ProviderSelect(Session["SP"].ToString());
                Object propic = dt.Rows[0]["spProPic"];
                Object proname = dt.Rows[0]["spUsrName"];
                //profileLink.Visible = true;
                ImageButton1.Visible = true;
                LblGoToPro.Visible = true;
                ImageButton1.ImageUrl = propic.ToString();
                ImageButton1.AlternateText = proname.ToString();
                
            }
            else if (Session["BSP"]!=null)
            {
                signUp.Visible = false;
                logIn.Visible = false;
                dt = Business.BusinessSelect(Session["BSP"].ToString());
                Object propic = dt.Rows[0]["bProPLogo"];
                Object proname = dt.Rows[0]["bUsrName"];
                //profileLink.Visible = true;
                ImageButton1.Visible = true;
                LblGoToPro.Visible = true;
                ImageButton1.ImageUrl = propic.ToString();
                ImageButton1.AlternateText = proname.ToString();
            }
            else if (Session["SR"]!=null)
            {
                signUp.Visible = false;
                logIn.Visible = false;
                dt = ServiceRequestor.RequestorSelect(Session["SR"].ToString());
                Object propic = dt.Rows[0]["srProPic"];
                Object proname = dt.Rows[0]["srUsrName"];
                //profileLink.Visible = true;
                ImageButton1.Visible = true;
                LblGoToPro.Visible = true;
                ImageButton1.ImageUrl = propic.ToString();
                ImageButton1.AlternateText = proname.ToString();
            }
            else { }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx?cat=" + TxtCatSearch.Text + "&loc=" + TxtLocSearch.Text);
        }

        protected void LblGoToPro_Click(object sender, EventArgs e)
        {
            if (Session["SP"] != null)
            {
                Response.Redirect("Profiles/SPProfile.aspx");
            }
            else if (Session["SR"] != null)
            {
                Response.Redirect("Profiles/RequestorProfile.aspx");
            }
            else if (Session["BSP"] != null)
            {
                Response.Redirect("Profiles/BusinessProfile.aspx");
            }
            else 
            {
               Response.Redirect("Login.aspx");
            }
        }
    }
}