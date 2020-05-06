using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Teacher_Registration : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            db.fillddl("select * from department", DropDownList_department, "dname", "did");
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
            Imagebox.ImageUrl = imgPath;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox_name.Text;
        string gender = RadioButtonList1.SelectedItem.Value;
        string department = DropDownList_department.SelectedItem.Value;
        string image = FileUpload_photo.FileName;
        string role = "";
        string dob = TextBox_dob.Text;
        string email = TextBox_email.Text;
        string contact = TextBox_contact.Text;
        string addr = TextBox_address.Text; ;
        string uname = TextBox_uname.Text;
        string pass = TextBox_password.Text;
            if (RadioButtonList_Role.Items[0].Selected == true)
            {
                role = "teacher";
                string q1 = "insert into logintable values('" + uname + "','" + pass + "','"+role+"',1)select @@IDENTITY";
               object ob = db.execalar(q1);
               string q2 = "insert into teacher values('" + name + "'," + gender + ",'" + image + "','" + dob + "','" + email + "','" + contact + "','" + addr + "','" + role + "'," + ob + "," + department + ")";
               int j = db.exenonquery(q2);
               if (j > 0)
               {
                   Response.Write("<script>alert('Teacher insertion success')</script>");
                  
               }
               else
               {
                   Response.Write("<script>alert('Teacher insertion failure')</script>");
               }
            }
            else if (RadioButtonList_Role.Items[1].Selected == true)
            {
                role = "hod";
                string q1 = "insert into logintable values('" + uname + "','" + pass + "','"+role+"',1)select @@IDENTITY";
                object ob = db.execalar(q1);
                string q2 = "insert into teacher values('" + name + "'," + gender + ",'" + image + "','" + dob + "','" + email + "','" + contact + "','" + addr + "','" + role + "'," + ob + "," + department + ")";
                int j = db.exenonquery(q2);
                if (j > 0)
                {
                    Response.Write("<script>alert('HOD insertion success')</script>");
                    Response.Redirect(Request.Url.AbsoluteUri);
                }
                else
                {
                    Response.Write("<script>alert('HOD insertion failure')</script>");
                }
                Response.Redirect(Request.Url.AbsoluteUri);
            }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox_dob.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

}