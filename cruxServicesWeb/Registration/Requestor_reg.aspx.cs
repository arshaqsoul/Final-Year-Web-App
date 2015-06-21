using cruxServicesClasses;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cruxServicesWeb.Registration
{
    public partial class Requestor_reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            string filePath;
            if (ProPicFileUp.HasFile)
            {
                try
                {
                    string filename = ProPicFileUp.PostedFile.FileName;
                    filePath = "FileSystem/ProfilePic/" + filename;
                    ServiceRequestor.RequestorInsert(TxtUsrNme.Text, TxtConfirmPass.Text, TxtFname.Text, TxtLname.Text, System.Convert.ToDateTime(TxtDOB.Text), TxtAddress.Text, TxtTele.Text, TxtMobi.Text, filePath);
                    Response.Redirect("~/Profiles/SPProfile.aspx");
                }
                catch (Exception ex)
                {
                }
            }
            else
            {
                ServiceRequestor.RequestorInsert(TxtUsrNme.Text, TxtConfirmPass.Text, TxtFname.Text, TxtLname.Text, System.Convert.ToDateTime(TxtDOB.Text), TxtAddress.Text, TxtTele.Text, TxtMobi.Text, "");
                Response.Redirect("~/Profiles/SPProfile.aspx");
            }
        }
    }
}