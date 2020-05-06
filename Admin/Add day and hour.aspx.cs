using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add_day_and_hour : System.Web.UI.Page
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
        string hr = TextBox_hour.Text;
        string sql = "insert into hour values('" + hr + "')";
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        string dy = TextBox_dayname.Text;
        string sql = "insert into day values('" + dy + "')";
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
}