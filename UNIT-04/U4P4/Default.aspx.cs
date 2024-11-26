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
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Sadhu\Documents\Exam-sem-5\WAD-I\UNIT-04\U4P4\App_Data\Database.mdf;Integrated Security=True");
        cn.Open();
        Label1.Text = cn.State.ToString();
    }
}