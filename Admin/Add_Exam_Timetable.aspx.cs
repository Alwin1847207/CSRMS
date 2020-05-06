using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add_Exam_Timetable : System.Web.UI.Page
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
        string b = RadioButtonList_batch.SelectedValue;
        string sem = DropDownList_sem.SelectedItem.Value;
        string time = RadioButtonList_time.SelectedItem.Value;
        string subject = DropDownList_subject.SelectedItem.Value;
        string dur = RadioButtonList_duration.SelectedItem.Value;
        string date = TextBox_date.Text;
        string sql = "insert into examtimetable values('"+date+"',"+dep+","+sem+","+subject+",'"+time+"',"+dur+")";
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
    protected void DropDownList_dep_SelectedIndexChanged(object sender, EventArgs e)
    {
        string dep = DropDownList_dep.SelectedItem.Value;
    }
    protected void RadioButtonList_batch_SelectedIndexChanged(object sender, EventArgs e)
    {
        string b = RadioButtonList_batch.SelectedItem.Value;
        db.fillddl("select * from semester where batch=" + b, DropDownList_sem, "sem", "semid");
    }
    protected void DropDownList_sem_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sem = DropDownList_sem.SelectedItem.Value;
        db.fillddl("select * from subject ", DropDownList_subject, "subjectname", "sid");
    }
    protected void RadioButtonList_time_SelectedIndexChanged(object sender, EventArgs e)
    {
        string time = RadioButtonList_time.SelectedItem.Value;
    }
    protected void RadioButtonList_duration_SelectedIndexChanged(object sender, EventArgs e)
    {
        string dur = RadioButtonList_duration.SelectedItem.Value;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox_date.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void DropDownList_subject_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sub = DropDownList_subject.SelectedItem.Value;
    }
}