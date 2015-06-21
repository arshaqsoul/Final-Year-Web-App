using cruxServicesClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cruxServicesWeb
{
    public partial class Registration_Business : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            string proPicFilePath;
            if (ProPicFileUp.HasFile)
            {
                string proFilename = ProPicFileUp.PostedFile.FileName;
                proPicFilePath = "FileSystem/ProfilePic/BusinessLogos/" + proFilename;
                Business.BusinessInsert(TxtUsrNme.Text, TxtConfirmPass.Text, TxtFname.Text, TxtAddress.Text, TxtTele.Text, TxtMobi.Text, TxtDesc.Text, 0, proPicFilePath, "Available");
                Response.Redirect("~/Profiles/BusinessProfile.aspx");
            }
            else
            {
                Business.BusinessInsert(TxtUsrNme.Text, TxtConfirmPass.Text, TxtFname.Text, TxtAddress.Text, TxtTele.Text, TxtMobi.Text, TxtDesc.Text, 0, "", "Available");
                Response.Redirect("~/Profiles/BusinessProfile.aspx");
            }
        }
    }
}