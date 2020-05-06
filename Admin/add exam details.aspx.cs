using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_add_exam_details : System.Web.UI.Page
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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string exname = TextBox1.Text;
        int mxmrk = Convert.ToInt32(TextBox2.Text);
         string sql11 = "select * from internal_exam_name where sem='" + exname + "'";
        DataTable dt = db.exetable(sql11);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>slert('Data Exist')</script>");
        }
        else
        {
            string sql1 = "insert into internal_exam_name values('" + exname + "')";

            int j = db.exenonquery(sql1);
            if (j > 0)
            {
                Response.Write("<script>alert('Insertion Success')</script>");
                
            }
            else
            {
                Response.Write("<script>alert('Insertion Failure')</script>");
            }

            string sql2 = "insert into max_mark values(" + mxmrk + ")";

            int i = db.exenonquery(sql2);
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
}