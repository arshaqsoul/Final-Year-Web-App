using cruxServicesClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cruxServicesWeb
{
    public partial class SPReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            categoryList.DataSource = Category.categoryPop();
            categoryList.DataTextField = "categry";
            categoryList.DataValueField = "categry";
            categoryList.DataBind();
        }

        protected void categoryList_SelectedIndexChanged(object sender, EventArgs e)
        {
            tagList.DataSource = Category.tagsPop(categoryList.SelectedItem.ToString());
            tagList.DataTextField = "tag";
            tagList.DataValueField = "catID";
            tagList.DataBind();
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            string proPicFilePath;
            if (ProPicFileUp.HasFile)
            {
                string proFilename = ProPicFileUp.PostedFile.FileName;
                proPicFilePath = "FileSystem/ProfilePic/" + proFilename;

                decimal hr = System.Convert.ToDecimal(TxtHrPrice.Text);
                decimal day = System.Convert.ToDecimal(TxtDayPrice.Text);
                ServiceProvider.ProviderInsert(TxtUsrNme.Text, TxtConfirmPass.Text, TxtFname.Text, TxtLname.Text, TxtAddress.Text, categoryList.SelectedValue, System.Convert.ToDateTime(TxtDOB.Text), TxtTele.Text, TxtMobi.Text, TxtDesc.Text, 0, hr, day, proPicFilePath, "Available");
                Availability.AvailabilityInsert(TxtUsrNme.Text);
            }
            else 
            {
                decimal hr = System.Convert.ToDecimal(TxtHrPrice.Text);
                decimal day = System.Convert.ToDecimal(TxtDayPrice.Text);
                ServiceProvider.ProviderInsert(TxtUsrNme.Text, TxtConfirmPass.Text, TxtFname.Text, TxtLname.Text, TxtAddress.Text, categoryList.SelectedValue, System.Convert.ToDateTime(TxtDOB.Text), TxtTele.Text, TxtMobi.Text, TxtDesc.Text, 0, hr, day, "", "Available");
                Availability.AvailabilityInsert(TxtUsrNme.Text);
            }
            foreach (ListItem li in tagList.Items)
            {
                if (li.Selected)
                {
                    int catid = System.Convert.ToInt32(li.Value);
                    //Response.Write(TxtUsrNme.Text + "," + catid);
                    Tag.ProviderTagInsert(TxtUsrNme.Text, catid);
                }
            }

            if (portUpload.HasFiles)
            {
                foreach (HttpPostedFile postedFile in portUpload.PostedFiles)
                {
                        string fileName = postedFile.FileName;
                        string fileType = postedFile.ContentType;
                        string URL = "FileSystem/PortFolio/" + fileName;
                        Portfolio.ProPortfolioInsert(TxtUsrNme.Text, fileName, fileType, URL, System.Convert.ToDateTime(DateTime.Today));
                }
            }
            Response.Redirect("~/Login.aspx");
        }
    }
}