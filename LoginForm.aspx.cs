using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string vUsername = fLoginControl.UserName;
        string vPassword = fLoginControl.Password;
        UserInformationDataSet.UserLoginDataTable udt;
        UserInformationDataSetTableAdapters.UserLoginTableAdapter uta;
        uta = new UserInformationDataSetTableAdapters.UserLoginTableAdapter();
        udt = uta.GetDataByUsernameAndPassword(vUsername,vPassword);
        if (udt.Rows.Count == 0)
        {
            e.Authenticated = false;
        }
        else
        {
            e.Authenticated = true;
            Session.Add("username",vUsername);
            Session.Add("password",vPassword);
            System.Threading.Thread.Sleep(3000);
        }
    }
}