using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PRAHRM2.DAL;

namespace PRAHRM2
{
    public partial class judgeApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ud.Text = Session["applicantID"].ToString();
            ina.Text = Session["internshipName"].ToString();
        }

        protected void cancel(object sender, EventArgs e)
        {
            Server.Transfer("adminI.aspx");
        }

        protected void submit(object sender, EventArgs e)
        {
            long iID = Convert.ToInt64(Session["internshipID"].ToString());
            long uID = Convert.ToInt64(Session["applicantID"].ToString());
            long ans = Convert.ToInt64(dd.SelectedItem.Value.ToString());

            myDAL obj = new myDAL();
            obj.judgeApp(iID, uID, ans);

            Server.Transfer("adminI.aspx");
        }
    }
}