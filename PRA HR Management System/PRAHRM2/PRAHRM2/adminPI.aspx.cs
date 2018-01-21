using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRAHRM2
{
    public partial class adminPI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Session["name"].ToString();
            address.Text = Session["address"].ToString();
            role.Text = Session["role"].ToString();
            email.Text = Session["email"].ToString();
            gender.Text = Session["gender"].ToString();
        }

        protected void buttons_Click(object sender, EventArgs e)
        {
            Server.Transfer("EditInfo.aspx");
        }

        protected void editUsers(object sender, EventArgs e)
        {
            Server.Transfer("EditUsers.aspx");
        }

        protected void addInfo(object sender, EventArgs e)
        {
            Server.Transfer("AddNewUser.aspx");
        }
    }
}