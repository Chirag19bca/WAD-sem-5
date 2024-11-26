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
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            TextBox5.Text = "Check In Date:" + TextBox1.Text;
            TextBox5.Text += "\n Number of Days:" + TextBox2.Text;
            TextBox5.Text += "\n Room Type:" + DropDownList1.SelectedItem;
            TextBox5.Text += "\n Number of Guest:" + TextBox3.Text;
            TextBox5.Text += "\n Advance Payment(Rs.):" + TextBox4.Text;
        }
        else 
        {
            TextBox5.Text = "Booking cancellled...";
        }
    }
}