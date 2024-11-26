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
        String clr = "White";
        foreach (ListItem i in RadioButtonList1.Items)
        {
            if (i.Selected == true)
            {
                clr = i.Text;
            }
        }
        mybody.Style[HtmlTextWriterStyle.BackgroundColor] = clr;
    }
}