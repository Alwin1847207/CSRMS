using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Head_of_Department_View_Students_leave : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            db.fillddl("select * from department", DropDownList1, "dname", "did");
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
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string a = DropDownList1.SelectedItem.Value;
        db.fillddl("select * from semester", DropDownList2, "sem", "semid");
    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string b = DropDownList2.SelectedItem.Value;
        db.fillddl("select atid,date from attendance", DropDownList3, "date", "atid");
    }
    protected void DropDownList3_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string a = DropDownList1.SelectedItem.Value;
        string b = DropDownList2.SelectedItem.Value;
        string c = DropDownList3.SelectedItem.Value;
        string sql = "select distinct(date) from absent inner join attendance on absent.atid=attendance.atid inner join department on department.did=attendance.did inner join student on student.sid=absent.sid where attendance.did=" + a + " and attendance.date='" + c + "' and attendance.semid=" + b;
        db.fillgrid(sql, GridView1);
    }
}