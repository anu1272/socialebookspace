<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <br /><h3><asp:Label ID="Label11" runat="server" Text="Change Password"></asp:Label></h3>
    <br /><br />
       <asp:Label ID="Label2" runat="server" Text="Current Password"></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="fCurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" Display="None" ControlToValidate="fCurrentPassword" ValidationGroup="pass-update"></asp:RequiredFieldValidator>
    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator1"></asp:ValidatorCalloutExtender>
    <br /><br />
    <asp:Label ID="Label3" runat="server" Text="New Password"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="fNewPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="fNewPassword" ValidationGroup="pass-update" ></asp:RequiredFieldValidator>
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="fNewPassword" HelpStatusLabelID="Label5"></asp:PasswordStrength>
    <br /><br />
    <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="fConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="fConfirmPassword" Display="Dynamic" ValidationGroup="pass-update"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not confirmed properly!!!" ControlToCompare="fNewPassword" ControlToValidate="fConfirmPassword" ValidationGroup="pass-update"></asp:CompareValidator>
    <br /><br />
    <asp:ImageButton ID="fUpdateButton" runat="server" ValidationGroup="pass-update" OnClick="fUpdateButton_Click" ImageUrl="images/update_button.png" Width="75px" Height="25px"/>&nbsp;&nbsp;&nbsp;
    <asp:Button ID="fCancelButton" runat="server" Text="Cancel" OnClick="fCancelButton_Click" /><br />
    <asp:Label ID="fChangePasswordMessages" runat="server" Text=""></asp:Label> 
</asp:Content>

