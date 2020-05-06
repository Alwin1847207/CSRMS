using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_View_Attendance : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            db.fillgrid("select student.name as Name,test.ab_count as Absent_hour from student left join (select count('semid') as ab_count,absent.sid from attendance inner join absent on attendance.atid=absent.atid  group by absent.sid) test on student.sid=test.sid ", GridView1);
        }
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