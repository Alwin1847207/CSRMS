using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_View_Attendance : System.Web.UI.Page
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
           // db.fillgrid("select student.name as Name,test.ab_count as Absent_hour from student left join (select count('semid') as ab_count,absent.sid from attendance inner join absent on attendance.atid=absent.atid  group by absent.sid) test on student.sid=test.sid where batch=1", GridView1);
            string str;
            str = Session["login_id"].ToString();
            DataTable dt = db.exetable("select sid from student where lid=" + str);
            db.fillgrid("select count('semid') as HOUR,attendance.date as DATE from attendance inner join absent on attendance.atid=absent.atid where absent.sid=" + dt.Rows[0][0].ToString() + " group by attendance.date ", GridView1);

            object dt2 = db.execalar("select sum(k.p) as cnt from (select count(semid) as p,attendance.date from attendance inner join absent on attendance.atid=absent.atid where absent.sid=" + dt.Rows[0][0].ToString() + " group by attendance.date ) k");
            Label1.Text = dt2.ToString();

            object dt3 = db.execalar("select count('date') as p from (select distinct date from attendance) dt");
            Label2.Text = (Convert.ToInt32(dt3) * 5).ToString();
            Label3.Text = dt3.ToString();
             
             double totp=0;
            if (Label1.Text != "")
            {
                int qu = Convert.ToInt32(Label1.Text) / 5;
                int re = Convert.ToInt32(Label1.Text) % 5;
                totp = Convert.ToInt32(dt3);
                if (qu > 0)
                {
                    totp = totp - qu;
                }
                if (re >= 3)
                {
                    totp = totp - .5;
                }
            }
            Label4.Text = totp.ToString();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}