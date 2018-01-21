using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRAHRM2
{
    public partial class personalInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt64(Session["rid"].ToString()) == 1)
                Server.Transfer("userPI.aspx");
            else if (Convert.ToInt64(Session["rid"].ToString()) == 2)
                Server.Transfer("adminPI.aspx");
            else if (Convert.ToInt64(Session["rid"].ToString()) == 3)
                Server.Transfer("superAdminPI.aspx");
        }
    }
}