using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogoutMessageForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Session.Remove("username");
            Session.Remove("password");
        }
    }
    protected void fOkeyButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("LoginForm.aspx");
    }
}