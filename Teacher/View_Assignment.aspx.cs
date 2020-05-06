using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_View_Assignment : System.Web.UI.Page
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
            string lid = Session["Login_id"].ToString();
            string sql = "select * from assignment inner join assignment_submitted on assignment_submitted.aid=assignment.aid inner join student on student.lid=assignment_submitted.lid";
            db.fillgrid(sql, GridView1);
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        string sql = "select * from assignment inner join assignment_submitted on assignment_submitted.aid=assignment.aid inner join student on student.lid=assignment_submitted.lid";
        db.fillgrid(sql, GridView1);

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        string sql = "select * from assignment inner join assignment_submitted on assignment_submitted.aid=assignment.aid inner join student on student.lid=assignment_submitted.lid";
        db.fillgrid(sql, GridView1);

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        TextBox mark = new TextBox();
        mark = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
         int i=db.exenonquery("update assignment_submitted set mark = "+mark.Text+" where submitid="+id+"");
         if (i > 0)
        {
            Response.Write("<script>alert('Insertion Success')</script>");
        }
        else
        {
            Response.Write("<script>alert('Insertion Failure')</script>");
        }
            string sql = "select * from assignment inner join assignment_submitted on assignment_submitted.aid=assignment.aid inner join student on student.lid=assignment_submitted.lid";
        db.fillgrid(sql, GridView1);
        GridView1.EditIndex = -1;

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        GridViewRow rowSelect = (GridViewRow)(((ImageButton)sender).NamingContainer);
        ImageButton btncmt = (ImageButton)rowSelect.FindControl("ImageButton1");

        string fp = Server.MapPath("~/UplodedContents/Assignments/" + btncmt.CommandArgument);

        if (File.Exists(fp))
        {

            Response.Redirect("~/Download.aspx?path=" + fp);
        }
    }
}