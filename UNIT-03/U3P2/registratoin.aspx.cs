using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\chirag@3013\WAD-I\U3P2\App_Data\Database.mdf;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        //Label1.Text = cn.State.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlCommand cmd = new SqlCommand("insert into registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", cn);
            cmd.ExecuteNonQuery();
            Label1.Text = "Registration successfully completed...";
            cmd.Dispose();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;  
        }
    }
}