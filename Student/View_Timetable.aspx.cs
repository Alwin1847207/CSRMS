using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_View_Timetable : System.Web.UI.Page
{
    dboperation db = new dboperation();

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
    protected void RadioButtonList_year_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = RadioButtonList_year.SelectedItem.Value;
        db.fillddl("select * from semester where batch=" + a, DropDownList_sem, "sem", "semid");
    }
    protected void DropDownList_dep_SelectedIndexChanged(object sender, EventArgs e)
    {
        string dep = DropDownList_dep.SelectedItem.Value;
    }
    protected void GridView_timetable_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string lid = Session["login_id"].ToString();
        string did = DropDownList_dep.SelectedItem.Value;
        string b = RadioButtonList_year.SelectedValue;
        string semid = DropDownList_sem.SelectedItem.Value;
        object ob = db.execalar("select count(distinct dayid) from timetable");
        DataTable dt1 = db.exetable("select * from timetable inner join subject on timetable.sid=subject.sid inner join day on timetable.dayid=day.dayid where timetable.did="+did+" and timetable.semid="+semid);
        DataTable dt2 = new DataTable("abc");
        DataColumn dtc;
        DataRow dtr;

        dtc = new DataColumn();
        dtc.Caption = "Day";
        dtc.ColumnName = "id";
        dt2.Columns.Add(dtc);

        dtc=new DataColumn();
        dtc.Caption="1";
        dtc.ColumnName="1";
        dt2.Columns.Add(dtc);

        dtc = new DataColumn();
        dtc.Caption = "2";
        dtc.ColumnName = "2";
        dt2.Columns.Add(dtc);

        dtc = new DataColumn();
        dtc.Caption = "3";
        dtc.ColumnName = "3";
        dt2.Columns.Add(dtc);

        dtc = new DataColumn();
        dtc.Caption = "4";
        dtc.ColumnName = "4";
        dt2.Columns.Add(dtc);

        dtc = new DataColumn();
        dtc.Caption = "5";
        dtc.ColumnName = "5";
        dt2.Columns.Add(dtc);

        for (int j = 0; j < dt1.Rows.Count; j = j + 5)
        {
            dtr = dt2.NewRow();
            for (int i = 0; i < 5; i++)
            {
                dtr["id"] = dt1.Rows[j]["dayname"].ToString();
                if (dt1.Rows[i]["hid"].ToString() == "6") 
                {
                    dtr["1"] = dt1.Rows[j + i]["subjectname"].ToString();
                }
                if (dt1.Rows[i]["hid"].ToString() == "7") 
                {
                    dtr["2"] = dt1.Rows[j + i]["subjectname"].ToString();
                }
                if (dt1.Rows[i]["hid"].ToString() == "8") 
                {
                    dtr["3"] = dt1.Rows[j + i]["subjectname"].ToString();
                }
                if (dt1.Rows[i]["hid"].ToString() == "9") 
                {
                    dtr["4"] = dt1.Rows[j + i]["subjectname"].ToString();
                }
                if (dt1.Rows[i]["hid"].ToString() == "10") 
                {
                    dtr["5"] = dt1.Rows[j + i]["subjectname"].ToString();
                }
            }
            dt2.Rows.Add(dtr);
        }
        GridView_timetable.DataSource = dt2;
        GridView_timetable.DataBind();
    }
}