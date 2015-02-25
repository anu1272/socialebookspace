using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUpForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
   
    protected void fRegisterButton_Click(object sender, EventArgs e)
    {
        string vUsername = fUsername.Text.Trim();
        string photoName = Server.HtmlEncode(fPhotoToUpload.FileName);
        string photoID = vUsername + "_" + photoName;
        string sitePath = MapPath(".");
        string ourfolderPath = sitePath + @"\UploadedPhotos\";
        string finalPath = ourfolderPath + photoID;
        fPhotoToUpload.SaveAs(finalPath);

        string vFirstName = fFirstName.Text.Trim();
        string vLastName = fLastName.Text.Trim();
        string vDesignation = fDesignation.Text.Trim();
        string vDateOfBirth = fDateOfBirth.Text.Trim();
        string vSex = (fMale.Checked) ? "Male" : "Female";
        string vPassword = fPassword.Text.Trim();
        UserInformationDataSetTableAdapters.MemberTableAdapter mta;
        mta = new UserInformationDataSetTableAdapters.MemberTableAdapter();
        mta.Insert(vUsername, vFirstName, vLastName, vDesignation, vDateOfBirth, vSex, photoID);
        UserInformationDataSetTableAdapters.UserLoginTableAdapter uta;
        uta = new UserInformationDataSetTableAdapters.UserLoginTableAdapter();
        if (fPhotoToUpload.HasFile)
        {
            int fileLength = fPhotoToUpload.PostedFile.ContentLength;
            if (fileLength < 3670016)
            {

                uta.Insert(vUsername, vPassword);
                fPhotoToUploadMessages.Text = "Congratulations!!! " + vFirstName + " your photo uploaded successfully.";
                fMessages.Text = "Congratulations!!! " + vFirstName + " your registration was successfull.";

            }
            else
            {
                uta.Insert(vUsername, vPassword);
                fPhotoToUploadMessages.Text = "Your file was not uploaded because " + "it exceeds the 3.5 MB size limit.";
            }
           
        }
         else
        {
            uta.Insert(vUsername, vPassword);
            fPhotoToUploadMessages.Text = "You have not selected any image.";
            fMessages.Text = "Congratulations!!! " + vFirstName + " your registration was successfull.";
        }
    }
   
    protected void fCheckAvailabilityButton_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(3000);
        string vUsername = fUsername.Text.Trim();
        UserInformationDataSet.MemberDataTable mdt;
        UserInformationDataSetTableAdapters.MemberTableAdapter mta;
        mta = new UserInformationDataSetTableAdapters.MemberTableAdapter();
        mdt = mta.GetDataByUsername(vUsername);
        if (mdt.Rows.Count > 0)
        {
            fStatus.Text = "Not Available";
        }
        else
        {
            fStatus.Text = "Available";
        }
    }
    protected void fCancelButton_Click(object sender, ImageClickEventArgs e)
    {
        Server.Transfer("LoginForm.aspx");
    }
}