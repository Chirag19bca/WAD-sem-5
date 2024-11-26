using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class secure_UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Profile.Fname;
        TextBox2.Text = Profile.Lname;
        TextBox3.Text = Profile.favcolor;
        Image1.ImageUrl = Profile.profilepic;

    }
}