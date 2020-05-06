using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home_Project : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataTable dt = db.exetable("select * from notification");
        //string s1;
        //s1 = "<table><tr><td>";
        //string abc = "";
        //for (int i = 0; i < dt.Rows.Count; i++)
        //{
        //    abc = dt.Rows[i][2].ToString();
        //    s1 += "<a href='#'>" + abc + "</a></td>";
        //    s1 += "<br/>";

        //}
        //s1 += "</tr></table>";
        //lt2.Text = s1.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string uname = TextBox1.Text;
        string pass = TextBox2.Text;
        string q1 = "select * from logintable where uname='" + uname + "' and password='" + pass + "' and status='1'";
        DataTable dt = db.exetable(q1);
        if (dt.Rows.Count > 0)
        {
            Session["login_id"] = dt.Rows[0][0].ToString();
            if (dt.Rows[0][3].ToString() == "admin")
            {
                Response.Redirect("~/admin/Admin_Home.aspx");
            }
            else if (dt.Rows[0][3].ToString() == "teacher")
            {
                Response.Redirect("~/Teacher/Teacher_Home.aspx");
            }
            else if (dt.Rows[0][3].ToString() == "hod")
            {
                Response.Redirect("~/Head of Department/Hod_Home.aspx");
            }
            else if (dt.Rows[0][3].ToString() == "principal")
            {
                Response.Redirect("~/Principal/Principal_Home.aspx");
            }
            else if (dt.Rows[0][3].ToString() == "student")
            {
                Response.Redirect("~/Student/Student_Home.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('login Failure')</script>");
        }
    }
}