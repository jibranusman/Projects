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
    public partial class EditUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(userEditGrid.Rows.Count == 0)
            {
                myDAL obj = new myDAL();
                DataTable d = new DataTable();

                obj.getUsers(ref d);


                userEditGrid.DataSource = d;
                userEditGrid.DataBind();
            }
        }

        public void getUserData()
        {
            myDAL obj = new myDAL();
            DataTable d = new DataTable();

            obj.getUsers(ref d);

            userEditGrid.DataSource = d;
            userEditGrid.DataBind();
        }

        protected void editUserRow(object sender, GridViewEditEventArgs e)
        {
            userEditGrid.EditIndex = e.NewEditIndex;
            getUserData();
        }

        protected void cancel(object sender, EventArgs e)
        {
            Server.Transfer("personalInfo.aspx");
        }

        protected void cancelEditing(object sender, GridViewCancelEditEventArgs e)
        {
            userEditGrid.EditIndex = -1;
            getUserData();
        }

        protected void deleteUserRow(object sender, GridViewDeleteEventArgs e)
        {
            string un = userEditGrid.DataKeys[e.RowIndex].Value.ToString();
            long uid = Convert.ToInt64(un);

            myDAL objDAL = new myDAL();
            objDAL.deleteUserRow(uid);
            getUserData();
        }

        protected void updateUserRow(object sender, GridViewUpdateEventArgs e)
        {
            if (e.NewValues["FirstName"] == null)
            {
                Response.Write("<script>alert('First name can not be left empty');</script>");
            }
            else if (e.NewValues["LastName"] == null)
            {
                Response.Write("<script>alert('Last name can not be left empty');</script>");
            }
            else if (e.NewValues["Email"] == null)
            {
                Response.Write("<script>alert('E-mail can not be left empty');</script>");
            }
            else if (e.NewValues["Gender"] == null)
            {
                Response.Write("<script>alert('Gender can not be left empty');</script>");
            }
            else if(e.NewValues["Gender"].ToString() != "M" && e.NewValues["Gender"].ToString() != "F")
            {
                Response.Write("<script>alert('Gender can only be either M or F');</script>");
            }
            else
            {
                string un = userEditGrid.DataKeys[e.RowIndex].Value.ToString();
                long uid = Convert.ToInt64(un);
                string email = e.NewValues["Email"].ToString();
                string address = e.NewValues["Address"].ToString();
                string firstname = e.NewValues["FirstName"].ToString();
                string lastname = e.NewValues["LastName"].ToString();
                string gender = e.NewValues["Gender"].ToString();

                myDAL objMyDal = new myDAL();
                objMyDal.updateUserRow(uid, email, address, firstname, lastname, gender);

                userEditGrid.EditIndex = -1;
                getUserData();
            }
        }

        protected void searchUsers(object sender, EventArgs e)
        {
            string name = searchresult.Text;

            myDAL obj = new myDAL();
            DataTable d = new DataTable();

            obj.searchSpecificUsers(name, ref d);

            userEditGrid.DataSource = d;
            userEditGrid.DataBind();
        }
    }
}