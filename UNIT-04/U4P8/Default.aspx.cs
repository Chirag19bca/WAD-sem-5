using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Sadhu\Documents\Exam-sem-5\WAD-I\UNIT-04\U4P8\App_Data\Database.mdf;Integrated Security=True");
    static int recptr = 0;
    static DataTable dt = new DataTable();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        /*SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Sadhu\Documents\Exam-sem-5\WAD-I\UNIT-04\U4P8\App_Data\Database.mdf;Integrated Security=True");
        cn.Open();
        Label1.Text = cn.State.ToString();*/
        if (!IsPostBack)
        {
            recptr = 0;
            fillTextBox();
            fillgrid();
           
        }
    }
    public void fillgrid()
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from student",cn);
        da.SelectCommand = cmd;
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        cn.Close();
    }
    public void clearTextBox()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    public void fillTextBox()
    {
        dt.Clear();
        da = new SqlDataAdapter("select * from student",cn);
        da.Fill(dt);
        TextBox1.Text = dt.Rows[recptr][0].ToString();
        TextBox2.Text = dt.Rows[recptr][1].ToString();
        TextBox3.Text = dt.Rows[recptr][2].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //insert record in table
        cn.Open();
        SqlCommand cmd = new SqlCommand("insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        fillgrid();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Ipdate
        cn.Open();
        SqlCommand cmd = new SqlCommand("update student set name='"+TextBox2.Text+"',marks='"+TextBox3.Text+"' where rollno='"+TextBox1.Text, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        fillgrid();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //delete
        cn.Open();
        SqlCommand cmd = new SqlCommand("delete from student where rollno='"+TextBox1.Text, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        fillgrid();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //select or display records
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from student where rollno='"+TextBox1.Text, cn);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox1.Text = dr[0].ToString();
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
        }
        cn.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        recptr = 0;
        fillTextBox();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (recptr < dt.Rows.Count - 1)
        {
            recptr++;
            fillTextBox();
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        if (recptr > 0)
        {
            recptr--;
            fillTextBox();
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        recptr = dt.Rows.Count - 1;
        fillTextBox();
    }
}