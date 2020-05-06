using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Head_of_Department_Update_semester : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            db.fillgrid("select * from student inner join department on student.did=department.did inner join teacher on student.did=teacher.did order by sem", GridView1);
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i=0;
        foreach (GridViewRow gvr in GridView1.Rows)
        {
            int sid = Convert.ToInt32(GridView1.DataKeys[gvr.RowIndex].Value);
            RadioButtonList rbl1 = (RadioButtonList)gvr.FindControl("RadioButtonList1");
            if (rbl1.Items[0].Selected == true)
            {
                RadioButtonList rbl2 = (RadioButtonList)gvr.FindControl("RadioButtonList3");
                string val = rbl2.SelectedItem.Value;
                string sq = "Update student set sem= '"+val+"' where sid="+sid;
                i = db.exenonquery(sq);
            }
        }
        if (i > 0)
        {
            Response.Write("<script>alert('Insertion success')</script>");
        }
        else
        {
            Response.Write("<script>alert('Insertion failure')</script>");
        }
    }
    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        RadioButtonList rbl;
        GridViewRow rowsel = (GridViewRow)(((RadioButtonList)sender).NamingContainer);
        rbl = (RadioButtonList)rowsel.FindControl("RadioButtonList2");
        if (rbl.Items[0].Selected == true)
        {
            foreach (GridViewRow gvr in GridView1.Rows)
            {
                RadioButtonList rb = (RadioButtonList)gvr.FindControl("RadioButtonList1");
                rb.Items[0].Selected = true;
              //  rb.Items[1].Selected = false;
            }
        }
    }
}