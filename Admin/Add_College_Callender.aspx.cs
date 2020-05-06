using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_image_Add_College_Callender : System.Web.UI.Page
{
    dboperation db= new dboperation();
    string imgPath;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login_id"] == null)
        {
            Response.Redirect("~/Home_Project.aspx");
        }
        Response.Cache.SetNoStore();
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
    }
    private void UpLoadAndDisplay()
    {
        string imgName = FileUpload1.FileName;
        imgPath = "~/UplodedContents/callender/" + FileUpload1.FileName;
        int imgSize = FileUpload1.PostedFile.ContentLength;
        if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
        {
            FileUpload1.SaveAs(Server.MapPath(imgPath));
            ImageButton1.CommandArgument = FileUpload1.FileName;
           
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string year = TextBox1.Text;
        if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.ContentLength > 0)
            UpLoadAndDisplay();
       // string sql;
        string sql1 = "select * from callender where filename='" + FileUpload1.FileName+ "'";
        DataTable dt = db.exetable(sql1);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>slert('Data Exist')</script>");
        }
        else
        {
            int i = db.exenonquery("insert into callender values('" + FileUpload1.FileName + "','" + year + "')");
            if (i > 0)
            {
                Response.Write("<script>alert('Insertion Success')</script>");
               
            }
            else
            {
                Response.Write("<script>alert('Insertion failure')</script>");
            }
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //GridViewRow rowSelect = (GridViewRow)(((ImageButton)sender).NamingContainer);

        //ImageButton btncmt = (ImageButton)rowSelect.FindControl("ImageButton1");

        //string id = btncmt.CommandArgument;

    //    DataTable dt = db.exetable("select * from certificate where cid=" + id);
        string fp = Server.MapPath("~/UplodedContents/callender/"+ImageButton1.CommandArgument);

        if (File.Exists(fp))
        {

            Response.Redirect("~/Download.aspx?path=" + fp);
        }
    }
}