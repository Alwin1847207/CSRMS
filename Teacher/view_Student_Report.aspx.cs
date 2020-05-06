using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_view_Student_Report : System.Web.UI.Page
{
    dboperation db = new dboperation();

    protected void Page_Load(object sender, EventArgs e)
    { if (!IsPostBack)
        {
        string slid = Session["login_id"].ToString();
        db.fillddl("select * from student inner join teacher on student.did=teacher.did and teacher.lid=" + slid, DropDownList1, "name", "lid");
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
        Session["ctrl"] = Panel1;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=700px,width=800px,scrollbars=1');</script>");

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
             string lid = DropDownList1.SelectedItem.Value;
        DataTable dt = db.exetable("select * from student where lid=" + lid);
        Label5.Text = dt.Rows[0]["name"].ToString();
        Label6.Text = dt.Rows[0]["email"].ToString();
        Label7.Text = dt.Rows[0]["admn"].ToString();
        Label9.Text = dt.Rows[0]["sem"].ToString();
        Label10.Text = dt.Rows[0]["gender"].ToString();
        Image1.ImageUrl = "~/UplodedContents/images/" + dt.Rows[0]["photo"].ToString();
        Label11.Text = dt.Rows[0]["dob"].ToString();
        Label12.Text = dt.Rows[0]["cstudent"].ToString();
        Label13.Text = dt.Rows[0]["cparent"].ToString();
        Label14.Text = dt.Rows[0]["address"].ToString();
        DataTable dt2 = db.exetable("select * from logintable where lid=" + lid);
        Label15.Text = dt2.Rows[0]["uname"].ToString();
        Label16.Text = dt2.Rows[0]["password"].ToString();
        DataTable dt1 = db.exetable("select * from internalmarks inner join subject on internalmarks.subjectid=subject.sid  inner join semester on semester.semid=internalmarks.semester where internalmarks.studentid=" + dt.Rows[0][0].ToString());
        if (dt1.Rows.Count > 0)
        {
            db.fillgrid("select * from internalmarks inner join subject on internalmarks.subjectid=subject.sid  inner join semester on semester.semid=internalmarks.semester where internalmarks.studentid=" + dt.Rows[0][0].ToString(), GridView1);
        }
        else
        {
            Label2.Text = "No Internal Mark Added";
        }

        DataTable dt3 = db.exetable("select * from internal_mark inner join subject on subject.sid=internal_mark.subjectid inner join internal_exam_name on internal_exam_name.intexmid=internal_mark.intextype inner join max_mark on max_mark.intextype=internal_mark.intexmid where internal_mark.studentid=" + dt.Rows[0][0].ToString() + " and internal_mark.intextype=1");
        if (dt3.Rows.Count > 0)
        {
            db.fillgrid("select * from internal_mark inner join subject on subject.sid=internal_mark.subjectid inner join internal_exam_name on internal_exam_name.intexmid=internal_mark.intextype inner join max_mark on max_mark.intextype=internal_mark.intexmid where internal_mark.studentid=" + dt.Rows[0][0].ToString() + " and internal_mark.intextype=1", GridView2);
        }
        else
        {
            Label3.Text = "No Fist Internal Mark Added";
        }

        DataTable dt4 = db.exetable("select * from internal_mark inner join subject on subject.sid=internal_mark.subjectid inner join internal_exam_name on internal_exam_name.intexmid=internal_mark.intextype inner join max_mark on max_mark.intextype=internal_mark.intexmid where internal_mark.studentid=" + dt.Rows[0][0].ToString() + " and internal_mark.intextype=2");
        if (dt4.Rows.Count > 0)
        {
            db.fillgrid("select * from internal_mark inner join subject on subject.sid=internal_mark.subjectid inner join internal_exam_name on internal_exam_name.intexmid=internal_mark.intextype inner join max_mark on max_mark.intextype=internal_mark.intexmid where internal_mark.studentid=" + dt.Rows[0][0].ToString() + " and internal_mark.intextype=2", GridView3);
        }
        else
        {
            Label4.Text = "No Second Internal Mark Added";
        }
        //string str;
        //str = Session["login_id"].ToString();
        DataTable dtq = db.exetable("select sid from student where lid=" + lid);
        db.fillgrid("select count('semid') as HOUR,attendance.date as DATE from attendance inner join absent on attendance.atid=absent.atid where absent.sid=" + dtq.Rows[0][0].ToString() + " group by attendance.date ", GridView4);

        object dt2q = db.execalar("select sum(k.p) as cnt from (select count(semid) as p,attendance.date from attendance inner join absent on attendance.atid=absent.atid where absent.sid=" + dtq.Rows[0][0].ToString() + " group by attendance.date ) k");
        Label17.Text = dt2.ToString();

        object dt3q = db.execalar("select count('date') as p from (select distinct date from attendance) dt");
        Label18.Text = (Convert.ToInt32(dt3q) * 5).ToString();
        Label19.Text = dt3q.ToString();

        double totp = 0;
        if (Label17.Text != "")
        {
            int qu = Convert.ToInt32(Label17.Text) / 5;
            int re = Convert.ToInt32(Label17.Text) % 5;
            totp = Convert.ToInt32(dt3q);
            if (qu > 0)
            {
                totp = totp - qu;
            }
            if (re >= 3)
            {
                totp = totp - .5;
            }
        }
        Label20.Text = totp.ToString();

                   
    }
}