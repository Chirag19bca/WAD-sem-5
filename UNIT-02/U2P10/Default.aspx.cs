using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chirag(object sender, DayRenderEventArgs e)
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Sadhu\Documents\WAD-sem-5\U2P10\App_Data\Database.mdf;Integrated Security=True");
        cn.Open();
        SqlCommand cmd = new SqlCommand("Select * from FriendsDetails", cn);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            DateTime dt = (DateTime)dr.GetValue(2);
            DateTime dt1 = e.Day.Date;
            if (dt.Month == dt1.Month)
            {
                if (Convert.ToString(dt.Day) == e.Day.DayNumberText)
                {
                    int n = (int)dr.GetValue(0);
                    LiteralControl l = new LiteralControl("<br /><a href=Default2.aspx?EventID=" + n + ">Birthday</a>");
                   e.Cell.Controls.Add(l);
                    Label1.Text= "<br /><a herf=Default2.aspx?EventID=" + n + ">Birthday</a>";
                   
                }
            }
        }
        dr.Close();
        cmd.Dispose();
    }
}
