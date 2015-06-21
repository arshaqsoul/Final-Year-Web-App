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
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                TxtCatSearch.Text = Request.QueryString["cat"];
                TxtLocSearch.Text = Request.QueryString["loc"];

                SearchResults.DataSource = SearchFunctions.searchCriteria(Request.QueryString["cat"], Request.QueryString["loc"]);
                SearchResults.DataBind();
                //map
                DataTable dt1 = new DataTable();
                dt1 = SearchFunctions.searchCriteria(Request.QueryString["cat"], Request.QueryString["loc"]);

                string output = "";
                for (int i = 0; i < dt1.Rows.Count; i++)
                {
                    output = output + dt1.Rows[i]["spLocation"].ToString();
                    output += (i < dt1.Rows.Count) ? "," : string.Empty;
                }
                string replaced = "'" + output.Replace(",", "','") + "'";

                HiddenField1.Value = replaced;

                //others
                DataTable dt = new DataTable();
                if (Session["SP"] != null)
                {
                    signUp.Visible = false;
                    logIn.Visible = false;
                    dt = ServiceProvider.ProviderSelect(Session["SP"].ToString());
                    Object propic = dt.Rows[0]["spProPic"];
                    Object proname = dt.Rows[0]["spUsrName"];
                    ImageButton1.Visible = true;
                    LblGoToPro.Visible = true;
                    ImageButton1.ImageUrl = propic.ToString();
                    ImageButton1.AlternateText = proname.ToString();
                }
                else if (Session["BSP"] != null)
                {
                    signUp.Visible = false;
                    logIn.Visible = false;
                    dt = Business.BusinessSelect(Session["BSP"].ToString());
                    Object propic = dt.Rows[0]["bProPLogo"];
                    Object proname = dt.Rows[0]["bUsrName"];
                    ImageButton1.Visible = true;
                    LblGoToPro.Visible = true;
                    ImageButton1.ImageUrl = propic.ToString();
                    ImageButton1.AlternateText = proname.ToString();
                }
                else if (Session["SR"] != null)
                {
                    signUp.Visible = false;
                    logIn.Visible = false;
                    dt = ServiceRequestor.RequestorSelect(Session["SR"].ToString());
                    Object propic = dt.Rows[0]["srProPic"];
                    Object proname = dt.Rows[0]["srUsrName"];
                    ImageButton1.Visible = true;
                    LblGoToPro.Visible = true;
                    ImageButton1.ImageUrl = propic.ToString();
                    ImageButton1.AlternateText = proname.ToString();
                }
                else { }
            
            }
            
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            SearchResults.ItemCommand+= new EventHandler<ListViewCommandEventArgs>(SearchResults_ItemCommand);
            //SearchResults.ItemCommand += new EventHandler<ListViewCommandEventArgs>(SearchResultsSort_ItemCommand);
        }

        //void SearchResultsSort_ItemCommand(object sender, ListViewCommandEventArgs e)
        //{
        //    string text = (String)e.CommandArgument;
        //}
        void SearchResults_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            char delimiterChar = ',';
            string text = (String)e.CommandArgument;
            string[] words = text.Split(delimiterChar);
            string   imageUrl=words[0];
            string  altText = words[1];
            
            if (e.CommandName=="PortFolio")
            {
                ProImg.ImageUrl = imageUrl;
                ProImg.AlternateText = altText;

                PortfolioListView.DataSource = Portfolio.SelectProPortfolio(ProImg.AlternateText);
                PortfolioListView.DataBind();
                ProCommentLV.DataSource=ServiceProvider.ProviderComments(ProImg.AlternateText);
                ProCommentLV.DataBind();
                ProDesLV.DataSource = Portfolio.SelectProDes(ProImg.AlternateText);
                ProDesLV.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal1();", true);
            }

              if (e.CommandName == "Problem")
              {
                  ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                  if (Image2.ImageUrl != "")
                  {
                      Image2.ImageUrl = "";
                      Image2.AlternateText = "";
                  }
                  if (Image3.ImageUrl != "")
                  {
                      Image3.ImageUrl = "";
                      Image3.AlternateText = "";
                  }
                  if (Image4.ImageUrl != "")
                  {
                      Image4.ImageUrl = "";
                      Image4.AlternateText = "";
                  }
                  if (Image1.ImageUrl == "")
                  {
                      Image1.ImageUrl = imageUrl;
                      Image1.AlternateText = altText;
                  }
                  else 
                  {
                      Image1.ImageUrl = "";
                      Image1.ImageUrl = imageUrl;
                      Image1.AlternateText = altText;
                  }
                  

              }

            if (e.CommandName == "AddToList")
            { 
              if (img1.ImageUrl == "")
              {
                  img1.ImageUrl = imageUrl;
                  img1.AlternateText = altText;
              }
              else if (img2.ImageUrl == "")
              {
                  img2.ImageUrl = imageUrl;
                  img2.AlternateText = altText;
              }
              else if (img3.ImageUrl == "")
              {
                  img3.ImageUrl = imageUrl;
                  img3.AlternateText = altText;
              }
              else if (img4.ImageUrl == "")
              {
                  img4.ImageUrl = imageUrl;
                  img4.AlternateText = altText;
              }
              else
              {
                  Response.Write("<script>alert('Sorry, You Have Selected 4 Pros Already, That Is The Maximum Possible. You Can Remove A Selection By Clicking On It.');</script>");
              }
            }
            
        }

        protected void img1_Click(object sender, ImageClickEventArgs e)
        {
            img1.ImageUrl = "";
            img1.AlternateText = "";
            Image1.ImageUrl = "";
            Image1.AlternateText = "";
        }

        protected void img2_Click(object sender, ImageClickEventArgs e)
        {
            img2.ImageUrl = "";
            img2.AlternateText = "";
            Image2.ImageUrl = "";
            Image2.AlternateText = "";
        }

        protected void img3_Click(object sender, ImageClickEventArgs e)
        {
            img3.ImageUrl = "";
            img3.AlternateText = "";
            Image3.ImageUrl = "";
            Image3.AlternateText = "";
        }

        protected void img4_Click(object sender, ImageClickEventArgs e)
        {
            img4.ImageUrl = "";
            img4.AlternateText = "";
            Image4.ImageUrl = "";
            Image4.AlternateText = "";
        }

        protected void BtnProb_Click(object sender, EventArgs e)
        {
           

        }

        protected void BtnListPros_Click(object sender, EventArgs e)
        {
            Image1.ImageUrl = img1.ImageUrl;
            Image1.AlternateText = img1.AlternateText;
            Image2.ImageUrl = img2.ImageUrl;
            Image2.AlternateText = img2.AlternateText;
            Image3.ImageUrl = img3.ImageUrl;
            Image3.AlternateText = img3.AlternateText;
            Image4.ImageUrl = img4.ImageUrl;
            Image4.AlternateText = img4.AlternateText;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }

        protected void btnAddToList_Click(object sender, EventArgs e)
        {
            if (BtnListPros.Enabled == false)
            {
                BtnListPros.Enabled = true;
            }
            
        }

        protected void BtnPort_Click(object sender, EventArgs e)
        {
            
        }

        protected void BtnLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void BtnSendProb_Click(object sender, EventArgs e)
        {
            if (TxtItem.Text == "")
            {
                LblMessage.Text = "Please enter an Item";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else if (TxtItemProb.Text == "")
            {
                LblMessage.Text = "Please enter an Item Problem";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else if (TxtProbDes.Text == "")
            {
                LblMessage.Text = "Please enter a Description";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else if (TxtWhichPart.Text == "")
            {
                LblMessage.Text = "Please enter where the item is";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else if (TxtDur.Text == "")
            {
                LblMessage.Text = "Please enter the Duration";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else if (TxtStartDate.Text == "")
            {
                LblMessage.Text = "Please Select a Start Date";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else if (System.Convert.ToDateTime(TxtStartDate.Text) < System.Convert.ToDateTime(DateTime.Today))
            {
                LblMessage.Text = "Please Select start date after today";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else if (TxtEndDate.Text == "")
            {
                LblMessage.Text = "Please Select an End Date";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else if (System.Convert.ToDateTime(TxtEndDate.Text) < System.Convert.ToDateTime(TxtStartDate.Text))
            {
                LblMessage.Text = "Please Select an end date that is greater than the start date";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else
            {
                LblMessage.Text = "";
            
            //ImageCount
            int count = 0;
            string[] listAdd=new string[4];
            if (Image1.AlternateText != "")
            {
                count = count + 1;
                listAdd[0]=Image1.AlternateText;
            }
            if (Image2.AlternateText != "")
            {
                count = count + 1;
                listAdd[1] = Image2.AlternateText;
            }
            if (Image3.AlternateText != "")
            {
                count = count + 1;
                listAdd[2] = Image3.AlternateText;
            }
            if (Image4.AlternateText != "")
            {
                count = count + 1;
                listAdd[3] = Image4.AlternateText;
            }

            //insert problem if count is 1
            string filePath;
            //1,r,l,p
            if (QouteReq.Checked && Session["SR"] != null && ProbfileUp.HasFile && count==1)
            {
                //Response.Write("1st IF");
                string filename = ProbfileUp.PostedFile.FileName;
                filePath = "FileSystem/ProbPics/" + filename;
                int duration= System.Convert.ToInt32(TxtDur.Text);
                //Response.Write(TxtItem.Text + "Need Quote" + filePath);
                //Response.Write(Image1.AlternateText+ Session["SR"].ToString());
                Hire.ProbInsert(TxtItem.Text, TxtItemProb.Text, TxtWhichPart.Text, duration, "Need Quote", System.Convert.ToDateTime(TxtStartDate.Text), System.Convert.ToDateTime(TxtEndDate.Text), filePath, TxtProbDes.Text);
                Hire.HireInsert(Image1.AlternateText, Session["SR"].ToString(), System.Convert.ToDateTime(DateTime.Today), "Pending");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openMessage();", true);
            }
            //1,r,l,np
            else if (QouteReq.Checked && Session["SR"] != null && ProbfileUp.HasFile==false && count==1)
            {
                //Response.Write("2nd IF");
                int duration = System.Convert.ToInt32(TxtDur.Text);
                //Response.Write(TxtItem.Text + "Need Quote");
                //Response.Write(Image1.AlternateText + Session["SR"].ToString());
                Hire.ProbInsert(TxtItem.Text, TxtItemProb.Text, TxtWhichPart.Text, duration, "Need Quote", System.Convert.ToDateTime(TxtStartDate.Text), System.Convert.ToDateTime(TxtEndDate.Text), "", TxtProbDes.Text);
                Hire.HireInsert(Image1.AlternateText, Session["SR"].ToString(), System.Convert.ToDateTime(DateTime.Today), "Pending");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openMessage();", true);
            }
            //1,nr,l,p
            else if (QouteReq.Checked==false && Session["SR"] != null && ProbfileUp.HasFile && count==1)
            {
                //Response.Write("3rd IF");
                string filename = ProbfileUp.PostedFile.FileName;
                filePath = "FileSystem/ProbPics/" + filename;
                int duration = System.Convert.ToInt32(TxtDur.Text);
                //Response.Write(TxtItem.Text + "No Need Quote" + filePath);
                //Response.Write(Image1.AlternateText + Session["SR"].ToString());
                Hire.ProbInsert(TxtItem.Text, TxtItemProb.Text, TxtWhichPart.Text, duration, "No Need Quote", System.Convert.ToDateTime(TxtStartDate.Text), System.Convert.ToDateTime(TxtEndDate.Text), filePath, TxtProbDes.Text);
                Hire.HireInsert(Image1.AlternateText, Session["SR"].ToString(), System.Convert.ToDateTime(DateTime.Today), "Pending");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openMessage();", true);
            }
            //1,nr,l,np
            else if (QouteReq.Checked == false && Session["SR"] != null && ProbfileUp.HasFile==false && count == 1)
            {
                //Response.Write("4th IF");
                int duration = System.Convert.ToInt32(TxtDur.Text);
                //Response.Write(TxtItem.Text + "No Need Quote");
                //Response.Write(Image1.AlternateText + Session["SR"].ToString());
                Hire.ProbInsert(TxtItem.Text, TxtItemProb.Text, TxtWhichPart.Text, duration, "No Need Quote", System.Convert.ToDateTime(TxtStartDate.Text), System.Convert.ToDateTime(TxtEndDate.Text), "", TxtProbDes.Text);
                Hire.HireInsert(Image1.AlternateText, Session["SR"].ToString(), System.Convert.ToDateTime(DateTime.Today), "Pending");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openMessage();", true);
            }
            //1,r,nl,p
            else if (QouteReq.Checked && Session["SR"] == null && ProbfileUp.HasFile && count == 1)
            {
                //Response.Write("5th IF");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalSign();", true);
            }
            //1,nr,nl,p
            else if (QouteReq.Checked == false && Session["SR"] == null && ProbfileUp.HasFile && count == 1)
            {
                //Response.Write("6th IF");
                if (TxtMobile.Text == "")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalPhone();", true);
                }
                else
                {
                    string filename = ProbfileUp.PostedFile.FileName;
                    filePath = "FileSystem/ProbPics/" + filename;
                    int duration = System.Convert.ToInt32(TxtDur.Text);
                    //Response.Write(TxtItem.Text + "No Need Quote");
                    //Response.Write(Image1.AlternateText + TxtMobile.Text);
                    Hire.ProbInsert(TxtItem.Text, TxtItemProb.Text, TxtWhichPart.Text, duration, "No Need Quote", System.Convert.ToDateTime(TxtStartDate.Text), System.Convert.ToDateTime(TxtEndDate.Text), filePath, TxtProbDes.Text);
                    Hire.HireInsert(Image1.AlternateText, TxtMobile.Text, System.Convert.ToDateTime(DateTime.Today), "Pending");
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openMessage();", true);
                }
            }
            //1,r,nl,np
            else if (QouteReq.Checked && Session["SR"] == null && ProbfileUp.HasFile==false && count == 1)
            {
                //Response.Write("7th IF");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalSign();", true);
            }
            //1,nr,nl,np
            else if (QouteReq.Checked==false && Session["SR"] == null && ProbfileUp.HasFile==false && count == 1)
            {
                //Response.Write("8th IF");
                if (TxtMobile.Text == "")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalPhone();", true);
                }
                else
                {
                    int duration = System.Convert.ToInt32(TxtDur.Text);
                    //Response.Write(TxtItem.Text + "No Need Quote");
                    //Response.Write(Image1.AlternateText + TxtMobile.Text);
                    Hire.ProbInsert(TxtItem.Text, TxtItemProb.Text, TxtWhichPart.Text, duration, "No Need Quote", System.Convert.ToDateTime(TxtStartDate.Text), System.Convert.ToDateTime(TxtEndDate.Text), "", TxtProbDes.Text);
                    Hire.HireInsert(Image1.AlternateText, TxtMobile.Text, System.Convert.ToDateTime(DateTime.Today), "Pending");
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openMessage();", true);
                }
            }

            //insert problem if count > 1
            //2,r,l,p
            else if (QouteReq.Checked && Session["SR"] != null && ProbfileUp.HasFile && count > 1)
            {
                //Response.Write("9th IF");
                string filename = ProbfileUp.PostedFile.FileName;
                filePath = "FileSystem/ProbPics/" + filename;
                int duration = System.Convert.ToInt32(TxtDur.Text);
                //Response.Write(TxtItem.Text + "Need Quote" + filePath);
                //foreach (string element in listAdd)
                //{
                //    Response.Write(element + Session["SR"].ToString());
                //}
                Hire.ProbInsert(TxtItem.Text, TxtItemProb.Text, TxtWhichPart.Text, duration, "Need Quote", System.Convert.ToDateTime(TxtStartDate.Text), System.Convert.ToDateTime(TxtEndDate.Text), filePath, TxtProbDes.Text);
                foreach (string element in listAdd)
                {
                    Hire.HireInsert(element, Session["SR"].ToString(), System.Convert.ToDateTime(DateTime.Today), "Pending");
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openMessage();", true);
            }
            //2,r,l,np
            else if (QouteReq.Checked && Session["SR"] != null && ProbfileUp.HasFile == false && count > 1)
            {
                //Response.Write("10th IF");
                int duration = System.Convert.ToInt32(TxtDur.Text);
                //Response.Write(TxtItem.Text + "Need Quote");
                //foreach (string element in listAdd)
                //{
                //    Response.Write(element + Session["SR"].ToString());
                //}
                Hire.ProbInsert(TxtItem.Text, TxtItemProb.Text, TxtWhichPart.Text, duration, "Need Quote", System.Convert.ToDateTime(TxtStartDate.Text), System.Convert.ToDateTime(TxtEndDate.Text), "", TxtProbDes.Text);
                foreach (string element in listAdd)
                {
                    Hire.HireInsert(element, Session["SR"].ToString(), System.Convert.ToDateTime(DateTime.Today), "Pending");
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openMessage();", true);
            }
            //2,nr,l,p
            else if (QouteReq.Checked == false && Session["SR"] != null && ProbfileUp.HasFile && count > 1)
            {
                //Response.Write("11th IF");
                string filename = ProbfileUp.PostedFile.FileName;
                filePath = "FileSystem/ProbPics/" + filename;
                int duration = System.Convert.ToInt32(TxtDur.Text);
                //Response.Write(TxtItem.Text + "No Need Quote" + filePath);
                //foreach (string element in listAdd)
                //{
                //    Response.Write(element + Session["SR"].ToString());
                //}
                Hire.ProbInsert(TxtItem.Text, TxtItemProb.Text, TxtWhichPart.Text, duration, "No Need Quote", System.Convert.ToDateTime(TxtStartDate.Text), System.Convert.ToDateTime(TxtEndDate.Text), filePath, TxtProbDes.Text);
                foreach (string element in listAdd)
                {
                    Hire.HireInsert(element, Session["SR"].ToString(), System.Convert.ToDateTime(DateTime.Today), "Pending");
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openMessage();", true);
            }
            //2,nr,l,np
            else if (QouteReq.Checked == false && Session["SR"] != null && ProbfileUp.HasFile == false && count > 1)
            {
                //Response.Write("12th IF");
                int duration = System.Convert.ToInt32(TxtDur.Text);
                //Response.Write(TxtItem.Text + "No Need Quote" + "");
                //foreach (string element in listAdd)
                //{
                //    Response.Write(element + Session["SR"].ToString());
                //}
                Hire.ProbInsert(TxtItem.Text, TxtItemProb.Text, TxtWhichPart.Text, duration, "No Need Quote", System.Convert.ToDateTime(TxtStartDate.Text), System.Convert.ToDateTime(TxtEndDate.Text), "", TxtProbDes.Text);
                foreach (string element in listAdd)
                {
                    Hire.HireInsert(element, Session["SR"].ToString(), System.Convert.ToDateTime(DateTime.Today), "Pending");
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openMessage();", true);
            }
            //2,r,nl,p
            else if (QouteReq.Checked && Session["SR"] == null && ProbfileUp.HasFile && count > 1)
            {
                //Response.Write("13th IF");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalSign();", true);
            }
            //2,nr,nl,p
            else if (QouteReq.Checked == false && Session["SR"] == null && ProbfileUp.HasFile && count > 1)
            {
                //Response.Write("14th IF");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalSign();", true);
            }
            //2,r,nl,np
            else if (QouteReq.Checked && Session["SR"] == null && ProbfileUp.HasFile == false && count > 1)
            {
                //Response.Write("15th IF");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalSign();", true);
            }
            //2,nr,nl,np
            else if(QouteReq.Checked == false && Session["SR"] == null && ProbfileUp.HasFile == false && count > 1)
            {
                //Response.Write("16th IF");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalSign();", true);
            }
            else { }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SearchResults.DataSource = SearchFunctions.searchCriteria(TxtCatSearch.Text, TxtLocSearch.Text);
            SearchResults.DataBind();

            DataTable dt1 = new DataTable();
            dt1 = SearchFunctions.searchCriteria(TxtCatSearch.Text, TxtLocSearch.Text);

            string output = "";
            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                output = output + dt1.Rows[i]["spLocation"].ToString();
                output += (i < dt1.Rows.Count) ? "," : string.Empty;
            }
            string replaced = "'" + output.Replace(",", "','") + "'";
            HiddenField1.Value = "";
            HiddenField1.Value = replaced;
        }

        protected void BtnHrFilter_Click(object sender, EventArgs e)
        {
            int hrmin = System.Convert.ToInt32(TxtMinHrPrice.Text);
            int hrmax = System.Convert.ToInt32(TxtMaxHrPrice.Text);
            SearchResults.DataSource = SearchFunctions.searchFilterbyHour(TxtCatSearch.Text, TxtLocSearch.Text, hrmin, hrmax);
            SearchResults.DataBind();
        }

        protected void BtnDayFilter_Click(object sender, EventArgs e)
        {
            int dymin = System.Convert.ToInt32(TxtMinDayPrice.Text);
            int dymax = System.Convert.ToInt32(TxtMaxDayPrice.Text);
            SearchResults.DataSource = SearchFunctions.searchFilterbyDay(TxtCatSearch.Text, TxtLocSearch.Text, dymin, dymax);
            SearchResults.DataBind();
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