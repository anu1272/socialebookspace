using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewPostForm : System.Web.UI.Page
{
    UserInformationDataSet.PostDataTable pdt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Server.Transfer("InvalidAccess.aspx");
        }
        UserInformationDataSetTableAdapters.PostTableAdapter pta;
       pta=new UserInformationDataSetTableAdapters.PostTableAdapter();
       pdt = pta.GetData();
       
    }
    protected void DataPager1_PreRender(object sender, EventArgs e)
    {
        postsListView.DataSource = pdt;
        postsListView.DataBind();
    }
    public string GetDeleteURL(object  data)
    {
      return "~/DeletePostForm.aspx?id=" + data.ToString();
      
    }
    protected bool GetDeletableURL(object data)
    {
        return true;
       
    }
     
    protected void sortByDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        UserInformationDataSetTableAdapters.PostTableAdapter pta;
        pta = new UserInformationDataSetTableAdapters.PostTableAdapter();
        if (sortByDropDownList.SelectedItem.ToString().Equals("Username"))
        {
            pdt = pta.GetDataByUsername();
        }
        if (sortByDropDownList.SelectedItem.ToString().Equals("Subject"))
        {
            pdt = pta.GetDataBySubject();
        }
        if (sortByDropDownList.SelectedItem.ToString().Equals("Date"))
        {
            pdt = pta.GetData();
        }
        

    }
    public UserInformationDataSet.ReplyDataTable GetReplyDataTable(object post_id)
    {
        UserInformationDataSet.ReplyDataTable rdt;
        UserInformationDataSetTableAdapters.ReplyTableAdapter rta;
        rta = new UserInformationDataSetTableAdapters.ReplyTableAdapter();
        rdt = rta.GetDataByPostId(Int32.Parse(post_id.ToString()));
        return rdt;
    }
    public string GetReplyPostURL(object data)
    {
        return "~/ReplyPostForm.aspx?id=" + data.ToString();
    }

   
}