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
    public partial class UserWorkingHours : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cancel_click(object sender, EventArgs e)
        {
            Server.Transfer("workinghours.aspx");
        }

        protected void getHours(object sender, EventArgs e)
        {
            string dayOfWeek = cal.SelectedDate.DayOfWeek.ToString();
            Session["dayofweek"] = dayOfWeek;
            long uid = Convert.ToInt64(Session["selecteduid"].ToString());

            DataTable d = new DataTable();
            myDAL obj = new myDAL();

            obj.getUserTimings(uid, dayOfWeek, ref d);

            timingGrid.DataSource = d;
            timingGrid.DataBind();
        }

        public void getHours()
        {
            long uid = Convert.ToInt64(Session["selecteduid"].ToString());

            DataTable d = new DataTable();
            myDAL obj = new myDAL();

            obj.getUserTimings(uid, Session["dayofweek"].ToString(), ref d);

            timingGrid.DataSource = d;
            timingGrid.DataBind();
        }

        protected void editUserRow(object sender, GridViewEditEventArgs e)
        {
            timingGrid.EditIndex = e.NewEditIndex;
            getHours();
        }

        protected void cancelEditing(object sender, GridViewCancelEditEventArgs e)
        {
            timingGrid.EditIndex = -1;
            getHours();
        }

        protected void updateTime(object sender, GridViewUpdateEventArgs e)
        {
            if (e.NewValues["starttime"] == null)
            {
                Response.Write("<script>alert('Start time can not be left empty');</script>");
            }
            else if (e.NewValues["endtime"] == null)
            {
                Response.Write("<script>alert('End time can not be left empty');</script>");
            }
            else
            {
                long uid = Convert.ToInt64(Session["selecteduid"].ToString());
                string st = e.NewValues["starttime"].ToString();
                string et = e.NewValues["endtime"].ToString();

                myDAL objMyDal = new myDAL();
                objMyDal.updateTimingRow(uid, Session["dayofweek"].ToString(), st, et);

                timingGrid.EditIndex = -1;
                getHours();
            }
        }
    }
}