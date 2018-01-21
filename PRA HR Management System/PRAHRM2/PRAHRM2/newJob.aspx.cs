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
    public partial class newJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cancel(object sender, EventArgs e)
        {
            Server.Transfer("adminI.aspx");
        }

        protected void submit(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            obj.insertInternship(tit.Text);

            Response.Write("<script> alert('Job has been posted!'); </script>");
            Server.Transfer("adminI.aspx");
        }
    }
}