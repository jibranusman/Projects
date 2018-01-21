using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PRAHRM2.DAL;
using System.IO;

namespace PRAHRM2
{
    public partial class adminI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/CV/"));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }
                jobs.DataSource = files;
                jobs.DataBind();
            }
        }

        protected void newJob(object sender, EventArgs e)
        {
            Server.Transfer("newJob.aspx");
        }

        protected void DownloadFile(object sender, GridViewSelectEventArgs e)
        { 
            string filename = jobs.Rows[e.NewSelectedIndex].Cells[1].Text;
            Response.Write("<script> window.open('CV/" + filename + "','_blank'); </script>");

            string iid = "" + filename[filename.Length - 8] + filename[filename.Length - 7] + filename[filename.Length - 6]+ filename[filename.Length - 5];
            string uid = "" + filename[filename.Length - 12] + filename[filename.Length - 11] + filename[filename.Length - 10] + filename[filename.Length - 9];


            Session["internshipID"] = iid;
            Session["applicantID"] = uid;

            myDAL obj = new myDAL();
            Session["internshipName"] = obj.getInternshipName(Convert.ToInt64(Session["internshipID"].ToString()));

            Server.Transfer("judgeApplication.aspx");
        }

        protected void ApproveCV(object sender, EventArgs e)
        {

        }

        protected void RejectCV(object sender, EventArgs e)
        {

        }
    }
}