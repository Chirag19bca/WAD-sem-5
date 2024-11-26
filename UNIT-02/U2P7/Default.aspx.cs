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
        HttpCookie ck = new HttpCookie("myvalcookie");
        ck.Values.Add("I_no", TextBox1.Text);
        ck.Values.Add("I_name", TextBox2.Text);
        ck.Values.Add("I_price", TextBox3.Text);
        ck.Values.Add("I_qty", TextBox4.Text);
        Response.Cookies.Add(ck);
        Response.Redirect("~/Default2.aspx");
    }
}