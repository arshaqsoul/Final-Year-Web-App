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
    public partial class RequestorProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataTable dt = new DataTable();
                if (Session["SR"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    dt = ServiceRequestor.RequestorSelect(Session["SR"].ToString());
                    Object propic = dt.Rows[0]["srProPic"];
                    Object profname = dt.Rows[0]["srFirstName"];
                    Object prolname = dt.Rows[0]["srLastName"];
                    Object proloc = dt.Rows[0]["srLocation"];
                    Object proDob = dt.Rows[0]["srDOB"];
                    Object proTele = dt.Rows[0]["srTelephone"];
                    Object proMob = dt.Rows[0]["srMobile"];
                    ProIcon.ImageUrl = "../" + propic.ToString();
                    ProIcon1.ImageUrl = "../" + propic.ToString();
                    NamePro.Text = profname.ToString() + prolname.ToString();

                    //info
                    TxtFName.Text = profname.ToString();
                    TxtLName.Text = prolname.ToString();
                    TxtAdd.Text = proloc.ToString();
                    TxtTele.Text = proTele.ToString();
                    TxtMobile.Text = proMob.ToString();
                    //pending
                    myProbNotityRepeater.DataSource = ServiceRequestor.RequestorProblem(Session["SR"].ToString());
                    myProbNotityRepeater.DataBind();
                    pendingHireLV.DataSource = ServiceRequestor.RequestorProblem(Session["SR"].ToString());
                    pendingHireLV.DataBind();
                    //rating
                    myRateRepeater.DataSource = ServiceRequestor.RequestorCompletedProblem(Session["SR"].ToString());
                    myRateRepeater.DataBind();
                    CompletedHireLV.DataSource = ServiceRequestor.RequestorCompletedProblem(Session["SR"].ToString());
                    CompletedHireLV.DataBind();
                    //history
                    HireHistoryLV.DataSource = ServiceRequestor.RequestorRatedProblem(Session["SR"].ToString());
                    HireHistoryLV.DataBind();
                    //quote
                    myQuoteRepeater.DataSource = ServiceRequestor.RequestorQuoteSent(Session["SR"].ToString());
                    myQuoteRepeater.DataBind();
                    SentQuoteLV.DataSource = ServiceRequestor.RequestorQuoteSent(Session["SR"].ToString());
                    SentQuoteLV.DataBind();
                    QuoteAccLV.DataSource = ServiceRequestor.RequestorQuoteAccept(Session["SR"].ToString());
                    QuoteAccLV.DataBind();
                    
                    //inprogress
                    myVisitRepeater.DataSource = ServiceRequestor.RequestorInprogressVisitHire(Session["SR"].ToString());
                    myVisitRepeater.DataBind();
                    inProgressLV.DataSource = ServiceRequestor.RequestorInprogressVisitHire(Session["SR"].ToString());
                    inProgressLV.DataBind();

                    Hire.UpdateHireStatusCompleted();
                }
            }
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            CompletedHireLV.ItemCommand += new EventHandler<ListViewCommandEventArgs>(CompletedHireLV_ItemCommand);
            SentQuoteLV.ItemCommand += new EventHandler<ListViewCommandEventArgs>(SentQuoteLV_ItemCommand);
        }

        void CompletedHireLV_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            char delimiterChar = ',';
            string text = (String)e.CommandArgument;
            string[] words = text.Split(delimiterChar);
            string hid = words[0];
            string sp = words[1];

            if (e.CommandName == "Feedback")
            {
                Response.Redirect("~/Feedback.aspx?hid="+hid+"&sp="+sp);
            }
        }
        void SentQuoteLV_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            char delimiterChar = ',';
            string text = (String)e.CommandArgument;
            string[] words = text.Split(delimiterChar);
            string spUsr = words[0];
            string hid = words[1];
            string qid = words[2];
            string pid = words[3];

            if (e.CommandName == "Quote")
            {
                Response.Redirect("~/Quotation.aspx?hid=" + hid + "&sp=" + spUsr + "&qid=" + qid + "&pid=" + pid);
            }
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session["SR"] = null;
            Response.Redirect("../Default.aspx");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            ServiceRequestor.RequestorUpdate(Session["SR"].ToString(), TxtFName.Text, TxtLName.Text, TxtAdd.Text, TxtTele.Text, TxtMobile.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Search.aspx");
        }

    }
}