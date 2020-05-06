using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_Add_Marks : System.Web.UI.Page
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
            db.fillddl("select * from semester", DropDownList6, "sem", "semid");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = DropDownList5.SelectedItem.Value ;
        string b = DropDownList2.SelectedItem.Value ;
        string c=DropDownList3.SelectedItem.Value;
        string d=DropDownList4.SelectedItem.Value;
        string ef = DropDownList8.SelectedItem.Value;
        int mrk1 = Convert.ToInt32(TextBox1.Text);
        string lid= Session["login_id"].ToString();
        string q2 = "insert into internal_mark values("+ef+","+b+","+mrk1+","+lid+","+c+","+d+")";
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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList2.SelectedItem.Value;
        db.fillddl("select * from internal_exam_name", DropDownList3, "exam_name", "intexmid");
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList5.SelectedItem.Value;
        db.fillddl("select * from subject inner join semester on subject.semid = semester.semid where semester.semid='"+DropDownList5.SelectedItem.Value+"' ", DropDownList8, "subjectname", "sid");
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList3.SelectedItem.Value;
        db.fillddl("select * from max_mark", DropDownList4, "max_mark", "intextype");
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList4.SelectedItem.Value;
    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList8.SelectedItem.Value;
        db.fillddl("select * from student", DropDownList2, "name", "sid");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string a = DropDownList6.SelectedItem.Value;
        string b= DropDownList9.SelectedItem.Value;
        string c = DropDownList7.SelectedItem.Value;
        double d = Convert.ToDouble(TextBox2.Text);
        double ef = Convert.ToDouble(TextBox5.Text);
        string g = TextBox3.Text;
        string h=TextBox4.Text;
        string loid= Session["login_id"].ToString();
        string q3 ="insert into university_mark values("+b+","+c+","+d+","+ef+","+loid+",'"+g+"','"+h+"')";
        int i = db.exenonquery(q3);
        if (i > 0)
        {
            Response.Write("<script>alert('insertion success')</script>");
        }
        else
        {
            Response.Write("<script>alert('insertion failure')</script>");
        }
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList6.SelectedItem.Value;
        db.fillddl("select * from subject inner join semester on subject.semid = semester.semid where semester.semid='" + DropDownList6.SelectedItem.Value + "' ", DropDownList9, "subjectname", "sid");
    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList9.SelectedItem.Value;
        db.fillddl("select * from student", DropDownList7, "name", "sid");
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList7.SelectedItem.Value;
    }
}