using cruxServicesClasses;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cruxServicesWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            int v = new int();
            v = LoginAll.AuthUsers(TxtUserName.Text, TxtPassword.Text);

            if (v == -1)
            {
                LblLog.Text = "Please enter Username and Password";
            }
            else if (v == 1)
            {
                Session["SP"] = TxtUserName.Text;
                Response.Redirect("Profiles/SPProfile.aspx");
            }
            else if (v == 2)
            {
                Session["BSP"] = TxtUserName.Text;
                Response.Redirect("Profiles/BusinessProfile.aspx");
            }
            else if (v == 3)
            {
                Session["SR"] = TxtUserName.Text;
                Response.Redirect("Profiles/RequestorProfile.aspx");
            }
            else
            {
                LblLog.Text = "Wrong Username and/or Password, Try again!!";
            }
        }

        }
    }
