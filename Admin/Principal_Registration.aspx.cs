using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Principal_Registration : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (FileUpload_photo.PostedFile != null && FileUpload_photo.PostedFile.ContentLength > 0)
            UpLoadAndDisplay();
    }
    private void UpLoadAndDisplay()
    {
        string imgName = FileUpload_photo.FileName;
        string imgPath = "~/Admin/image/" + FileUpload_photo.FileName;
        int imgSize = FileUpload_photo.PostedFile.ContentLength;
        if (FileUpload_photo.PostedFile != null && FileUpload_photo.PostedFile.FileName != "")
        {
            FileUpload_photo.SaveAs(Server.MapPath(imgPath));
            Image_principal.ImageUrl = imgPath;
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
        Calendar1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox_name.Text;
        string gender = RadioButtonList_gender.SelectedItem.Value;
        string image = FileUpload_photo.FileName;
        //FileUpload_photo.SaveAs(Server.MapPath("~/Admin/image/" + FileUpload_photo.FileName));
        string dob = TextBox_dob.Text;
        string email = TextBox_email.Text;
        string contact = TextBox_contact.Text;
        string uname = TextBox_uname.Text;
        string pass = TextBox_password.Text;
        string q1 = "insert into logintable values('" + uname + "','" + pass + "','principal',1)select @@IDENTITY";
        object ob = db.execalar(q1);
        string q2 = "insert into principal values('" + name + "'," + gender + ",'" + image + "','" + dob + "','" + email + "','" + contact + "'," + ob + ")";
        int i = db.exenonquery(q2);
        if (i > 0)
        {
            Response.Write("<script>alert('Principal insertion success')</script>");
            
        }
        else
        {
            Response.Write("<script>alert('Principal insertion failure')</script>");
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox_dob.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
}