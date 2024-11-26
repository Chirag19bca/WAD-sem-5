using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\chirag@3013\WAD-I\U3P2\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
       // Label1.Text = cn.State.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("select * from registration where password = '"+TextBox2.Text+"'",cn);
            SqlDataReader dr;
            //cmd.CommandType = System.Data.CommandType.Text;
            dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {
                Label1.Text = "Welcome " + dr["Username"].ToString();
                cmd.Dispose();
            }
            else
            {
                Label1.Text = "Username or Password Incorrect";
                cmd.Dispose();
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}