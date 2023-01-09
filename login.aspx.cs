using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool IsValid(string username)
        {
            if (username.Contains("'") || username.Contains(";") || username.Contains("--") || username.Contains("/*") || username.Contains("xp_"))
                return false;
            else
                return true;
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text;
            string pwd = txtPwd.Text;
            
            string cmd = "select * from STUDENT where USERID = '" + username + "' and PASSWORD = '" + pwd + "'";
            Database database = new Database();
            SqlDataReader reader = database.SelectDatabase(cmd);
            if (IsValid(username) && reader.Read())
            {
                Session["UserId"] = Server.HtmlEncode(username);
                Session["Password"] = Server.HtmlEncode(pwd);
                Response.Redirect("myhome.aspx");
            }
            else
            {
                txtUserName.Text = null; txtPwd.Text = null;
                Lable3.Text = "请输入正确的用户名与密码！";
                Lable3.ForeColor = Color.Red;
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserName.Text = null; txtPwd.Text = null;
        }
    }
}