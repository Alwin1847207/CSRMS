using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Principal_MasterPage_Principal : System.Web.UI.MasterPage
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string lid = Session["Login_id"].ToString();
            string sql = "select * from logintable where lid=" + lid;
            DataTable dt = db.exetable(sql);
            Label1.Text = dt.Rows[0][1].ToString();

        }
    }
}
