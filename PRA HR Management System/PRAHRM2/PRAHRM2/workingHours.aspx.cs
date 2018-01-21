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
    public partial class workingHours : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt64(Session["rid"].ToString()) == 1)
                Server.Transfer("userWH.aspx");
            else if (Convert.ToInt64(Session["rid"].ToString()) == 2)
                Server.Transfer("adminWH.aspx");
            else if (Convert.ToInt64(Session["rid"].ToString()) == 3)
                Server.Transfer("superAdminWH.aspx");
        }
    }
}