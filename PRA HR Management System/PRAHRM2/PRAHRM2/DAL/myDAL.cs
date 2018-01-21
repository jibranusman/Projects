using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace PRAHRM2.DAL
{
    public class myDAL
    {
        private static readonly string connString =
            System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;

        public void getLoginRow(string email, string pin, ref DataTable dt)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select * from users where Email = '" + email + "' and PIN = '" + pin + "'", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();
        }

        public void getUsers(ref DataTable dt)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select UserID, Email, [Address], FirstName, LastName, Gender from users", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();
        }

        public void getUserTimings(long uid, string dayOfWeek, ref DataTable dt)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select usertimings.UserID, users.FirstName, usertimings.[Day], usertimings.starttime, usertimings.endtime from usertimings join users on usertimings.UserID = users.UserID where usertimings.UserID = " + uid + " and usertimings.[Day] = '" + dayOfWeek + "'", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();
        }

        public void getInternships(ref DataTable dt)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select internshipID as [ID], title as [Title] from internships", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();
        }

        public void getUserInternships(ref DataTable dt)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select * from userinternships", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();
        }

        public bool NoUserApplications(long id)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select * from userinternships where internshipID = " + id, conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);
            conn.Close();

            if (ds.Tables[0].Rows.Count > 0)
                return false;
            else
                return true;
        }

        public string getInternshipName(long id)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select title from internships where internshipID = " + id, conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();

            return (dt.Rows[0][0].ToString());
        }

        public void updateTimingRow(long uid, string dayOfWeek, string starttime, string endtime)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("update usertimings set starttime = '" + starttime + "', endtime = '" + endtime + "' where UserID = " + uid + " and [Day] = '" + dayOfWeek + "'", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);
            conn.Close();
        }

        public void searchSpecificUsers(string name, ref DataTable dt)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select UserID, Email, [Address], FirstName, LastName, Gender from users where FirstName like '%' + '" + name + "' + '%'", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();
        }

        public void updateUserRow(long uid, string email, string address, string firstname, string lastname, string gender)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("update users set [Email] = '" + email + "', [Address] = '" + address + "', [FirstName] = '" + firstname + "', [LastName] = '" + lastname + "', [Gender] = '" + gender + "' where [UserID] = " + uid, conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);
            conn.Close();
        }

        public bool isEmailUnused(string email)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select * from users where [Email] = '" + email + "'", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);
            conn.Close();

            DataTable dt = new DataTable();
            dt = ds.Tables[0];

            if (dt.Rows.Count > 0)
                return false;
            else
                return true;
        }

        public void addNewUser(string firstname, string lastname, string address, string email, string gender, string password, long role)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd1 = new SqlCommand("insert into users values ('" + password + "', '" + email + "', '" + address + "', '" + firstname + "', '" + lastname + "', '" + gender + "')", conn);
            DataSet ds1 = new DataSet();

            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            sda1.Fill(ds1);

            SqlCommand cmd = new SqlCommand("Select * from users where [Email] = '" + email + "'", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);

            DataTable dt = new DataTable();
            dt = ds.Tables[0];

            long uid = Convert.ToInt64(dt.Rows[0][0].ToString());

            SqlCommand cmd2 = new SqlCommand("insert into userroles values (" + uid + "," + role + ")", conn);
            DataSet ds2 = new DataSet();

            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);

            sda2.Fill(ds2);

            SqlCommand cmd3 = new SqlCommand("insert into usertimings values (" + uid + ",'Monday', '9:00AM', '5:00PM'), (" + uid + ",'Tuesday', '9:00AM', '5:00PM'), (" + uid + ",'Wednesday', '9:00AM', '5:00PM'), (" + uid + ",'Thursday', '9:00AM', '5:00PM'), (" + uid + ",'Friday', '9:00AM', '5:00PM')", conn);
            DataSet ds3 = new DataSet();

            SqlDataAdapter sda3 = new SqlDataAdapter(cmd3);
            sda3.Fill(ds3);

            conn.Close();
        }

        public void deleteUserRow(long uid)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd2 = new SqlCommand("Delete from usertimings where [UserID] = " + uid, conn);
            DataSet ds2 = new DataSet();

            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            sda2.Fill(ds2);

            SqlCommand cmd8 = new SqlCommand("Delete from userinternships where [UserID] = " + uid, conn);
            DataSet ds8 = new DataSet();

            SqlDataAdapter sda8 = new SqlDataAdapter(cmd8);
            sda8.Fill(ds8);

            SqlCommand cmd1 = new SqlCommand("Delete from userroles where [UserID] = " + uid, conn);
            DataSet ds1 = new DataSet();

            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            sda1.Fill(ds1);

            SqlCommand cmd = new SqlCommand("Delete from users where [UserID] = " + uid, conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            sda.Fill(ds);
            conn.Close();
        }

        public void updateInfo(long id, string firstname, string lastname, string address, string email, string gender)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;

            try
            {
                cmd = new SqlCommand("Update users set [Email] = '" + email + "', [Address] = '" + address + "', [FirstName] = '" + firstname + "', [LastName] = '" + lastname + "', [Gender] = '" + gender + "' where [UserID] = " + id, con);
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                sda.Fill(ds);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public long getUserID(string email)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select userID from users where email = '" + email + "'", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();

            long uid = Convert.ToInt64(dt.Rows[0][0].ToString());

            return uid;
        }

        public long getRoleID(long userID)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select roleID from userroles where userID = " + userID, conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();

            long uid = Convert.ToInt64(dt.Rows[0][0].ToString());

            return uid;
        }

        public string getRole(long roleID)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select rolename from roles where roleID = " + roleID, conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();

            string role = dt.Rows[0][0].ToString();

            return role;
        }

        public string getAddress(long userID)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select [Address] from users where userID = " + userID, conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();

            string address = dt.Rows[0][0].ToString();

            return address;
        }

        public string getName(ref string firstname, ref string lastname, long userID)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select FirstName,LastName from users where userID = " + userID, conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();

            firstname = dt.Rows[0][0].ToString();
            lastname = dt.Rows[0][1].ToString();
            string name = dt.Rows[0][0].ToString() + " " + dt.Rows[0][1].ToString();

            return name;
        }

        public string getGender(long userID)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select Gender from users where userID = " + userID, conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(ds);
            dt = ds.Tables[0];
            conn.Close();

            string gender = dt.Rows[0][0].ToString();

            return gender;
        }

        public void insertUserApplication(long userID, long iID)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into userinternships values (" + userID + " ," + iID + " , 'i')", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            conn.Close();

        }

        public void insertInternship(string text)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into internships values('"+text+"')", conn);
            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            conn.Close();

        }

        public void judgeApp(long iID, long uID, long ans)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd;

            if(ans == 1)
            {
                cmd = new SqlCommand("update userinternships set approved = 'a' where internshipID = " + iID + " and userID = " + uID, conn);
            }
            else
            {
                cmd = new SqlCommand("update userinternships set approved = 'r' where internshipID = " + iID + " and userID = " + uID, conn);
            }

            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            conn.Close();
        }
    }
}