using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add_Subject : System.Web.UI.Page
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
        string lid=Session["login_id"].ToString();
        string dep = DropDownList_dep.SelectedItem.Value;
        string b = RadioButtonList1.SelectedValue;
        string sem = DropDownList_sem.SelectedItem.Value;
        string subject = TextBox_subject.Text;
        string sql="insert into subject values('"+subject+"',"+Convert.ToInt32(sem)+","+Convert.ToInt32(lid)+","+Convert.ToInt32(dep)+")";
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
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = RadioButtonList1.SelectedValue;
        db.fillddl("select * from semester where batch=" + a,DropDownList_sem,"sem","semid");
    }
}