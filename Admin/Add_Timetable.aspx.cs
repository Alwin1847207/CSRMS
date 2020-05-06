using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add_Timetable : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            db.fillddl("select * from department", DropDownList_dep, "dname", "did");
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dep = DropDownList_dep.SelectedItem.Value;
        string bat = RadioButtonList_batch.SelectedValue;
        string sem = DropDownList_sem.SelectedItem.Value;
        string hor = DropDownList_hour.SelectedItem.Value;
        string day = DropDownList_day.SelectedItem.Value;
        string teacher = DropDownList_teacher.SelectedItem.Value;
        string sub = DropDownList_sub.SelectedItem.Value;
        string sql = "insert into timetable values(" + hor + "," + day + "," + sub + "," + teacher + "," + dep + "," + sem + ")";
        int i = db.exenonquery(sql);
        if (i > 0)
        {
            Response.Write("<script>alert('Insertion Success')</script>");
            
        }
        else
        {
            Response.Write("<script>alert('Insertion Failure')</script>");
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void RadioButtonList_batch_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = RadioButtonList_batch.SelectedValue;
        db.fillddl("select * from semester where batch=" + a, DropDownList_sem, "sem", "semid");
    }
    protected void DropDownList_sem_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList_sem.SelectedItem.Value;
        db.fillddl("select * from hour", DropDownList_hour, "hname", "hid");
    }
    protected void DropDownList_hour_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList_hour.SelectedItem.Value;
        db.fillddl("select * from day ", DropDownList_day, "dayname", "dayid");
    }
    protected void DropDownList_day_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList_day.SelectedItem.Value;
        db.fillddl("select * from teacher ", DropDownList_teacher, "name", "tid");
    }
    protected void DropDownList_teacher_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList_teacher.SelectedItem.Value;
        db.fillddl("select * from subject ", DropDownList_sub, "subjectname", "sid");
    }
    protected void DropDownList_sub_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList_sub.SelectedItem.Value;
    }
}