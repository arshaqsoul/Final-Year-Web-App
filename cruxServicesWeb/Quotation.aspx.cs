using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using cruxServicesClasses;
using System.Data;

namespace cruxServicesWeb
{
    public partial class Quotation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            LblDate.Text = System.Convert.ToString(DateTime.Today);
            if (Session["SP"]!=null)
            {
                //btn
                BtnAccept.Visible = false;
                BtnReject.Visible = false;
                BtnCancel.Visible = false;
                //txt
                //TotalPrice
                TxtTP.Enabled = false;
                TxtTP1.Enabled = false;
                TxtTP2.Enabled = false;
                TxtTP3.Enabled = false;
                TxtTP4.Enabled = false;
                TxtTP5.Enabled = false;
                TxtTP6.Enabled = false;
                TxtTP7.Enabled = false;
                TxtTP8.Enabled = false;
                TxtTP9.Enabled = false;
                //total
                TxtTotal.Enabled = false;
                LblPro.Text = Session["SP"].ToString();
                LblReq.Text = Request.QueryString["sr"].ToString();
            }
            else if (Session["SR"] != null)
            {
                //btn
                BtnRst.Visible = false;
                BtnCcl.Visible = false;
                BtnSnd.Visible = false;
                //material
                TxtM.Enabled = false;
                TxtM1.Enabled = false;
                TxtM2.Enabled = false;
                TxtM3.Enabled = false;
                TxtM4.Enabled = false;
                TxtM5.Enabled = false;
                TxtM6.Enabled = false;
                TxtM7.Enabled = false;
                TxtM8.Enabled = false;
                TxtM9.Enabled = false;
                //unitprice
                TxtUP.Enabled = false;
                TxtUP1.Enabled = false;
                TxtUP2.Enabled = false;
                TxtUP3.Enabled = false;
                TxtUP4.Enabled = false;
                TxtUP5.Enabled = false;
                TxtUP6.Enabled = false;
                TxtUP7.Enabled = false;
                TxtUP8.Enabled = false;
                TxtUP9.Enabled = false;
                //qty
                TxtQ.Enabled = false;
                TxtQ1.Enabled = false;
                TxtQ2.Enabled = false;
                TxtQ3.Enabled = false;
                TxtQ4.Enabled = false;
                TxtQ5.Enabled = false;
                TxtQ6.Enabled = false;
                TxtQ7.Enabled = false;
                TxtQ8.Enabled = false;
                TxtQ9.Enabled = false;
                //TotalPrice
                TxtTP.Enabled = false;
                TxtTP1.Enabled = false;
                TxtTP2.Enabled = false;
                TxtTP3.Enabled = false;
                TxtTP4.Enabled = false;
                TxtTP5.Enabled = false;
                TxtTP6.Enabled = false;
                TxtTP7.Enabled = false;
                TxtTP8.Enabled = false;
                TxtTP9.Enabled = false;
                //total
                TxtTotal.Enabled = false;
                BntCalc.Visible = false;
                TxtQuoteDesc.Enabled = false;
                //bindingquote
                int qid = System.Convert.ToInt32(Request.QueryString["qid"].ToString());
                dt = Quote.QuoteMaterialSelect(qid);
                LblPro.Text = Request.QueryString["sp"].ToString();
                LblReq.Text = Session["SR"].ToString();
                Object TV = dt.Rows[0]["quoteValue"];
                Object QD = dt.Rows[0]["quoteDesc"];
                Label1.Text = TV.ToString();
                TxtTotal.Text = TV.ToString();
                TxtQuoteDesc.Text = QD.ToString();
                try
                {
                    Object m = dt.Rows[0]["materialDes"];
                    TxtM.Text = m.ToString();
                    Object up = dt.Rows[0]["unitPrice"];
                    TxtUP.Text = up.ToString();
                    Object qty = dt.Rows[0]["qty"];
                    TxtQ.Text = qty.ToString();
                    Object mt = dt.Rows[0]["materialTol"];
                    TxtTP.Text = mt.ToString();
                }
                catch { }

                try
                {
                    Object m = dt.Rows[1]["materialDes"];
                    TxtM1.Text = m.ToString();
                    Object up = dt.Rows[1]["unitPrice"];
                    TxtUP1.Text = up.ToString();
                    Object qty = dt.Rows[1]["qty"];
                    TxtQ1.Text = qty.ToString();
                    Object mt = dt.Rows[1]["materialTol"];
                    TxtTP1.Text = mt.ToString();
                }
                catch { }

                try
                {
                    Object m = dt.Rows[2]["materialDes"];
                    TxtM2.Text = m.ToString();
                    Object up = dt.Rows[2]["unitPrice"];
                    TxtUP2.Text = up.ToString();
                    Object qty = dt.Rows[2]["qty"];
                    TxtQ2.Text = qty.ToString();
                    Object mt = dt.Rows[2]["materialTol"];
                    TxtTP2.Text = mt.ToString();
                }
                catch { }

                try
                {
                    Object m = dt.Rows[3]["materialDes"];
                    TxtM3.Text = m.ToString();
                    Object up = dt.Rows[3]["unitPrice"];
                    TxtUP3.Text = up.ToString();
                    Object qty = dt.Rows[3]["qty"];
                    TxtQ3.Text = qty.ToString();
                    Object mt = dt.Rows[3]["materialTol"];
                    TxtTP3.Text = mt.ToString();
                }
                catch { }

                try
                {
                    Object m = dt.Rows[3]["materialDes"];
                    TxtM3.Text = m.ToString();
                    Object up = dt.Rows[3]["unitPrice"];
                    TxtUP3.Text = up.ToString();
                    Object qty = dt.Rows[3]["qty"];
                    TxtQ3.Text = qty.ToString();
                    Object mt = dt.Rows[3]["materialTol"];
                    TxtTP3.Text = mt.ToString();
                }
                catch { }

                try
                {
                    Object m = dt.Rows[4]["materialDes"];
                    TxtM4.Text = m.ToString();
                    Object up = dt.Rows[4]["unitPrice"];
                    TxtUP4.Text = up.ToString();
                    Object qty = dt.Rows[4]["qty"];
                    TxtQ4.Text = qty.ToString();
                    Object mt = dt.Rows[4]["materialTol"];
                    TxtTP4.Text = mt.ToString();
                }
                catch { }

                try
                {
                    Object m = dt.Rows[5]["materialDes"];
                    TxtM5.Text = m.ToString();
                    Object up = dt.Rows[5]["unitPrice"];
                    TxtUP5.Text = up.ToString();
                    Object qty = dt.Rows[5]["qty"];
                    TxtQ5.Text = qty.ToString();
                    Object mt = dt.Rows[5]["materialTol"];
                    TxtTP5.Text = mt.ToString();
                }
                catch { }

                try
                {
                    Object m = dt.Rows[6]["materialDes"];
                    TxtM6.Text = m.ToString();
                    Object up = dt.Rows[6]["unitPrice"];
                    TxtUP6.Text = up.ToString();
                    Object qty = dt.Rows[6]["qty"];
                    TxtQ6.Text = qty.ToString();
                    Object mt = dt.Rows[6]["materialTol"];
                    TxtTP6.Text = mt.ToString();
                }
                catch { }

                try
                {
                    Object m = dt.Rows[7]["materialDes"];
                    TxtM7.Text = m.ToString();
                    Object up = dt.Rows[7]["unitPrice"];
                    TxtUP7.Text = up.ToString();
                    Object qty = dt.Rows[7]["qty"];
                    TxtQ7.Text = qty.ToString();
                    Object mt = dt.Rows[7]["materialTol"];
                    TxtTP7.Text = mt.ToString();
                }
                catch { }
                
                try
                {
                    Object m = dt.Rows[8]["materialDes"];
                    TxtM8.Text = m.ToString();
                    Object up = dt.Rows[8]["unitPrice"];
                    TxtUP8.Text = up.ToString();
                    Object qty = dt.Rows[8]["qty"];
                    TxtQ8.Text = qty.ToString();
                    Object mt = dt.Rows[8]["materialTol"];
                    TxtTP8.Text = mt.ToString();
                }
                catch { }

                try
                {
                    Object m = dt.Rows[9]["materialDes"];
                    TxtM9.Text = m.ToString();
                    Object up = dt.Rows[9]["unitPrice"];
                    TxtUP9.Text = up.ToString();
                    Object qty = dt.Rows[9]["qty"];
                    TxtQ9.Text = qty.ToString();
                    Object mt = dt.Rows[9]["materialTol"];
                    TxtTP9.Text = mt.ToString();
                }
                catch { }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            

        }

        protected void TxtQ_TextChanged(object sender, EventArgs e)
        {
            int a;
            if (TxtUP.Text == "")
            {
                a = 0;
            }
            else
            { a = System.Convert.ToInt32(TxtUP.Text); }

            int b = System.Convert.ToInt32(TxtQ.Text);
            int c = a * b;
            TxtTP.Text = c.ToString();
            
        }
        protected void TxtQ1_TextChanged(object sender, EventArgs e)
        {
            int a;
            if (TxtUP1.Text == "")
            {
                a = 0;
            }
            else
            { a = System.Convert.ToInt32(TxtUP1.Text); }
            int b = System.Convert.ToInt32(TxtQ1.Text);
            int c = a * b;
            TxtTP1.Text = c.ToString();

        }
        protected void TxtQ2_TextChanged(object sender, EventArgs e)
        {
            int a;
            if (TxtUP2.Text == "")
            {
                a = 0;
            }
            else
            { a = System.Convert.ToInt32(TxtUP2.Text); }
            int b = System.Convert.ToInt32(TxtQ2.Text);
            int c = a * b;
            TxtTP2.Text = c.ToString();
        }
        protected void TxtQ3_TextChanged(object sender, EventArgs e)
        {
            int a;
            if (TxtUP3.Text == "")
            {
                a = 0;
            }
            else
            { a = System.Convert.ToInt32(TxtUP3.Text); }
            int b = System.Convert.ToInt32(TxtQ3.Text);
            int c = a * b;
            TxtTP3.Text = c.ToString();

        }
        protected void TxtQ4_TextChanged(object sender, EventArgs e)
        {
            int a;
            if (TxtUP4.Text == "")
            {
                a = 0;
            }
            else
            { a = System.Convert.ToInt32(TxtUP4.Text); }
            int b = System.Convert.ToInt32(TxtQ4.Text);
            int c = a * b;
            TxtTP4.Text = c.ToString();

        }
        protected void TxtQ5_TextChanged(object sender, EventArgs e)
        {
            int a;
            if (TxtUP5.Text == "")
            {
                a = 0;
            }
            else
            { a = System.Convert.ToInt32(TxtUP5.Text); }
            int b = System.Convert.ToInt32(TxtQ5.Text);
            int c = a * b;
            TxtTP5.Text = c.ToString();

        }
        protected void TxtQ6_TextChanged(object sender, EventArgs e)
        {
            int a;
            if (TxtUP6.Text == "")
            {
                a = 0;
            }
            else
            { a = System.Convert.ToInt32(TxtUP6.Text); }
            int b = System.Convert.ToInt32(TxtQ6.Text);
            int c = a * b;
            TxtTP6.Text = c.ToString();

        }
        protected void TxtQ7_TextChanged(object sender, EventArgs e)
        {
            int a;
            if (TxtUP7.Text == "")
            {
                a = 0;
            }
            else
            { a = System.Convert.ToInt32(TxtUP7.Text); }
            int b = System.Convert.ToInt32(TxtQ7.Text);
            int c = a * b;
            TxtTP7.Text = c.ToString();

        }
        protected void TxtQ8_TextChanged(object sender, EventArgs e)
        {
            int a;
            if (TxtUP8.Text == "")
            {
                a = 0;
            }
            else
            { a = System.Convert.ToInt32(TxtUP8.Text); }
            int b = System.Convert.ToInt32(TxtQ8.Text);
            int c = a * b;
            TxtTP8.Text = c.ToString();

        }
        protected void TxtQ9_TextChanged(object sender, EventArgs e)
        {
            int a;
            if (TxtUP9.Text == "")
            {
                a = 0;
            }
            else
            { a = System.Convert.ToInt32(TxtUP9.Text); }
            int b = System.Convert.ToInt32(TxtQ9.Text);
            int c = a * b;
            TxtTP9.Text = c.ToString();
        }

        protected void TxtTotal_TextChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            TxtTotal.Text = "";
            int a1;
            int a2;
            int a3;
            int a4;
            int a5;
            int a6;
            int a7;
            int a8;
            int a9;
            int a10;

            if (TxtTP.Text == "")
            {
                a1 = 0;
            }
            else { a1 = System.Convert.ToInt32(TxtTP.Text); }

            if (TxtTP1.Text == "")
            {
                a2 = 0;
            }
            else { a2 = System.Convert.ToInt32(TxtTP1.Text); }

            if (TxtTP2.Text == "")
            {
                a3 = 0;
            }
            else { a3 = System.Convert.ToInt32(TxtTP2.Text); }

            if (TxtTP3.Text == "")
            {
                a4 = 0;
            }
            else { a4 = System.Convert.ToInt32(TxtTP3.Text); }

            if (TxtTP4.Text == "")
            {
                a5 = 0;
            }
            else { a5 = System.Convert.ToInt32(TxtTP4.Text); }

            if (TxtTP5.Text == "")
            {
                a6 = 0;
            }
            else { a6 = System.Convert.ToInt32(TxtTP5.Text); }

            if (TxtTP6.Text == "")
            {
                a7 = 0;
            }
            else { a7 = System.Convert.ToInt32(TxtTP6.Text); }

            if (TxtTP7.Text == "")
            {
                a8 = 0;
            }
            else { a8 = System.Convert.ToInt32(TxtTP7.Text); }

            if (TxtTP8.Text == "")
            {
                a9 = 0;
            }
            else { a9 = System.Convert.ToInt32(TxtTP8.Text); }

            if (TxtTP9.Text == "")
            {
                a10 = 0;
            }
            else { a10 = System.Convert.ToInt32(TxtTP9.Text); }

            int tot = a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9 + a10;
            TxtTotal.Text = tot.ToString();
            Label1.Text = "Your Total is Rs."+TxtTotal.Text;
        }

        protected void BtnCcl_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profiles/SPProfile.aspx");
        }

        protected void BtnSnd_Click(object sender, EventArgs e)
        {
            if (TxtTotal.Text != "")
            {
                decimal tot = System.Convert.ToDecimal(TxtTotal.Text);
                int hid = System.Convert.ToInt32(Request.QueryString["hid"]);
                Quote.QuoteInsert(hid, tot, TxtQuoteDesc.Text, System.Convert.ToDateTime(DateTime.Today), "Sent");
                Quote.UpdateHireSentQuoteStatus(hid);
            }
            else 
            {
                LblError.Text = "Your have not calculated the total yet..";
            }

            if (TxtM.Text!="")
            {
                int up=System.Convert.ToInt32(TxtUP.Text);
                int qty=System.Convert.ToInt32(TxtQ.Text);
                int mttl=System.Convert.ToInt32(TxtTP.Text);
                Quote.QuoteMaterialInsert(TxtM.Text, up, qty, mttl);
            }
            else if (TxtM1.Text != "")
            {
                int up = System.Convert.ToInt32(TxtUP1.Text);
                int qty = System.Convert.ToInt32(TxtQ1.Text);
                int mttl = System.Convert.ToInt32(TxtTP1.Text);
                Quote.QuoteMaterialInsert(TxtM1.Text, up, qty, mttl);
            }
            else if (TxtM2.Text != "")
            {
                int up = System.Convert.ToInt32(TxtUP2.Text);
                int qty = System.Convert.ToInt32(TxtQ2.Text);
                int mttl = System.Convert.ToInt32(TxtTP2.Text);
                Quote.QuoteMaterialInsert(TxtM2.Text, up, qty, mttl);
            }
            else if (TxtM3.Text != "")
            {
                int up = System.Convert.ToInt32(TxtUP3.Text);
                int qty = System.Convert.ToInt32(TxtQ3.Text);
                int mttl = System.Convert.ToInt32(TxtTP3.Text);
                Quote.QuoteMaterialInsert(TxtM3.Text, up, qty, mttl);
            }
            else if (TxtM4.Text != "")
            {
                int up = System.Convert.ToInt32(TxtUP4.Text);
                int qty = System.Convert.ToInt32(TxtQ4.Text);
                int mttl = System.Convert.ToInt32(TxtTP4.Text);
                Quote.QuoteMaterialInsert(TxtM4.Text, up, qty, mttl);
            }
            else if (TxtM5.Text != "")
            {
                int up = System.Convert.ToInt32(TxtUP5.Text);
                int qty = System.Convert.ToInt32(TxtQ5.Text);
                int mttl = System.Convert.ToInt32(TxtTP5.Text);
                Quote.QuoteMaterialInsert(TxtM5.Text, up, qty, mttl);
            }
            else if (TxtM6.Text != "")
            {
                int up = System.Convert.ToInt32(TxtUP6.Text);
                int qty = System.Convert.ToInt32(TxtQ6.Text);
                int mttl = System.Convert.ToInt32(TxtTP6.Text);
                Quote.QuoteMaterialInsert(TxtM6.Text, up, qty, mttl);
            }
            else if (TxtM7.Text != "")
            {
                int up = System.Convert.ToInt32(TxtUP7.Text);
                int qty = System.Convert.ToInt32(TxtQ7.Text);
                int mttl = System.Convert.ToInt32(TxtTP7.Text);
                Quote.QuoteMaterialInsert(TxtM7.Text, up, qty, mttl);
            }
            else if (TxtM8.Text != "")
            {
                int up = System.Convert.ToInt32(TxtUP8.Text);
                int qty = System.Convert.ToInt32(TxtQ8.Text);
                int mttl = System.Convert.ToInt32(TxtTP8.Text);
                Quote.QuoteMaterialInsert(TxtM8.Text, up, qty, mttl);
            }
            else if (TxtM9.Text != "")
            {
                int up = System.Convert.ToInt32(TxtUP9.Text);
                int qty = System.Convert.ToInt32(TxtQ9.Text);
                int mttl = System.Convert.ToInt32(TxtTP9.Text);
                Quote.QuoteMaterialInsert(TxtM9.Text, up, qty, mttl);
            }
            else 
            {
                LblError.Text = "Your have not entered any items yet..";
            }
            Response.Redirect("Profiles/SPProfile.aspx");
        }

        protected void BtnAccept_Click(object sender, EventArgs e)
        {
            int hid = System.Convert.ToInt32(Request.QueryString["hid"]);
            int pid = System.Convert.ToInt32(Request.QueryString["pid"]);
            Quote.UpdateHireSentQuoteAccepted(hid, pid);
            Response.Redirect("Profiles/RequestorProfile.aspx");
        }

        protected void BtnReject_Click(object sender, EventArgs e)
        {
            int hid = System.Convert.ToInt32(Request.QueryString["hid"]);
            Quote.UpdateHireSentQuoteMissed(hid);
            Response.Redirect("Profiles/RequestorProfile.aspx");
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profiles/RequestorProfile.aspx");
        }
    }
}