using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_View_University_Marks : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        string lid = Session["Login_id"].ToString();
        string sql = "select * from subject inner join university_mark on subject.sid=university_mark.subjectid inner join semester on semester.semid=subject.semid ";
        db.fillgrid(sql, GridView1);
    }
    private void page_Init(object sender, EventArgs e)
    {
        if (Session["login_id"] == null)
        {
            Response.Redirect("~/Home_Project.aspx");
        }
        Response.Cache.SetNoStore();
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}