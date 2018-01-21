using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRAHRM2
{
    public partial class superAdminPI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Session["name"].ToString();
            address.Text = Session["address"].ToString();
            role.Text = Session["role"].ToString();
            email.Text = Session["email"].ToString();
            gender.Text = Session["gender"].ToString();
        }
    }
}