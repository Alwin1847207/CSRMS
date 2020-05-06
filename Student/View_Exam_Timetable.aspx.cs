using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_View_Exam_Timetable : System.Web.UI.Page
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
    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    string dep = DropDownList_dep.SelectedItem.Value;
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
       //  string lid = Session["login_id"].ToString();
        string batch = RadioButtonList1.SelectedItem.Value;
        string sem = DropDownList_sem.SelectedItem.Value;
        string dep = DropDownList_dep.SelectedItem.Value;
        string sql = " select * from examtimetable inner join subject on examtimetable.subject=subject.sid where examtimetable.did="+dep+" and examtimetable.sem="+sem;
        db.fillgrid(sql, GridView1);
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string b = RadioButtonList1.SelectedItem.Value;
        string a = DropDownList_dep.SelectedValue;
        db.fillddl("select * from semester where batch=" + b, DropDownList_sem, "sem", "semid");
    }
    //protected void DropDownList_sem_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    string sem = DropDownList_sem.SelectedItem.Value;
    //}
}