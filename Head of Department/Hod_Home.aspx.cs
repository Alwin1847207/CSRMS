using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Head_of_Department_Hod_Home : System.Web.UI.Page
{
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
}