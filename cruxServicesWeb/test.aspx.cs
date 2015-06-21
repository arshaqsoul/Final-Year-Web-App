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
    public partial class test : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = SearchFunctions.searchCriteria(Request.QueryString["cat"], Request.QueryString["loc"]);

            string output="";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                output = output + dt.Rows[i]["spLocation"].ToString();
                output += (i < dt.Rows.Count) ? "," : string.Empty;
            }
            string replaced = "'" + output.Replace(",", "','") + "'";
            Response.Write(replaced);

            HiddenField1.Value = replaced;
        }
    }
}