using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Download : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string filepath = Request.QueryString["path"].ToString();
        //string filepath = "";
        string filename = Path.GetFileName(filepath);
        Response.Clear();
        WebClient User = new WebClient();
        Byte[] FileBuffer = User.DownloadData(filepath);
        Response.ContentType = "application/pdf";
        Response.AddHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
        //Response.AddHeader("Content-Length", mfile.Length.ToString());
        Response.TransmitFile(filepath);
        Response.End();





    }
}