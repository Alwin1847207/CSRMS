using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_Sent_Message : System.Web.UI.Page
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
            //db.fillddl("select distinct(student.name)  as studentname,student.lid as studentlid  from student inner join teacher on student.did=teacher.did", DropDownList1, "studentname", "studentlid");
            db.filldlist("SELECT * FROM CHAT where fromid="+Session["login_id"]+" or toid="+Session["Login_id"], DataList1);
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string msg = TextBox1.Text;
       int j= db.exenonquery("insert into chat values('" + msg + "','','" + Session["login_id"] + "','" + DropDownList1.SelectedItem.Value + "')");
        if (j > 0)
        {
            Response.Write("<script>alert(' Success')</script>");
        }
        else
        {
            Response.Write("<script>alert(' Failure')</script>");
        }   
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        db.filldlist("SELECT * FROM CHAT where toid=" + DropDownList1.SelectedItem.Value, DataList1);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox txttext;
        Button btn;
        LinkButton lkbtn;
        DataListItem dtl = (DataListItem)(((Button)sender).NamingContainer);

        btn = (Button)dtl.FindControl("Button2");
        txttext = (TextBox)dtl.FindControl("TextBox2");
        lkbtn = (LinkButton)dtl.FindControl("LinkButton1");

        db.exenonquery("update chat set replay='" + txttext.Text + "' where messid=" + lkbtn.CommandArgument);

        db.filldlist("SELECT * FROM CHAT where toid=" + DropDownList1.SelectedItem.Value, DataList1);

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        TextBox txttext;
        Button btn;
        DataListItem dtl = (DataListItem)(((LinkButton)sender).NamingContainer);

        txttext = (TextBox)dtl.FindControl("TextBox2");
        btn = (Button)dtl.FindControl("Button2");

        txttext.Visible = true;
        btn.Visible = true;

        db.filldlist("SELECT * FROM CHAT where fromid=" + Session["login_id"] + " or toid=" + Session["Login_id"], DataList1);
   
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string choice = RadioButtonList1.SelectedItem.Value;
        if (RadioButtonList1.Items[0].Selected == true)
        {
            db.fillddl("select distinct(teacher.name)  as teachername,teacher.lid as teacherlid  from teacher where role='hod'", DropDownList1, "teachername", "teacherlid");
        }
        else if (RadioButtonList1.Items[1].Selected == true)
        {
            db.fillddl("select distinct(teacher.name)  as teachername,teacher.lid as teacherlid  from teacher inner join student on teacher.did=student.did and role='teacher'", DropDownList1, "teachername", "teacherlid");
        }
        else if (RadioButtonList1.Items[2].Selected == true)
        {
            db.fillddl("select distinct(student.name)  as studentname,student.lid as studentlid  from student inner join teacher on student.did=teacher.did", DropDownList1, "studentname", "studentlid");
        }
        else if (RadioButtonList1.Items[3].Selected == true)
        {
            db.fillddl("select distinct(principal.name) as principalname,principal.lid as principallid from principal", DropDownList1, "principalname", "principallid");
        }
    }
}