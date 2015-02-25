using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class ViewProfileForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UserInformationDataSetTableAdapters.MemberTableAdapter mta;
        mta = new UserInformationDataSetTableAdapters.MemberTableAdapter();
        profileListView.DataBind();
        string vUsername = Session["username"].ToString();
        profileListView.DataSource = mta.GetDataByUsername(vUsername);
        profileListView.DataBind();
    }
    public string GetUserImagePath(object image_name)
    {
        return "~/UploadedPhotos/" + image_name.ToString();
    }
}