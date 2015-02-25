using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == null)
        {
            Server.Transfer("InvalidAccess.aspx");
        }
    }
    protected void fCancelButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("Homepage.aspx");
    }
    protected void fUpdateButton_Click(object sender, EventArgs e)
    {

        string vCurrentPassword = fCurrentPassword.Text.Trim();
        string vNewPassword = fNewPassword.Text.Trim();
        string vUsername = Session["username"].ToString();
        UserInformationDataSetTableAdapters.UserLoginTableAdapter uta;
        uta = new UserInformationDataSetTableAdapters.UserLoginTableAdapter();
        if (Session["password"].ToString().Equals(vCurrentPassword))
        {
            Session.Remove("password");

            Session.Add("password", vNewPassword);
            fChangePasswordMessages.Text = "Password updated successfully";
            fNewPassword.Text = "";
            fConfirmPassword.Text = "";
        }
        else
        {
            fChangePasswordMessages.Text = "Invalid Current Password!!!";
        }

    }
}   
 