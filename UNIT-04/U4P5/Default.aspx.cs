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
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Sadhu\Documents\WAD-sem-5\U4P5\App_Data\Database.mdf;Integrated Security=True");
    static DataTable dt = new DataTable();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //insert record in table
        FileUpload1.SaveAs(Server.MapPath("~/images/")+Path.GetFileName(FileUpload1.FileName));
        string img = "images/" + Path.GetFileName(FileUpload1.FileName);
        cn.Open();
        SqlCommand cmd = new SqlCommand("insert into Product values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + img + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + TextBox5.Text + "')", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Label2.Visible = true;
        Image1.ImageUrl = "images/" + Path.GetFileName(FileUpload1.FileName);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from Product where Pcode='"+TextBox1.Text+"'",cn);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox1.Text = dr[0].ToString();
            TextBox2.Text = dr[1].ToString();
            Image1.ImageUrl = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox4.Text = dr[4].ToString();
            TextBox5.Text = dr[5].ToString();

        }
    }
}