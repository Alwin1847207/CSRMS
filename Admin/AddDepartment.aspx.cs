using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddDepartment : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {

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
        string dname = TextBox_dname.Text;
        string q1 = "insert into department values('" + dname + "')";
        int i = db.exenonquery(q1);
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
}