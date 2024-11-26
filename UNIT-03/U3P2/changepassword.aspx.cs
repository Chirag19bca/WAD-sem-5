using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default5 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\chirag@3013\WAD-I\U3P2\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            if (TextBox3.Text == TextBox2.Text)
            {
                SqlCommand cmd = new SqlCommand("update registration set password = '" + TextBox2.Text + "' where username='" + TextBox1.Text + "'", cn);
                //cmd.CommandType = System.Data.CommandType.Text;
                cmd.ExecuteNonQuery();
                Label1.Text = "User Password Updated";
                cmd.Dispose();

            }
            else
            {
                Label1.Text = "password and re-password  are not same";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}