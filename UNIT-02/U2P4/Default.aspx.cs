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
        int cntr = 1;
        if (Request.Cookies["mycookies"] != null)
        {
            cntr = Convert.ToInt16(Request.Cookies["mycookies"].Value);
            cntr++;
        }
        HttpCookie ck = new HttpCookie("mycookies");
        ck.Value = Convert.ToString(cntr);
        Response.Cookies.Add(ck);
        Label1.Text = "<B> This Page is Visited for " + Convert.ToString(cntr) + " times on this Computer</B>";
    }
}