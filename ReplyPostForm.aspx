<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReplyPostForm.aspx.cs" Inherits="ReplyPostForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="postListView" runat="server">
    <ItemTemplate>
    <asp:Label ID="Label1" runat="server" Text="Id:"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:Label><br />
    <asp:Label ID="Label3" runat="server" Text="Date Time"></asp:Label>
    <asp:Label ID="Label4" runat="server" Text='<%#Eval("date") %>'></asp:Label><br />
    <asp:Label ID="Label5" runat="server" Text="Subject:"></asp:Label>
    <asp:Label ID="Label6" runat="server" Text='<%#Eval("subject") %>'></asp:Label><br />
    <asp:Label ID="Label7" runat="server" Text="Post"></asp:Label>
    <asp:Label ID="Label8" runat="server" Text='<%#Eval("post_text") %>'></asp:Label><br />
              
      </ItemTemplate>
    </asp:ListView>
                <asp:TextBox ID="fReplyTextBox" runat="server" Rows="3" Columns="35" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:Button ID="fReplyButton" runat="server" Text="Reply" OnClick="fReplyButton_Click"/>
                <br />
              
      
     </asp:Content>

