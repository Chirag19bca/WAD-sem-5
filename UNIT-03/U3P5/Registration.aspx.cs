using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ContinueButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

    }
    protected void CreateUserWizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        Profile.Fname = TextBox1.Text;
        Profile.Lname = TextBox2.Text;
        Profile.favcolor = TextBox3.Text;
        if (FileUpload1.HasFile == true)
        {
            string ext = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (ext.ToLower() == ".jpeg" || ext.ToLower() == ".jpg")
            {
                Profile.profilepic = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/secure/") + FileUpload1.FileName);
            }
        }
    }
}