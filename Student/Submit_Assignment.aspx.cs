using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_Submit_Assignment : System.Web.UI.Page
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
            db.fillddl("select * from subject", DropDownList_subject, "subjectname", "sid");
        }
        if (FileUpload_assignment.PostedFile != null && FileUpload_assignment.PostedFile.ContentLength > 0)
        {
            string Name = FileUpload_assignment.FileName;
            string path = "~/UplodedContents/Assignments/" + FileUpload_assignment.FileName;
            int size = FileUpload_assignment.PostedFile.ContentLength;
            if (FileUpload_assignment.PostedFile != null && FileUpload_assignment.PostedFile.FileName != "")
            {
                FileUpload_assignment.SaveAs(Server.MapPath(path));
                //Image_preview.ImageUrl = path;
            }
        }
    }
    protected void DropDownList_subject_SelectedIndexChanged(object sender, EventArgs e)
    {
        string subject = DropDownList_subject.SelectedItem.Value;
        string sql = "select assignment_question from assignment where sid=" + subject;
        db.fillddl("select * from assignment where aid not in (select aid from assignment_submitted where lid=" + Session["login_id"] + ")", DropDownList_topic, "assignment_question", "aid");
        string id = DropDownList_topic.SelectedItem.Value;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string lid = Session["login_id"].ToString();
        string subject = DropDownList_subject.SelectedItem.Value;
        string id = DropDownList_topic.SelectedItem.Value;
        string path = "~/UplodedContents/Assignments/" + FileUpload_assignment.FileName;
        string sql = "insert into assignment_submitted values(" + id + "," + lid + ",'" + path + "',0)";
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