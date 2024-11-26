using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Sadhu\Documents\WAD-sem-5\U4P10\App_Data\Database.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select sd.Ino,sd.Pcode,sd.Qty,p.Pname,p.Price,sd.Uprice * sd.Qty as 'Total' from Customer c,Product p,Smaster sm,Sdetails sd where sm.Ino=sd.Ino and sd.Pcode=p.Pcode and sm.Ccode=c.Ccode",cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        FormView1.DataSource = ds.Tables[0];
        FormView1.DataBind();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
        FormView1.PageIndex = e.NewPageIndex;
    }
}