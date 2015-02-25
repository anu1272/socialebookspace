using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReplyPostForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int vId = Int32.Parse(Request["id"]);
        UserInformationDataSetTableAdapters.PostTableAdapter pta;
        pta = new UserInformationDataSetTableAdapters.PostTableAdapter();
        postListView.DataSource = pta.GetDataByPostId(vId);
        postListView.DataBind();
    }


    protected void fReplyButton_Click(object sender, EventArgs e)
    {
        int postId = Int32.Parse(Request["id"]);
        DateTime dateOfReply = DateTime.Now;
        string vUsername = Session["username"].ToString();
        string replyText = fReplyTextBox.Text.Trim();
        UserInformationDataSetTableAdapters.ReplyTableAdapter rta;
        rta = new UserInformationDataSetTableAdapters.ReplyTableAdapter();
        rta.Insert(postId, vUsername, dateOfReply, replyText);
        Server.Transfer("ViewPostForm.aspx");
    }
}