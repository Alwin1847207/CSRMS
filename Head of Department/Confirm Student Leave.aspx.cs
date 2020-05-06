using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_Confirm_Student_Leave : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string hdid = Session["login_id"].ToString();
            db.fillgrid("select * from leave inner join student on leave.lid=student.lid inner join teacher on teacher.did=student.did where status =0", GridView1);
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
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       
        string a = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string sql = "update leave set status = 1 where tlid=" + a;
        int i = db.exenonquery(sql);
        if (i > 0)
        {
            Response.Write("<script>alert('Confirmed')</script>");
        }
        else
        {
            Response.Write("<script>alert('Failure')</script>");
        }
        if (!IsPostBack)
        {
            db.fillgrid("select * from leave inner join student on leave.lid=student.lid inner join teacher on teacher.did=student.did where status =0", GridView1);
        }
    }
}