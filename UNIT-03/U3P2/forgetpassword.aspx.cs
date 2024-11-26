using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class Default4 : System.Web.UI.Page
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
            string pass;
            SqlCommand cmd = new SqlCommand("select * from registration where email = '" + TextBox2.Text + "'", cn);
            SqlDataReader dr;
            //cmd.CommandType = System.Data.CommandType.Text;
            dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {

                Label1.Text = "password request sent";
                Response.Redirect("http://localhost:41523/changepassword.aspx");


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