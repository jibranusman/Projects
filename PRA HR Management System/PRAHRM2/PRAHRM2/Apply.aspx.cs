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
    public partial class Apply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            jobname.Text = Session["internshipName"].ToString() + ":-";
        }

        protected void cancel(object sender, EventArgs e)
        {
            Server.Transfer("internship.aspx");
        }

        protected void uploadFile(object sender, EventArgs e)
        {
            if(uploader.HasFile)
            {
                string d = uploader.PostedFile.FileName.ToString();

                if (d[d.Length - 1] == 'f' && d[d.Length - 2] == 'd' && d[d.Length - 3] == 'p')
                {
                    try
                    { 
                        uploader.SaveAs(Server.MapPath("~/CV/") + Session["internshipName"].ToString() + Session["uid"].ToString() + Session["internshipID"].ToString() + ".pdf");
                        myDAL obj = new myDAL();
                        obj.insertUserApplication(Convert.ToInt64(Session["uid"].ToString()), Convert.ToInt64(Session["internshipID"].ToString()));
                        noFileChosen.Text = "File uploaded!";
                    }
                    catch (Exception ex)
                    {
                        noFileChosen.Text = "The file could not be uploaded. The following error occured: " + ex.Message;
                    }
                }
                else
                {
                    noFileChosen.Text = "Only PDF files can be uploaded";
                }
            }
            else
            {
                noFileChosen.Text = "No File chosen";
            }
        }
    }
}