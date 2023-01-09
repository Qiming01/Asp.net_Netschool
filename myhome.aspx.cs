using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics.Tracing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class MainPage : System.Web.UI.Page
    {
        private string userid;
        private string password;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Userid"] == null || Session["Password"] == null)
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
                return;
            }
            userid = Session["Userid"].ToString();
            password = Session["Password"].ToString();
            Lable2.Text = userid + "\t" + password;
            Lable3.Text = System.DateTime.Now.ToString();
        }
        protected void btnSearchMyClass_Click(object sender, EventArgs e)
        {
            string cmd = "select id.CLASSID,CLASSNAME,CLASS.SPECIALTY '专业',TEACHER.USERNAME '主讲教师',RANK '主讲教师职位',REGTIME '注册时间',GRADE from (select CLASSID,GRADE FROM STUDENT_CLASS where USERID='" + userid + "') as id inner join CLASS on id.CLASSID=CLASS.CLASSID inner join TEACHER_CLASS on id.CLASSID=TEACHER_CLASS.CLASSID and DUTY='主讲教师' inner join TEACHER on TEACHER_CLASS.USERID=TEACHER.USERID order by id.CLASSID";
            Database database = new Database();
            SqlDataReader reader = database.SelectDatabase(cmd);
            GridView1.DataSource = reader;
            GridView1.DataBind();
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }


    }
}