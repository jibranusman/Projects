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
    public partial class EditInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(firstname.Text == "")
                firstname.Text = Session["firstname"].ToString();

            if (lastname.Text == "")
                lastname.Text = Session["lastname"].ToString();

            if (address.Text == "")
                address.Text = Session["address"].ToString();

            email.Text = Session["email"].ToString();

            if (gender.Text == "")
                gender.Text = Session["gender"].ToString();
        }

        protected void cancel_click(object sender, EventArgs e)
        {
            Server.Transfer("personalInfo.aspx");
        }

        protected void submitInfo(object sender, EventArgs e)
        {
            if(firstname.Text == "")
            {
                Response.Write("<script>alert('First name can not be left empty');</script>");
            }
            else if(lastname.Text == "")
            {
                Response.Write("<script>alert('Last name can not be left empty');</script>");
            }
            else if(email.Text == "")
            {
                Response.Write("<script>alert('E-mail can not be left empty');</script>");
            }
            else if(gender.Text == "" || (gender.Text != "M" && gender.Text != "F"))
            {
                Response.Write("<script>alert('Gender can not be left empty and it can only be either M or F');</script>");
            }
            else
            {
                long id = Convert.ToInt64(Session["uid"].ToString());
                string fn = firstname.Text;
                string ln = lastname.Text;
                string add = address.Text;
                string em = email.Text;
                string gen = gender.Text;

                myDAL obj = new myDAL();
                obj.updateInfo(id, fn, ln, add, em, gen);

                Response.Write("<script>alert('Data succesfully changed!');</script>");
                
                Session["address"] = add;
                Session["name"] = fn + " " + ln;
                Session["gender"] = gen;
                Session["firstname"] = fn;
                Session["lastname"] = ln;

                Server.Transfer("personalInfo.aspx");
            }
        }
    }
}