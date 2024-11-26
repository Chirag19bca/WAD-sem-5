using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["myvalcookie"] != null)
        {
            Label1.Text = "<B>Item No: </B>" + Request.Cookies["myvalcookie"]["I_no"];
            Label2.Text = "<B>Item Name: </B>" + Request.Cookies["myvalcookie"]["I_name"];
            Label3.Text = "<B>Item Price: </B>" + Request.Cookies["myvalcookie"]["I_price"];
            Label4.Text = "<B>Item Qty: </B>" + Request.Cookies["myvalcookie"]["I_qty"];
        }
    }
}