using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_Notifications : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = db.exetable("select * from notification");
        string s1;
        s1 = "<table><tr><td>";
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            s1 += "<a href='#'>" + dt.Rows[i][1].ToString() + "," + dt.Rows[i][2].ToString() + "</a></td>";
            s1 += "<br/>";
        }
        s1 += "</tr></table>";
        lt2.Text = s1.ToString();
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

    //protected void Page_Load(object sender, EventArgs e)
    //{
    //   // DataTable dt = db.exetable("select * from Notification");
    //    //ContentPlaceHolder content = (ContentPlaceHolder)this.Master.FindControl("ContentPlaceHolder1");
    //   // if (dt.Rows.Count < 0)
    //   // {
    //   // print in grid
    //   // }
    //}
}