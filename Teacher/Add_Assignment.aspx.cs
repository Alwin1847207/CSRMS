using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_Add_Assignment : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            db.fillddl("select * from subject", DropDownList_subject, "subjectname", "sid");
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
        string lid = Session["login_id"].ToString();
        string sub = DropDownList_subject.SelectedItem.Value;
        string question = TextBox_question.Text;
        string sql = "insert into assignment values('"+question+"',"+sub+","+lid+")";
        int i = db.exenonquery(sql);
        if (i > 0)
        {
            Response.Write("<script>alert('Insertion Success')</script>");
        }
        else
        {
            Response.Write("<script>alert('Insertion Failure')</script>");
        }


    }
}