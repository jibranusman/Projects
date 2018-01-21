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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginUser(object sender, EventArgs e)
        {
            {
                myDAL obj = new myDAL();
                DataTable d = new DataTable();

                string email = userbox.Text;
                string pin = passbox.Text;

                obj.getLoginRow(email, pin, ref d);

                if (d.Rows.Count > 0)
                {
                    string firstname = "";
                    string lastname = "";

                    long uid = obj.getUserID(email);
                    long rid = obj.getRoleID(uid);
                    string role = obj.getRole(rid);
                    string address = obj.getAddress(uid);
                    string name = obj.getName(ref firstname, ref lastname, uid);
                    string gender = obj.getGender(uid);

                    Session["rid"] = rid;
                    Session["uid"] = uid;
                    Session["role"] = role;
                    Session["email"] = email;
                    Session["address"] = address;
                    Session["name"] = name;
                    Session["gender"] = gender;
                    Session["firstname"] = firstname;
                    Session["lastname"] = lastname;

                    Server.Transfer("Home.aspx");
                }
                else
                {
                    Response.Write("<span id='Label1'' " +
                        "style='LEFT: 57%;" +
                        "POSITION: absolute;" +
                        "TOP: 44%;" +
                        "color: red;'>Invalid username or password</span>");
                }
            }
        }
    }
}