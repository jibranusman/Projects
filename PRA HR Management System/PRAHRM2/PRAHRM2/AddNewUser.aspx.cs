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
    public partial class AddNewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cancel(object sender, EventArgs e)
        {
            Server.Transfer("personalInfo.aspx");
        }

        protected void addNewUser(object sender, EventArgs e)
        {
            if (fname.Text == "")
            {
                Response.Write("<script>alert('First name can not be left empty');</script>");
            }
            else if (lname.Text == "")
            {
                Response.Write("<script>alert('Last name can not be left empty');</script>");
            }
            else if (em.Text == "")
            {
                Response.Write("<script>alert('E-mail can not be left empty');</script>");
            }
            else if (gen.Text == "" || (gen.Text != "M" && gen.Text != "F"))
            {
                Response.Write("<script>alert('Gender can not be left empty and it can only be either M or F');</script>");
            }
            else if(pswd.Text == "")
            {
                Response.Write("<script>alert('Password can not be left empty');</script>");
            }
            else if(rpswd.Text == "")
            {
                Response.Write("<script>alert('Re-enter password to confirm');</script>");
            }
            else if(rle.SelectedValue == "0")
            {
                Response.Write("<script>alert('Please select a role value');</script>");
            }
            else if(pswd.Text != rpswd.Text)
            {
                Response.Write("<script>alert('Both passwords do not match');</script>");
            }
            else
            {
                string firstname = fname.Text;
                string lastname = lname.Text;
                string address = add.Text;
                string email = em.Text;
                string gender = gen.Text;
                string password = pswd.Text;
                long role = Convert.ToInt64(rle.SelectedValue);

                myDAL obj = new myDAL();

                if(obj.isEmailUnused(email))
                {
                    obj.addNewUser(firstname, lastname, address, email, gender, password, role);

                    Response.Write("<script>alert('User succesfully registered.');</script>");
                    Server.Transfer("personalInfo.aspx");
                }
                else
                {
                    Response.Write("<script>alert('"+email+" is an already registered e-mail address in the database');</script>");
                }
            }
        }
    }
}