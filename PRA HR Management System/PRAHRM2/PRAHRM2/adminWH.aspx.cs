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
    public partial class adminWH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (searchgrid.Rows.Count == 0)
            {
                myDAL obj = new myDAL();
                DataTable d = new DataTable();

                obj.getUsers(ref d);

                searchgrid.DataSource = d;
                searchgrid.DataBind();
            }
        }

        public void getUserData()
        {
            myDAL obj = new myDAL();
            DataTable d = new DataTable();

            obj.getUsers(ref d);

            searchgrid.DataSource = d;
            searchgrid.DataBind();
        }

        protected void searchUsers(object sender, EventArgs e)
        {
            string name = searchresult.Text;

            myDAL obj = new myDAL();
            DataTable d = new DataTable();

            obj.searchSpecificUsers(name, ref d);

            searchgrid.DataSource = d;
            searchgrid.DataBind();
        }

        protected void selectUser(object sender, GridViewSelectEventArgs e)
        {
            Session["selecteduid"] = searchgrid.DataKeys[e.NewSelectedIndex].Value.ToString();
            Server.Transfer("UserWorkingHours.aspx");
        }
    }
}