using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click (object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        int ans;
        ans = obj.sum(Convert.ToInt16(TextBox1.Text), Convert.ToInt16(TextBox2.Text));
        Label1.Text = "Sum is:" + Convert.ToString(ans);
    }
    protected void Button2_Click (object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        int ans;
        ans = obj.multy(Convert.ToInt16(TextBox1.Text), Convert.ToInt16(TextBox2.Text));
        Label1.Text = "Multiplication is:" + Convert.ToString(ans);
    }
}