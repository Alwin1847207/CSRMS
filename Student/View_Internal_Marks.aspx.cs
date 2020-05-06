using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_View_Internal_Marks : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select * from subject inner join internal_mark on subject.sid=internal_mark.subjectid inner join max_mark on max_mark.intextype=internal_mark.intextype inner join internal_exam_name on internal_exam_name.intexmid=internal_mark.intexmid inner join semester on semester.semid=subject.semid";
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
}