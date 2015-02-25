<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUpForm.aspx.cs" Inherits="SignUpForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<h3>
    <asp:Label ID="Label1" runat="server" Text="Register Yourself"></asp:Label>
</h3><br /><br />
    <asp:Label ID="fMessages" runat="server" Text=""></asp:Label>
    <br /><br />


    <asp:Label ID="Label5" runat="server" Text="First Name"></asp:Label>
    <asp:TextBox ID="fFirstName" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label6" runat="server" Text="Last Name"></asp:Label>
    <asp:TextBox ID="fLastName" runat="server"></asp:TextBox><br />
   

    <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="fUsername" runat="server" ValidationGroup="status"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" Display="None" ControlToValidate="fUsername" ValidationGroup="signup"></asp:RequiredFieldValidator>
    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1"></asp:ValidatorCalloutExtender>
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="fUsername" WatermarkText="Enter Username"></asp:TextBoxWatermarkExtender>
    <br /><br />
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>   <asp:ImageButton ID="fCheckAvailabilityButton" runat="server" OnClick="fCheckAvailabilityButton_Click" ValidationGroup="status" ImageUrl="images/check-availability.png" Width="150px" Height="50px"/>&nbsp;&nbsp
            <asp:Label ID="fStatus" runat="server" Text=""></asp:Label>
      <asp:UpdateProgress ID="UpdateProgress1" runat="server">
          <ProgressTemplate>
              <img src="images/loading%20(1).gif" alt="" />
          </ProgressTemplate>
      </asp:UpdateProgress>
      </ContentTemplate>
      </asp:UpdatePanel>   
         <br /><br />
    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="fPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="fPassword" ValidationGroup="signup"></asp:RequiredFieldValidator>
    <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="fPassword" HelpStatusLabelID="Label10"></asp:PasswordStrength>
    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
    <br /><br />
    <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="fConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="fConfirmPassword" Display="Dynamic" ValidationGroup="signup"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not confirmed properly!!!" ControlToCompare="fPassword" ControlToValidate="fConfirmPassword"></asp:CompareValidator>
    <br /><br />
        
    <asp:Label ID="Label8" runat="server" Text="Sex"></asp:Label>&nbsp;&nbsp;
    Male<asp:RadioButton ID="fMale" runat="server" Checked="True" GroupName="sex" />&nbsp;&nbsp;&nbsp;&nbsp;
    Female<asp:RadioButton ID="fFemale" runat="server" GroupName="sex" /><br />
    
    <asp:Label ID="Label9" runat="server" Text="Date Of Birth"></asp:Label>
    <asp:TextBox ID="fDateOfBirth" runat="server"></asp:TextBox><br />
    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="fDateOfBirth" PopupButtonID="fDateOfBirth"></asp:CalendarExtender>
     <asp:Label ID="Label7" runat="server" Text="Designation"></asp:Label>
    <asp:TextBox ID="fDesignation" runat="server"></asp:TextBox><br />
    <br />
    <asp:Label ID="fDisplayPhoto" runat="server" Text="Display Photo"></asp:Label>
    <asp:FileUpload ID="fPhotoToUpload" runat="server" /><br />
    <asp:Label ID="fPhotoToUploadMessages" runat="server" Text=""></asp:Label>
    <br /><br />
    <asp:ImageButton ID="fRegisterButton" runat="server" OnClick="fRegisterButton_Click" ValidationGroup="signup" ImageUrl="images/button-register.png" Width="150px" Height="35px"/>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="fCancelButton" runat="server" ImageUrl="images/cancel-button-md.png" Height="35px" Width="150" OnClick="fCancelButton_Click"/>
<b><i><br /><br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginForm.aspx">You have an account already?Log-in here.</asp:HyperLink>
   </i></b>
</asp:Content>

