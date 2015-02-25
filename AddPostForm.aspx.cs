using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddPostForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Server.Transfer("InvalidAccess.aspx");
        }
    }
    protected void fPostButton_Click(object sender, EventArgs e)
    {
      string vSubject = fSubject.Text.Trim();
      string vPostText = fPostText.Text.Trim();
      DateTime vDateTime = DateTime.Now;
      UserInformationDataSetTableAdapters.PostTableAdapter pta;
      pta = new UserInformationDataSetTableAdapters.PostTableAdapter();
      string vUsername = Session["username"].ToString().Trim();
      pta.Insert(vDateTime,vUsername,vSubject,vPostText);
      fPostText.Text = "";
      fMessages.Text = "Posted Successfully!!!";
      Server.Transfer("ViewPostForm.aspx");
    }
    protected void fUploadButton_Click(object sender, EventArgs e)
    {
        UserInformationDataSetTableAdapters.FileRecordTableAdapter fta;
        fta = new UserInformationDataSetTableAdapters.FileRecordTableAdapter();
        string savePath = @"c:\dotnet\Go Social\UploadedFiles\";
        string vUsername = Session["username"].ToString();
        if (fFileToUpload.HasFile)
        {
            int fileLength = fFileToUpload.PostedFile.ContentLength;
            if (fileLength < 3670016)
            {
                string fileName = Server.HtmlEncode(fFileToUpload.FileName);
                string fileExtension = System.IO.Path.GetExtension(fileName);
                if (fileExtension == ".pdf")
                {
                    savePath += fileName;
                    fFileToUpload.SaveAs(savePath);
                    fta.Insert(fileName, vUsername);
                    fUploadFileMessages.Text = "Your file was saved as " + fileName;
                    System.Threading.Thread.Sleep(2000);
                    Server.Transfer("DownloadForm.aspx");
                }
                else
                {
                    fUploadFileMessages.Text = "Your file was not uploaded"+
                                                 " because it does not have a .pdf extension" ;
                }
            }
            else
            {
                fUploadFileMessages.Text = "Your file was not uploaded because " +
                                             "it exceeds the 3.5 MB size limit.";
            }
        }
        else
        {
            fUploadFileMessages.Text = "You did not specify a file to upload!!!";
        }
       }

   
}