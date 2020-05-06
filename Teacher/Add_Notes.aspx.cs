using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_Add_Notes : System.Web.UI.Page
{
    dboperation db = new dboperation();
    string imgPath;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            db.fillddl("select * from department", DropDownList1, "dname", "did");
        }
    }
    private void UpLoadAndDisplay()
    {
        string imgName = FileUpload1.FileName;
        imgPath = "~/UplodedContents/Notes/" + FileUpload1.FileName;
        int imgSize = FileUpload1.PostedFile.ContentLength;
        if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
        {
            FileUpload1.SaveAs(Server.MapPath(imgPath));
            ImageButton1.CommandArgument = FileUpload1.FileName;

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
        string a = DropDownList1.SelectedItem.Value;
        string b = DropDownList2.SelectedItem.Value;
        string c = DropDownList3.SelectedItem.Value;
        if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.ContentLength > 0)
            UpLoadAndDisplay();
        int i = db.exenonquery("insert into notes values("+c+","+b+",'" + FileUpload1.FileName + "'," +lid+")");
        if (i > 0)
        {
            Response.Write("<script>alert('Insertion Success')</script>");
        }
        else
        {
            Response.Write("<script>alert('Insertion failure')</script>");
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList1.SelectedItem.Value;
        db.fillddl("select * from semester ", DropDownList2, "sem", "semid");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string b = DropDownList2.SelectedItem.Value;
        db.fillddl("select * from subject where subject.semid=" + b, DropDownList3, "subjectname", "sid");
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string c = DropDownList3.SelectedItem.Value;
    }
}