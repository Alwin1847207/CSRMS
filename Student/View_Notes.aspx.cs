using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_View_Notes : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string lid = Session["Login_id"].ToString();
            string sql = "select * from notes inner join semester on notes.semid=semester.semid inner join subject on subject.sid = notes.sid inner join teacher on teacher.lid=notes.tid";
            db.fillgrid(sql, GridView1);
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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        GridViewRow rowSelect = (GridViewRow)(((ImageButton)sender).NamingContainer);
        ImageButton btncmt = (ImageButton)rowSelect.FindControl("ImageButton1");

        string fp = Server.MapPath("~/UplodedContents/Notes/" + btncmt.CommandArgument);

        if (File.Exists(fp))
        {

            Response.Redirect("~/Download.aspx?path=" + fp);
        }
    }
}