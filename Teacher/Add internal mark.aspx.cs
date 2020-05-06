using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_Add_internal_mark : System.Web.UI.Page
{
    dboperation db = new dboperation();

    private void page_Init(object sender, EventArgs e)
    {
        if (Session["login_id"] == null)
        {
            Response.Redirect("~/Home_Project.aspx");
        }
        Response.Cache.SetNoStore();
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            db.fillddl("select * from semester", DropDownList5, "sem", "semid");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = DropDownList5.SelectedItem.Value;
        string b = DropDownList2.SelectedItem.Value;
        string ef = DropDownList8.SelectedItem.Value;
        int maxmrk = 10;
        int mrk1 = Convert.ToInt32(TextBox1.Text);
        string lid = Session["login_id"].ToString();
        string q2 = "insert into internalmarks values(" + ef + "," + b + "," + mrk1 + "," + lid + "," + a + ","+10+")";
        int i = db.exenonquery(q2);
        if (i > 0)
        {
            Response.Write("<script>alert('insertion success')</script>");
        }
        else
        {
            Response.Write("<script>alert('insertion failure')</script>");
        }
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList5.SelectedItem.Value;
        db.fillddl("select * from subject inner join semester on subject.semid = semester.semid where semester.semid='"+DropDownList5.SelectedItem.Value+"' ", DropDownList8, "subjectname", "sid");
    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList8.SelectedItem.Value;
        db.fillddl("select * from student", DropDownList2, "name", "sid");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList2.SelectedItem.Value;

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}