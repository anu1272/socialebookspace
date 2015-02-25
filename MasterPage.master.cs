using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UserInformationDataSetTableAdapters.PostTableAdapter pta;
        pta = new UserInformationDataSetTableAdapters.PostTableAdapter();
        currentThreadsListView.DataSource = pta.GetDataBySubject();
        currentThreadsListView.DataBind();
        if (Session["username"] != null)
        {
            fLoggedInUser.Text = "User: " + Session["username"].ToString().Trim();
            fMenuPanel.Visible = true;
        }
        else
        {
            fMenuPanel.Visible = false;
        }
        }
    
}