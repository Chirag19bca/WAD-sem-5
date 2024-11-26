using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_preRenderComplete(object sender, EventArgs e)
    {
        System.IO.DirectoryInfo di = new System.IO.DirectoryInfo(Server.MapPath("~/image"));
        DataList1.DataSource = di.GetFiles();
        DataList1.DataBind();
    }
    protected void Button1_Click (object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.FileContent.Length < 1000000)
            {
                FileUpload1.SaveAs(Server.MapPath("~/image/" + FileUpload1.FileName));
            }
        }
    }
    protected void DataList1_SelectedIndexChanged (object sender, EventArgs e)
    {

    }
}