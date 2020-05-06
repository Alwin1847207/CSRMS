using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.IO;

public partial class Admin_Student_Registration : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBoxsem.Text = "I SEM";
        if (!IsPostBack)
        {
            db.fillddl("select * from department", DropDownList1, "dname", "did");
        }
        if (FileUpload_photo.PostedFile != null && FileUpload_photo.PostedFile.ContentLength > 0)
            UpLoadAndDisplay();  
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
    private void UpLoadAndDisplay()
    {
        string imgName = FileUpload_photo.FileName;
        string imgPath = "~/Admin/image/" + FileUpload_photo.FileName;
        int imgSize = FileUpload_photo.PostedFile.ContentLength;
        if (FileUpload_photo.PostedFile != null && FileUpload_photo.PostedFile.FileName != "")
        {
            FileUpload_photo.SaveAs(Server.MapPath(imgPath));
            Imageuploaded.ImageUrl = imgPath;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox_name.Text;
        string gender = RadioButtonList1.SelectedItem.Value;
        string admno = TextBox_adno.Text;
        
        //string batch = RadioButtonList_batch.SelectedItem.Value;
        string department = DropDownList1.SelectedItem.Value;
        string image = FileUpload_photo.FileName;
        //FileUpload_photo.SaveAs(Server.MapPath("~/Admin/image/" + FileUpload_photo.FileName));
        string dob = TextBox1.Text;
        string email = TextBox_email.Text;
        string cs = TextBox_contact_student.Text;
        string cp = TextBox_contact_parent.Text;
        string mailp = TextBox_parents_email.Text;
        string addr = TextBox_address.Text;
        string uname = TextBox_username.Text;
        string pass = TextBox_password.Text;
        string q1 = "insert into logintable values('" + uname + "','" + pass + "','student',1)select @@IDENTITY";
        object ob = db.execalar(q1);
        string q2 = "insert into student values('" + admno + "','" + name + "'," + gender + ",'I SEM','" + image + "','" + dob + "','" + email + "','" + cs + "','" + cp + "','" + addr + "'," + ob + "," + department + ",'"+mailp+"')";
        int i = db.exenonquery(q2);
        if (i > 0)
        {
            Response.Write("<script>alert('Student insertion success')</script>");
            
         //   MailMessage msg = new MailMessage("sender mail"," recever mail");
          //  msg.Subject = "Student username and Password";
           // msg.Body = "USER NAME =" + TextBox_username.Text + " PASSWORD =" + TextBox_password.Text;
          //  SmtpClient s = new SmtpClient();
         //   s.Host = "smtp.gmail.com";
        //    s.EnableSsl = true;
        //    NetworkCredential Networkcred = new NetworkCredential("sender mail", "password");
       //     s.UseDefaultCredentials = true;
       //     s.Credentials = Networkcred;
       //     s.Port = 587;
       //     s.Send(msg);
       //     ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
        }
        else
        {
            Response.Write("<script>alert('Student insertion failure')</script>");
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
}