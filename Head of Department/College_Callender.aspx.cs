using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Head_of_Department_College_Callender : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string lid = Session["Login_id"].ToString();
            string sql = "select * from callender";
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        GridViewRow rowSelect = (GridViewRow)(((ImageButton)sender).NamingContainer);
        ImageButton btncmt = (ImageButton)rowSelect.FindControl("ImageButton1");

        string fp = Server.MapPath("~/UplodedContents/callender/" + btncmt.CommandArgument);

        if (File.Exists(fp))
        {

            Response.Redirect("~/Download.aspx?path=" + fp);
        }

    }
}