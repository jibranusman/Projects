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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            DataTable dt = new DataTable();

            obj.getUserInternships(ref dt);

            jobs.DataSource = dt;
            jobs.DataBind();
        }
    }
}