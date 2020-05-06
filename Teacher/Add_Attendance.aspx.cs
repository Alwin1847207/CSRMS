using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_Add_Attendance : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox_date.Text = DateTime.Today.ToString();
        
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
    int i;
    protected void Button1_Click(object sender, EventArgs e)
    {
        string lid = Session["login_id"].ToString();
        string date = DateTime.Today.ToString();
        string batch = RadioButtonList_batch.SelectedItem.Value;
        string sem = DropDownList_sem.SelectedItem.Text;
        string dep = DropDownList_dep.SelectedItem.Value;
        string sub = DropDownList_subject.SelectedItem.Value;
        string sql = "insert into attendance values(" + lid + ",'" +sem  + "',"+sub+",'"+date+"',"+dep+")SELECT @@IDENTITY";
        object ob=db.execalar(sql);
        foreach (GridViewRow gvr in GridView_attendance.Rows)
        {
            int sid = Convert.ToInt32(GridView_attendance.DataKeys[gvr.RowIndex].Value);
            RadioButtonList rbl=(RadioButtonList)gvr.FindControl("RadioButtonList1");
            if (rbl.Items[1].Selected == true)
            {
                string sq="insert into absent values("+ob+","+sid+")";
                     i =db.exenonquery(sq);
            }
        }
            Response.Write("<script>alert('Insertion Success')</script>");
    }
    protected void RadioButtonList_batch_SelectedIndexChanged(object sender, EventArgs e)
    {
        string b = RadioButtonList_batch.SelectedItem.Value;
        db.fillddl("select * from semester where batch=" + b, DropDownList_sem, "sem", "semid");
    }
    protected void DropDownList_sem_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sem = DropDownList_sem.SelectedItem.Value;
        db.fillddl("select * from department ", DropDownList_dep, "dname", "did");
    }
    protected void DropDownList_dep_SelectedIndexChanged(object sender, EventArgs e)
    {
        string dep = DropDownList_dep.SelectedItem.Value;
        db.fillddl("select * from subject", DropDownList_subject, "subjectname", "sid");
    }
    protected void DropDownList_subject_SelectedIndexChanged(object sender, EventArgs e)
    {
           string sem = DropDownList_sem.SelectedItem.Text;
        string dep = DropDownList_dep.SelectedItem.Value;
        string sub = DropDownList_subject.SelectedItem.Value;
            db.fillgrid("select * from student where sem= '"+sem+"'and did="+dep, GridView_attendance);
    }
    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        RadioButtonList rbl;
        GridViewRow rowsel = (GridViewRow)(((RadioButtonList)sender).NamingContainer);
        rbl = (RadioButtonList)rowsel.FindControl("RadioButtonList2");
        if (rbl.Items[0].Selected == true)
        {
            foreach (GridViewRow gvr in GridView_attendance.Rows)
            {
                RadioButtonList rb = (RadioButtonList)gvr.FindControl("RadioButtonList1");
                rb.Items[0].Selected = true;
                rb.Items[1].Selected = false;
            }
        }
        if (rbl.Items[1].Selected == true)
        {
            foreach (GridViewRow gvr in GridView_attendance.Rows)
            {
                RadioButtonList rb = (RadioButtonList)gvr.FindControl("RadioButtonList1");
                rb.Items[1].Selected = true;
                rb.Items[0].Selected = false;
            }
        }
    }
}