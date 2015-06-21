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
    public partial class SPProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                
                if (Session["SP"] != null)
                {
                    DataTable dt = new DataTable();
                    dt = ServiceProvider.ProviderSelect(Session["SP"].ToString());
                    Object propic = dt.Rows[0]["spProPic"];
                    Object profname = dt.Rows[0]["spFirstName"];
                    Object prolname = dt.Rows[0]["spLastName"];
                    Object proloc = dt.Rows[0]["spLocation"];
                    Object proSpec = dt.Rows[0]["spSpecialty"];
                    Object proDob = dt.Rows[0]["spDOB"];
                    Object proTele = dt.Rows[0]["spTelephone"];
                    Object proMob = dt.Rows[0]["spMobile"];
                    Object proDes = dt.Rows[0]["spDescription"];
                    Object proHr = dt.Rows[0]["spChargeHourly"];
                    Object proDay = dt.Rows[0]["spChargeDaily"];
                    Object proStatus = dt.Rows[0]["spStatus"];
                    Object proBay = dt.Rows[0]["spBaynesianRating"];

                    DataTable dt1 = new DataTable();
                    dt1 = ServiceProvider.ProviderSelectProfileRating(Session["SP"].ToString());
                    Object time = dt1.Rows[0][0];
                    Object cost = dt1.Rows[0][1];
                    Object qof = dt1.Rows[0][2];
                    Object rof = dt1.Rows[0][3];
                    Object pr = dt1.Rows[0][4];
                    ProIcon.ImageUrl = "../" + propic.ToString();
                    ProIcon1.ImageUrl = "../" + propic.ToString();
                    NamePro.Text = profname.ToString() + prolname.ToString();
                    //dash
                    LblHours.Text = proHr.ToString();
                    LblDay.Text = proDay.ToString();
                    LblBay.Text = proBay.ToString();
                    LblTime.Text = time.ToString() + "/5";
                    LblCost.Text = cost.ToString() + "/5";
                    LblQOW.Text = qof.ToString() + "/5";
                    LblROF.Text = rof.ToString() + "/5";
                    LblPR.Text = pr.ToString() + "/5";
                    //info
                    TxtFName.Text = profname.ToString();
                    TxtLName.Text = prolname.ToString();
                    ProDes.Text = proDes.ToString();
                    TxtAdd.Text = proloc.ToString();
                    TxtTele.Text = proTele.ToString();
                    TxtMobile.Text = proMob.ToString();
                    TxtSpecialty.Text = proSpec.ToString();
                    TxtPriceHr.Text = proHr.ToString();
                    TxtPriceDay.Text = proDay.ToString();
                    //portfolio
                    PortFolioLV.DataSource = ServiceProvider.ProviderPortfolio(Session["SP"].ToString());
                    PortFolioLV.DataBind();
                    //quote
                    QuoteProbLV.DataSource = ServiceProvider.ProviderQuoteProblem(Session["SP"].ToString());
                    QuoteProbLV.DataBind();
                    //pending
                    PendingProbNotityRepeater.DataSource = ServiceProvider.ProviderProblem(Session["SP"].ToString());
                    PendingProbNotityRepeater.DataBind();
                    pendingHireLV.DataSource = ServiceProvider.ProviderProblem(Session["SP"].ToString());
                    pendingHireLV.DataBind();
                    //inprogress
                    InprogHireLV.DataSource = ServiceProvider.ProviderInprogressProblem(Session["SP"].ToString());
                    InprogHireLV.DataBind();
                    //completed
                    CompletedHireLV.DataSource = ServiceProvider.ProviderCompletedProblem(Session["SP"].ToString());
                    CompletedHireLV.DataBind();
                    //qoutesent
                    SentQuoteLV.DataSource = ServiceProvider.ProviderQuoteSent(Session["SP"].ToString());
                    SentQuoteLV.DataBind();
                    accquoteLV.DataSource = ServiceProvider.ProviderQuoteAcc(Session["SP"].ToString());
                    accquoteLV.DataBind();

                    Hire.UpdateHireStatusCompleted();
                    
                }
                else if (Request.QueryString["spUsrName"] != null)
                {
                    DataTable dt = new DataTable();
                    dt = ServiceProvider.ProviderSelect(Request.QueryString["spUsrName"].ToString());
                    Object propic = dt.Rows[0]["spProPic"];
                    Object profname = dt.Rows[0]["spFirstName"];
                    Object prolname = dt.Rows[0]["spLastName"];
                    Object proloc = dt.Rows[0]["spLocation"];
                    Object proSpec = dt.Rows[0]["spSpecialty"];
                    Object proDob = dt.Rows[0]["spDOB"];
                    Object proTele = dt.Rows[0]["spTelephone"];
                    Object proMob = dt.Rows[0]["spMobile"];
                    Object proDes = dt.Rows[0]["spDescription"];
                    Object proHr = dt.Rows[0]["spChargeHourly"];
                    Object proDay = dt.Rows[0]["spChargeDaily"];
                    Object proStatus = dt.Rows[0]["spStatus"];
                    Object proBay = dt.Rows[0]["spBaynesianRating"];

                    DataTable dt1 = new DataTable();
                    dt1 = ServiceProvider.ProviderSelectProfileRating(Request.QueryString["spUsrName"].ToString());
                    Object time = dt1.Rows[0][0];
                    Object cost = dt1.Rows[0][1];
                    Object qof = dt1.Rows[0][2];
                    Object rof = dt1.Rows[0][3];
                    Object pr = dt1.Rows[0][4];
                    ProIcon.ImageUrl = "../" + propic.ToString();
                    ProIcon1.ImageUrl = "../" + propic.ToString();
                    NamePro.Text = profname.ToString() + prolname.ToString();
                    //dash
                    LblHours.Text = proHr.ToString();
                    LblDay.Text = proDay.ToString();
                    LblBay.Text = proBay.ToString();
                    LblTime.Text = time.ToString() + "/5";
                    LblCost.Text = cost.ToString() + "/5";
                    LblQOW.Text = qof.ToString() + "/5";
                    LblROF.Text = rof.ToString() + "/5";
                    LblPR.Text = pr.ToString() + "/5";
                    //info
                    TxtFName.Text = profname.ToString();
                    TxtLName.Text = prolname.ToString();
                    ProDes.Text = proDes.ToString();
                    TxtAdd.Text = proloc.ToString();
                    TxtTele.Text = proTele.ToString();
                    TxtMobile.Text = proMob.ToString();
                    TxtSpecialty.Text = proSpec.ToString();
                    TxtPriceHr.Text = proHr.ToString();
                    TxtPriceDay.Text = proDay.ToString();
                    //portfolio
                    PortFolioLV.DataSource = ServiceProvider.ProviderPortfolio(Request.QueryString["spUsrName"].ToString());
                    PortFolioLV.DataBind();
                    //quote
                    QuoteProbLV.DataSource = ServiceProvider.ProviderQuoteProblem(Request.QueryString["spUsrName"].ToString());
                    QuoteProbLV.DataBind();
                    //pending
                    PendingProbNotityRepeater.DataSource = ServiceProvider.ProviderProblem(Request.QueryString["spUsrName"].ToString());
                    PendingProbNotityRepeater.DataBind();
                    pendingHireLV.DataSource = ServiceProvider.ProviderProblem(Request.QueryString["spUsrName"].ToString());
                    pendingHireLV.DataBind();
                    //inprogress
                    InprogHireLV.DataSource = ServiceProvider.ProviderInprogressProblem(Request.QueryString["spUsrName"].ToString());
                    InprogHireLV.DataBind();
                    //completed
                    CompletedHireLV.DataSource = ServiceProvider.ProviderCompletedProblem(Request.QueryString["spUsrName"].ToString());
                    CompletedHireLV.DataBind();
                    //qoutesent
                    SentQuoteLV.DataSource = ServiceProvider.ProviderQuoteSent(Request.QueryString["spUsrName"].ToString());
                    SentQuoteLV.DataBind();
                    accquoteLV.DataSource = ServiceProvider.ProviderQuoteAcc(Request.QueryString["spUsrName"].ToString());
                    accquoteLV.DataBind();

                    Hire.UpdateHireStatusCompleted();
                }
                else 
                {
                    Response.Redirect("~/Login.aspx");
                }
                
            }
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            pendingHireLV.ItemCommand += new EventHandler<ListViewCommandEventArgs>(pendingHireLV_ItemCommand);
            QuoteProbLV.ItemCommand += new EventHandler<ListViewCommandEventArgs>(QuoteProbLV_ItemCommand);
            accquoteLV.ItemCommand += new EventHandler<ListViewCommandEventArgs>(accquoteLV_ItemCommand);
        }

        void pendingHireLV_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            char delimiterChar = ',';
            string text = (String)e.CommandArgument;
            string[] words = text.Split(delimiterChar);
            string startDt=words[0];
            string endDt = words[1];
            string quote = words[2];
            string srName = words[3];
            string hID = words[4];
            
            if (e.CommandName=="Hire")
            {
                LblsDate.Text = startDt;
                LbleDate.Text = endDt;
                LblsrName.Text = srName;
                TxthID.Text = hID;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openHireAccept();", true);
            }
         }

        void accquoteLV_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

            char delimiterChar = ',';
            string text = (String)e.CommandArgument;
            string[] words = text.Split(delimiterChar);
            string startDt = words[0];
            string endDt = words[1];
            string quote = words[2];
            string srName = words[3];
            string hID = words[4];

            if (e.CommandName == "Hire")
            {
                LblsDate.Text = startDt;
                LbleDate.Text = endDt;
                LblsrName.Text = srName;
                TxthID.Text = hID;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openHireAccept();", true);
            }
        }

        void QuoteProbLV_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            char delimiterChar = ',';
            string text = (String)e.CommandArgument;
            string[] words = text.Split(delimiterChar);
            string srUsr = words[0];
            string hid = words[1];

            if (e.CommandName == "Quote")
            {
                Response.Redirect("~/Quotation.aspx?hid=" + hid + "&sr=" + srUsr);
            }
        }

        protected void BtnConfirm_Click(object sender, EventArgs e)
        {
            if (TxtStartDate.Text == "")
            {
                LblMessage.Text = "Please Select a Start Date";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openHireAccept();", true);
            }
            else if (System.Convert.ToDateTime(TxtStartDate.Text) < System.Convert.ToDateTime(LblsDate.Text))
            {
                LblMessage.Text = "Please Select start date after"+LblsDate.Text;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openHireAccept();", true);
            }
            else if (TxtEndDate.Text == "")
            {
                LblMessage.Text = "Please Select an End Date";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openHireAccept();", true);
            }
            else if (System.Convert.ToDateTime(TxtEndDate.Text) > System.Convert.ToDateTime(LbleDate.Text))
            {
                LblMessage.Text = "Please Select an end date that is less than"+LbleDate.Text;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openHireAccept();", true);
            }
            else
            {
                int hid = System.Convert.ToInt32(TxthID.Text);
                Availability.AvailabilityUpdate(hid, Session["SP"].ToString(), System.Convert.ToDateTime(TxtStartDate.Text), System.Convert.ToDateTime(TxtEndDate.Text));
                Hire.UpdateHireStatusInProgress(hid);
            }
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session["SP"] = null;
            Response.Redirect("../Default.aspx");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            decimal hr=System.Convert.ToDecimal(TxtPriceHr.Text);
            decimal dy=System.Convert.ToDecimal(TxtPriceDay.Text);
            ServiceProvider.ProviderUpdate(Session["SP"].ToString(), TxtFName.Text, TxtLName.Text, TxtAdd.Text, TxtSpecialty.Text, TxtTele.Text, TxtMobile.Text, ProDes.Text, hr, dy);
        }
    }
}