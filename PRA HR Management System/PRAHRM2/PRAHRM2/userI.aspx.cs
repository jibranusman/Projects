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
    public partial class userI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            DataTable d = new DataTable();

            obj.getInternships(ref d);

            jobs.DataSource = d;
            jobs.DataBind();
        }

        protected void selectJob(object sender, GridViewSelectEventArgs e)
        {
            long id = Convert.ToInt64(jobs.DataKeys[e.NewSelectedIndex].Value.ToString());
            Session["internshipID"] = id.ToString();

            myDAL obj = new myDAL();

            if (!obj.NoUserApplications(id))
            {
                Response.Write("<script> alert('You have already submitted an applicaion and it is being reviewed'); </script>");
            }
            else
            {
                string name = obj.getInternshipName(id);
                Session["internshipName"] = name;

                Server.Transfer("Apply.aspx");
            }
        }
    }
}