using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InvalidInquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Server.Transfer("InvalidAccess.aspx");
        }

    }
    protected void fOkeyButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("Homepage.aspx");
    }
}