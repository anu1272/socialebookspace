<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddPostForm.aspx.cs" Inherits="AddPostForm" %>

<%@ Register Assembly="CuteWebUI.AjaxUploader" Namespace="CuteWebUI" TagPrefix="cc1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h3><asp:Label ID="Label1" runat="server" Text="Add Post"></asp:Label></h3><br /><br />
    <asp:Label ID="Label2" runat="server" Text="Subject:"></asp:Label>&nbsp;
    <asp:TextBox ID="fSubject" runat="server" ValidationGroup="post"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="fSubject" WatermarkText="Enter Subject"></asp:TextBoxWatermarkExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="fSubject" Display="None" ValidationGroup="posting"></asp:RequiredFieldValidator>
    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1"></asp:ValidatorCalloutExtender>
    <br /><br />
    <asp:Label ID="Label3" runat="server" Text="Post Text:"></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="fPostText" runat="server" Rows="5" Columns="25" TextMode="MultiLine" ValidationGroup="posting"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="fPostText" WatermarkText="What's in your mind..?"></asp:TextBoxWatermarkExtender>
    <br /><br />
    <asp:ImageButton ID="fPostButton" runat="server" OnClick="fPostButton_Click" ValidationGroup="posting" ImageUrl="images/RandomPostButton.png" Height="30px" Width="70px"/>
    <asp:Label ID="fMessages" runat="server" Text=""></asp:Label>
    <br />
    <hr />
    <br />
    <h3><asp:Label ID="Label4" runat="server" Text="Add Books"></asp:Label></h3>
    <br /><br />
    <asp:FileUpload ID="fFileToUpload" runat="server" />&nbsp;&nbsp;
    <asp:ImageButton ID="fUploadFileButton" runat="server" OnClick="fUploadButton_Click" ValidationGroup="upload_file" ImageUrl="images/PHP-Upload.png" Width="25px" Height="25px"/>
     <br />
    <asp:Label ID="fUploadFileMessages" runat="server" Text="" ></asp:Label>
    <br /><br />
    <br /><br />
    </asp:Content>

