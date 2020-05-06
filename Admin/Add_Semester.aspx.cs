using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add_Semester : System.Web.UI.Page
{
    dboperation db=new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            db.fillddl("select * from department", DropDownList_dep, "dname", "did");
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
        string department = DropDownList_dep.SelectedItem.Value;
        string batch = RadioButtonList1.SelectedItem.Value;
        string sem = TextBox_sem.Text;
        string sql1 = "select * from semester where sem='" + sem + "'";
        DataTable dt = db.exetable(sql1);
        if(dt.Rows.Count>0)
        {
            Response.Write("<script>slert('Data Exist')</script>");
        }
        else
        {
        string sql = "insert into semester values("+batch+",'" +sem+ "')";
        int i = db.exenonquery(sql);
        if (i > 0)
        {
            Response.Write("<script>alert('Insertion Success')</script>");
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        else
        {
            Response.Write("<script>alert('Insertion Failure')</script>");
        }
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}