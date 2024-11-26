using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\chirag@3013\WAD-I\U4P9\App_Data\Database.mdf;Integrated Security=True");
    SqlCommand cmd;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cn.Open();
            DropDownList1.Items.Clear();
            cmd = new SqlCommand("select * from Department",cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr[1].ToString());
            }
            cn.Close();
            cn.Open();
            DropDownList2.Items.Clear();
            cmd = new SqlCommand("select * from State", cn);
            SqlDataReader dr2 = cmd.ExecuteReader();
            while (dr2.Read())
            {
                DropDownList2.Items.Add(dr2[1].ToString());
            }
            cn.Close();
            cn.Open();
            DropDownList3.Items.Clear();
            cmd = new SqlCommand("select * from City", cn);
            SqlDataReader dr3 = cmd.ExecuteReader();
            while (dr3.Read())
            {
                DropDownList3.Items.Add(dr3[1].ToString());
            }
            cn.Close();
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn.Open();
        DropDownList3.Items.Clear();
        cmd = new SqlCommand("select * from City c,State s where c.Scode=s.Scode and s.Name='"+DropDownList2.SelectedItem.ToString()+"'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            DropDownList3.Items.Add(dr[1].ToString());
        }
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        Int32 Scode, Ccode, Dcode;
        cmd = new SqlCommand("select Ccode from City where Cname='"+DropDownList3.SelectedItem+"'",cn);
        Ccode = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("select Dcode from Department where Dname='" + DropDownList1.SelectedItem + "'", cn);
        Dcode = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("select Scode from State where Sname='" + DropDownList2.SelectedItem + "'", cn);
        Scode = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        cn.Open();
        String Ecode = "";
        cmd = new SqlCommand("select max(Ecode) from Employee",cn);
        Ecode = Convert.ToString(cmd.ExecuteScalar());
        cn.Close();
        if (Ecode == "")
        {
            Ecode = "E001";
        }
        else
        {
            Int32 newcode;
            newcode = Convert.ToInt32(Ecode.Substring(1));
            newcode += 1;
            if (newcode.ToString().Length < 2)
            {
                Ecode = "E00" + newcode;
            }
            else
            {
                Ecode = "E0" + newcode;
            }
        }
        cn.Open();
        cmd = new SqlCommand("insert into Employee values('" + Ecode + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Dcode + "','" + Scode + "','" + Ccode + "')", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Label1.Text = "Record Saved Successfully";
    }
}