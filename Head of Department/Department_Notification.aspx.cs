﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Department_Notification : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox_date.Text = DateTime.Now.ToString();
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
        string date=TextBox_date.Text;
        string reason = TextBox_notification.Text;
        string sql = "insert into notification values('" + date + "','" + reason + "',"+lid+")";
        int i = db.exenonquery(sql);
        if (i > 0)
        {
            Response.Write("<script>alert('Success')</script>");
        }
        else
        {
            Response.Write("<script>alert('Failure')</script>");
        }
    }
}