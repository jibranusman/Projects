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
    public partial class userWH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cal_SelectionChanged(object sender, EventArgs e)
        {
            string dayOfWeek = cal.SelectedDate.DayOfWeek.ToString();
            long uid = Convert.ToInt64(Session["uid"].ToString());

            DataTable d = new DataTable();
            myDAL obj = new myDAL();

            obj.getUserTimings(uid, dayOfWeek, ref d);

            timingGrid.DataSource = d;
            timingGrid.DataBind();
        }
    }
}