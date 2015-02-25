using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeletePostForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int vId = Int32.Parse(Request["id"].ToString());
        UserInformationDataSetTableAdapters.PostTableAdapter pta;
        pta = new UserInformationDataSetTableAdapters.PostTableAdapter();
        pta.Delete(vId);
        Server.Transfer("ViewPostForm.aspx");

    }
}